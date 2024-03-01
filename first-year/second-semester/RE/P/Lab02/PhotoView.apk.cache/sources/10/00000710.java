package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.v;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.UUID;

/* loaded from: classes.dex */
public class FacebookContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String f82a = FacebookContentProvider.class.getName();

    public static String a(String str, UUID uuid, String str2) {
        return String.format("%s%s/%s/%s", "content://com.facebook.app.FacebookContentProvider", str, uuid.toString(), str2);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        Pair<UUID, String> a2 = a(uri);
        if (a2 == null) {
            throw new FileNotFoundException();
        }
        try {
            File a3 = v.a((UUID) a2.first, (String) a2.second);
            if (a3 == null) {
                throw new FileNotFoundException();
            }
            return ParcelFileDescriptor.open(a3, 268435456);
        } catch (FileNotFoundException e) {
            Log.e(f82a, "Got unexpected exception:" + e);
            throw e;
        }
    }

    Pair<UUID, String> a(Uri uri) {
        try {
            String[] split = uri.getPath().substring(1).split("/");
            String str = split[0];
            String str2 = split[1];
            if ("..".contentEquals(str) || "..".contentEquals(str2)) {
                throw new Exception();
            }
            return new Pair<>(UUID.fromString(str), str2);
        } catch (Exception e) {
            return null;
        }
    }
}