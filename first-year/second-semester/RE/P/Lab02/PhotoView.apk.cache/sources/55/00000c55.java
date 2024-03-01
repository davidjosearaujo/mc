package com.squareup.picasso;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AssetRequestHandler.java */
/* loaded from: classes.dex */
public class b extends s {

    /* renamed from: a  reason: collision with root package name */
    private static final int f766a = "file:///android_asset/".length();
    private final AssetManager b;

    public b(Context context) {
        this.b = context.getAssets();
    }

    @Override // com.squareup.picasso.s
    public boolean a(q qVar) {
        Uri uri = qVar.d;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        return new s.a(this.b.open(b(qVar)), Picasso.LoadedFrom.DISK);
    }

    static String b(q qVar) {
        return qVar.d.toString().substring(f766a);
    }
}