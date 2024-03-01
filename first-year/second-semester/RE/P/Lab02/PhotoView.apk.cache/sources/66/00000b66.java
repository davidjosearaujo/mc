package com.google.zxing.common.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GenericGFPoly.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final a f634a;
    private final int[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f634a = aVar;
        int length = iArr.length;
        if (length > 1 && iArr[0] == 0) {
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i != length) {
                this.b = new int[length - i];
                System.arraycopy(iArr, i, this.b, 0, this.b.length);
                return;
            }
            this.b = new int[]{0};
            return;
        }
        this.b = iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] a() {
        return this.b;
    }

    int b() {
        return this.b.length - 1;
    }

    boolean c() {
        return this.b[0] == 0;
    }

    int a(int i) {
        return this.b[(this.b.length - 1) - i];
    }

    b a(b bVar) {
        if (!this.f634a.equals(bVar.f634a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (!c()) {
            if (bVar.c()) {
                return this;
            }
            int[] iArr = this.b;
            int[] iArr2 = bVar.b;
            if (iArr.length <= iArr2.length) {
                iArr2 = iArr;
                iArr = iArr2;
            }
            int[] iArr3 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i = length; i < iArr.length; i++) {
                iArr3[i] = a.b(iArr2[i - length], iArr[i]);
            }
            return new b(this.f634a, iArr3);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b b(b bVar) {
        if (!this.f634a.equals(bVar.f634a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (c() || bVar.c()) {
            return this.f634a.a();
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = bVar.b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                iArr3[i + i3] = a.b(iArr3[i + i3], this.f634a.c(i2, iArr2[i3]));
            }
        }
        return new b(this.f634a, iArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f634a.a();
        }
        int length = this.b.length;
        int[] iArr = new int[length + i];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f634a.c(this.b[i3], i2);
        }
        return new b(this.f634a, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b[] c(b bVar) {
        if (!this.f634a.equals(bVar.f634a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (bVar.c()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        b a2 = this.f634a.a();
        int c = this.f634a.c(bVar.a(bVar.b()));
        b bVar2 = a2;
        b bVar3 = this;
        while (bVar3.b() >= bVar.b() && !bVar3.c()) {
            int b = bVar3.b() - bVar.b();
            int c2 = this.f634a.c(bVar3.a(bVar3.b()), c);
            b a3 = bVar.a(b, c2);
            bVar2 = bVar2.a(this.f634a.a(b, c2));
            bVar3 = bVar3.a(a3);
        }
        return new b[]{bVar2, bVar3};
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(b() * 8);
        for (int b = b(); b >= 0; b--) {
            int a2 = a(b);
            if (a2 != 0) {
                if (a2 < 0) {
                    sb.append(" - ");
                    a2 = -a2;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (b == 0 || a2 != 1) {
                    int b2 = this.f634a.b(a2);
                    if (b2 == 0) {
                        sb.append('1');
                    } else if (b2 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(b2);
                    }
                }
                if (b != 0) {
                    if (b == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(b);
                    }
                }
            }
        }
        return sb.toString();
    }
}