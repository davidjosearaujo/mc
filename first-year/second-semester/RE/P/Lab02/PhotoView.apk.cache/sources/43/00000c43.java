package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MediaStoreRequestHandler extends g {
    private static final String[] b = {"orientation"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaStoreRequestHandler(Context context) {
        super(context);
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.s
    public boolean a(q qVar) {
        Uri uri = qVar.d;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f774a.getContentResolver();
        int a2 = a(contentResolver, qVar.d);
        String type = contentResolver.getType(qVar.d);
        boolean z = type != null && type.startsWith("video/");
        if (qVar.d()) {
            PicassoKind a3 = a(qVar.h, qVar.i);
            if (!z && a3 == PicassoKind.FULL) {
                return new s.a(null, b(qVar), Picasso.LoadedFrom.DISK, a2);
            }
            long parseId = ContentUris.parseId(qVar.d);
            BitmapFactory.Options c = c(qVar);
            c.inJustDecodeBounds = true;
            a(qVar.h, qVar.i, a3.width, a3.height, c, qVar);
            if (z) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, a3 == PicassoKind.FULL ? 1 : a3.androidKind, c);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, a3.androidKind, c);
            }
            if (thumbnail != null) {
                return new s.a(thumbnail, null, Picasso.LoadedFrom.DISK, a2);
            }
        }
        return new s.a(null, b(qVar), Picasso.LoadedFrom.DISK, a2);
    }

    static PicassoKind a(int i, int i2) {
        if (i <= PicassoKind.MICRO.width && i2 <= PicassoKind.MICRO.height) {
            return PicassoKind.MICRO;
        }
        if (i <= PicassoKind.MINI.width && i2 <= PicassoKind.MINI.height) {
            return PicassoKind.MINI;
        }
        return PicassoKind.FULL;
    }

    static int a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = contentResolver.query(uri, b, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int i = cursor.getInt(0);
                        if (cursor != null) {
                            cursor.close();
                            return i;
                        }
                        return i;
                    }
                } catch (RuntimeException e) {
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return 0;
        } catch (RuntimeException e2) {
            cursor2 = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);
        
        final int androidKind;
        final int height;
        final int width;

        PicassoKind(int i, int i2, int i3) {
            this.androidKind = i;
            this.width = i2;
            this.height = i3;
        }
    }
}