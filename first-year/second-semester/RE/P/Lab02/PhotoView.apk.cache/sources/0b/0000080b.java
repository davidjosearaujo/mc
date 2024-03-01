package com.facebook.internal;

import android.graphics.Bitmap;

/* compiled from: ImageResponse.java */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private p f209a;
    private Exception b;
    private boolean c;
    private Bitmap d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar, Exception exc, boolean z, Bitmap bitmap) {
        this.f209a = pVar;
        this.b = exc;
        this.d = bitmap;
        this.c = z;
    }

    public p a() {
        return this.f209a;
    }

    public Exception b() {
        return this.b;
    }

    public Bitmap c() {
        return this.d;
    }

    public boolean d() {
        return this.c;
    }
}