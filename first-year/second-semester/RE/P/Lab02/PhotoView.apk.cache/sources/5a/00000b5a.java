package com.google.zxing.a.a;

/* compiled from: Encoder.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f625a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    public static a a(byte[] bArr, int i, int i2) {
        int i3;
        com.google.zxing.common.a aVar;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        com.google.zxing.common.a a2 = new d(bArr).a();
        int a3 = ((a2.a() * i) / 100) + 11;
        int a4 = a2.a() + a3;
        if (i2 != 0) {
            boolean z2 = i2 < 0;
            int abs = Math.abs(i2);
            if (abs > (z2 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
            }
            int a5 = a(abs, z2);
            int i8 = f625a[abs];
            int i9 = a5 - (a5 % i8);
            com.google.zxing.common.a a6 = a(a2, i8);
            if (a6.a() + a3 > i9) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z2 && a6.a() > (i8 << 6)) {
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            i3 = i8;
            i5 = a5;
            i4 = abs;
            z = z2;
            aVar = a6;
        } else {
            i3 = 0;
            aVar = null;
            int i10 = 0;
            while (i10 <= 32) {
                boolean z3 = i10 <= 3;
                int i11 = z3 ? i10 + 1 : i10;
                int a7 = a(i11, z3);
                if (a4 <= a7) {
                    if (i3 != f625a[i11]) {
                        i3 = f625a[i11];
                        aVar = a(a2, i3);
                    }
                    int i12 = a7 - (a7 % i3);
                    if ((!z3 || aVar.a() <= (i3 << 6)) && aVar.a() + a3 <= i12) {
                        i4 = i11;
                        i5 = a7;
                        z = z3;
                    }
                }
                i10++;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        com.google.zxing.common.a a8 = a(aVar, i5, i3);
        int a9 = aVar.a() / i3;
        com.google.zxing.common.a a10 = a(z, i4, a9);
        int i13 = (i4 << 2) + (z ? 11 : 14);
        int[] iArr = new int[i13];
        if (z) {
            for (int i14 = 0; i14 < iArr.length; i14++) {
                iArr[i14] = i14;
            }
            i6 = i13;
        } else {
            i6 = i13 + 1 + ((((i13 / 2) - 1) / 15) * 2);
            int i15 = i13 / 2;
            int i16 = i6 / 2;
            for (int i17 = 0; i17 < i15; i17++) {
                iArr[(i15 - i17) - 1] = (i16 - i7) - 1;
                iArr[i15 + i17] = (i17 / 15) + i17 + i16 + 1;
            }
        }
        com.google.zxing.common.b bVar = new com.google.zxing.common.b(i6);
        int i18 = 0;
        for (int i19 = 0; i19 < i4; i19++) {
            int i20 = ((i4 - i19) << 2) + (z ? 9 : 12);
            for (int i21 = 0; i21 < i20; i21++) {
                int i22 = i21 << 1;
                for (int i23 = 0; i23 < 2; i23++) {
                    if (a8.a(i18 + i22 + i23)) {
                        bVar.b(iArr[(i19 << 1) + i23], iArr[(i19 << 1) + i21]);
                    }
                    if (a8.a((i20 << 1) + i18 + i22 + i23)) {
                        bVar.b(iArr[(i19 << 1) + i21], iArr[((i13 - 1) - (i19 << 1)) - i23]);
                    }
                    if (a8.a((i20 << 2) + i18 + i22 + i23)) {
                        bVar.b(iArr[((i13 - 1) - (i19 << 1)) - i23], iArr[((i13 - 1) - (i19 << 1)) - i21]);
                    }
                    if (a8.a((i20 * 6) + i18 + i22 + i23)) {
                        bVar.b(iArr[((i13 - 1) - (i19 << 1)) - i21], iArr[(i19 << 1) + i23]);
                    }
                }
            }
            i18 = (i20 << 3) + i18;
        }
        a(bVar, z, i6, a10);
        if (z) {
            a(bVar, i6 / 2, 5);
        } else {
            a(bVar, i6 / 2, 7);
            int i24 = 0;
            int i25 = 0;
            while (i24 < (i13 / 2) - 1) {
                for (int i26 = (i6 / 2) & 1; i26 < i6; i26 += 2) {
                    bVar.b((i6 / 2) - i25, i26);
                    bVar.b((i6 / 2) + i25, i26);
                    bVar.b(i26, (i6 / 2) - i25);
                    bVar.b(i26, (i6 / 2) + i25);
                }
                i24 += 15;
                i25 += 16;
            }
        }
        a aVar2 = new a();
        aVar2.a(z);
        aVar2.a(i6);
        aVar2.b(i4);
        aVar2.c(a9);
        aVar2.a(bVar);
        return aVar2;
    }

    private static void a(com.google.zxing.common.b bVar, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            for (int i4 = i - i3; i4 <= i + i3; i4++) {
                bVar.b(i4, i - i3);
                bVar.b(i4, i + i3);
                bVar.b(i - i3, i4);
                bVar.b(i + i3, i4);
            }
        }
        bVar.b(i - i2, i - i2);
        bVar.b((i - i2) + 1, i - i2);
        bVar.b(i - i2, (i - i2) + 1);
        bVar.b(i + i2, i - i2);
        bVar.b(i + i2, (i - i2) + 1);
        bVar.b(i + i2, (i + i2) - 1);
    }

    static com.google.zxing.common.a a(boolean z, int i, int i2) {
        com.google.zxing.common.a aVar = new com.google.zxing.common.a();
        if (z) {
            aVar.a(i - 1, 2);
            aVar.a(i2 - 1, 6);
            return a(aVar, 28, 4);
        }
        aVar.a(i - 1, 5);
        aVar.a(i2 - 1, 11);
        return a(aVar, 40, 4);
    }

    private static void a(com.google.zxing.common.b bVar, boolean z, int i, com.google.zxing.common.a aVar) {
        int i2 = 0;
        int i3 = i / 2;
        if (z) {
            while (i2 < 7) {
                int i4 = (i3 - 3) + i2;
                if (aVar.a(i2)) {
                    bVar.b(i4, i3 - 5);
                }
                if (aVar.a(i2 + 7)) {
                    bVar.b(i3 + 5, i4);
                }
                if (aVar.a(20 - i2)) {
                    bVar.b(i4, i3 + 5);
                }
                if (aVar.a(27 - i2)) {
                    bVar.b(i3 - 5, i4);
                }
                i2++;
            }
            return;
        }
        while (i2 < 10) {
            int i5 = (i3 - 5) + i2 + (i2 / 5);
            if (aVar.a(i2)) {
                bVar.b(i5, i3 - 7);
            }
            if (aVar.a(i2 + 10)) {
                bVar.b(i3 + 7, i5);
            }
            if (aVar.a(29 - i2)) {
                bVar.b(i5, i3 + 7);
            }
            if (aVar.a(39 - i2)) {
                bVar.b(i3 - 7, i5);
            }
            i2++;
        }
    }

    private static com.google.zxing.common.a a(com.google.zxing.common.a aVar, int i, int i2) {
        com.google.zxing.common.a.c cVar = new com.google.zxing.common.a.c(a(i2));
        int i3 = i / i2;
        int[] b = b(aVar, i2, i3);
        cVar.a(b, i3 - (aVar.a() / i2));
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        aVar2.a(0, i % i2);
        for (int i4 : b) {
            aVar2.a(i4, i2);
        }
        return aVar2;
    }

    private static int[] b(com.google.zxing.common.a aVar, int i, int i2) {
        int[] iArr = new int[i2];
        int a2 = aVar.a() / i;
        for (int i3 = 0; i3 < a2; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= aVar.a((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static com.google.zxing.common.a.a a(int i) {
        switch (i) {
            case 4:
                return com.google.zxing.common.a.a.d;
            case 5:
            case 7:
            case 9:
            case 11:
            default:
                throw new IllegalArgumentException("Unsupported word size " + i);
            case 6:
                return com.google.zxing.common.a.a.c;
            case 8:
                return com.google.zxing.common.a.a.g;
            case 10:
                return com.google.zxing.common.a.a.b;
            case 12:
                return com.google.zxing.common.a.a.f633a;
        }
    }

    static com.google.zxing.common.a a(com.google.zxing.common.a aVar, int i) {
        int i2;
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        int a2 = aVar.a();
        int i3 = (1 << i) - 2;
        int i4 = 0;
        while (i4 < a2) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                if (i4 + i6 >= a2 || aVar.a(i4 + i6)) {
                    i5 |= 1 << ((i - 1) - i6);
                }
            }
            if ((i5 & i3) == i3) {
                aVar2.a(i5 & i3, i);
                i2 = i4 - 1;
            } else if ((i5 & i3) == 0) {
                aVar2.a(i5 | 1, i);
                i2 = i4 - 1;
            } else {
                aVar2.a(i5, i);
                i2 = i4;
            }
            i4 = i2 + i;
        }
        return aVar2;
    }

    private static int a(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }
}