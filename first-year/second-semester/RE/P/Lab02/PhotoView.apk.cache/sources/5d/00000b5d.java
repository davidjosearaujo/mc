package com.google.zxing.a.a;

/* compiled from: SimpleToken.java */
/* loaded from: classes.dex */
final class e extends g {
    private final short b;
    private final short c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(g gVar, int i, int i2) {
        super(gVar);
        this.b = (short) i;
        this.c = (short) i2;
    }

    @Override // com.google.zxing.a.a.g
    void a(com.google.zxing.common.a aVar, byte[] bArr) {
        aVar.a(this.b, this.c);
    }

    public String toString() {
        return "<" + Integer.toBinaryString((this.b & ((1 << this.c) - 1)) | (1 << this.c) | (1 << this.c)).substring(1) + '>';
    }
}