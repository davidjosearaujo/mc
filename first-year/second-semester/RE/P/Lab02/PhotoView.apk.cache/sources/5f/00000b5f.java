package com.google.zxing.a.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Token.java */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    static final g f629a = new e(null, 0, 0);
    private final g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(com.google.zxing.common.a aVar, byte[] bArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(g gVar) {
        this.b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a(int i, int i2) {
        return new e(this, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g b(int i, int i2) {
        return new b(this, i, i2);
    }
}