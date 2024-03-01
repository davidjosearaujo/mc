package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: Code93Writer.java */
/* loaded from: classes.dex */
public class g extends n {
    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.CODE_93) {
            throw new IllegalArgumentException("Can only encode CODE_93, but got " + barcodeFormat);
        }
        return super.a(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        int[] iArr = new int[9];
        boolean[] zArr = new boolean[((str.length() + 2 + 2) * 9) + 1];
        a(f.f647a[47], iArr);
        int a2 = a(zArr, 0, iArr, true);
        for (int i = 0; i < length; i++) {
            a(f.f647a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
            a2 += a(zArr, a2, iArr, true);
        }
        int a3 = a(str, 20);
        a(f.f647a[a3], iArr);
        int a4 = a2 + a(zArr, a2, iArr, true);
        a(f.f647a[a(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(a3), 15)], iArr);
        int a5 = a(zArr, a4, iArr, true) + a4;
        a(f.f647a[47], iArr);
        zArr[a5 + a(zArr, a5, iArr, true)] = true;
        return zArr;
    }

    private static void a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            iArr[i2] = ((1 << (8 - i2)) & i) == 0 ? 0 : 1;
        }
    }

    protected static int a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    private static int a(String str, int i) {
        int i2 = 1;
        int length = str.length() - 1;
        int i3 = 0;
        while (length >= 0) {
            int indexOf = ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i2) + i3;
            int i4 = i2 + 1;
            if (i4 > i) {
                i4 = 1;
            }
            length--;
            i2 = i4;
            i3 = indexOf;
        }
        return i3 % 47;
    }
}