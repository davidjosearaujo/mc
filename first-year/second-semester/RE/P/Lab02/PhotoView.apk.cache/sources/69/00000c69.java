package com.squareup.picasso;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileRequestHandler.java */
/* loaded from: classes.dex */
public class j extends g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context) {
        super(context);
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.s
    public boolean a(q qVar) {
        return "file".equals(qVar.d.getScheme());
    }

    @Override // com.squareup.picasso.g, com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        return new s.a(null, b(qVar), Picasso.LoadedFrom.DISK, a(qVar.d));
    }

    static int a(Uri uri) {
        switch (new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1)) {
            case 3:
                return 180;
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }
}