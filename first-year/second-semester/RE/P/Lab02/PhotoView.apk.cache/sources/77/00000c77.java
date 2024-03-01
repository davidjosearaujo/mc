package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceRequestHandler.java */
/* loaded from: classes.dex */
public class t extends s {

    /* renamed from: a  reason: collision with root package name */
    private final Context f788a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context) {
        this.f788a = context;
    }

    @Override // com.squareup.picasso.s
    public boolean a(q qVar) {
        if (qVar.e != 0) {
            return true;
        }
        return "android.resource".equals(qVar.d.getScheme());
    }

    @Override // com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        Resources a2 = y.a(this.f788a, qVar);
        return new s.a(a(a2, y.a(a2, qVar), qVar), Picasso.LoadedFrom.DISK);
    }

    private static Bitmap a(Resources resources, int i, q qVar) {
        BitmapFactory.Options c = c(qVar);
        if (a(c)) {
            BitmapFactory.decodeResource(resources, i, c);
            a(qVar.h, qVar.i, c, qVar);
        }
        return BitmapFactory.decodeResource(resources, i, c);
    }
}