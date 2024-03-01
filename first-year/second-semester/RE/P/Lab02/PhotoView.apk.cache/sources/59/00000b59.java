package com.google.zxing.a.a;

/* compiled from: BinaryShiftToken.java */
/* loaded from: classes.dex */
final class b extends g {
    private final short b;
    private final short c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g gVar, int i, int i2) {
        super(gVar);
        this.b = (short) i;
        this.c = (short) i2;
    }

    @Override // com.google.zxing.a.a.g
    public void a(com.google.zxing.common.a aVar, byte[] bArr) {
        for (int i = 0; i < this.c; i++) {
            if (i == 0 || (i == 31 && this.c <= 62)) {
                aVar.a(31, 5);
                if (this.c > 62) {
                    aVar.a(this.c - 31, 16);
                } else if (i == 0) {
                    aVar.a(Math.min((int) this.c, 31), 5);
                } else {
                    aVar.a(this.c - 31, 5);
                }
            }
            aVar.a(bArr[this.b + i], 8);
        }
    }

    public String toString() {
        return "<" + ((int) this.b) + "::" + ((this.b + this.c) - 1) + '>';
    }
}