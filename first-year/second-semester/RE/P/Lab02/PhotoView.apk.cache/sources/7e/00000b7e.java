package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: Code39Writer.java */
/* loaded from: classes.dex */
public final class e extends n {
    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.CODE_39) {
            throw new IllegalArgumentException("Can only encode CODE_39, but got " + barcodeFormat);
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
        int i = length + 25;
        int i2 = 0;
        while (i2 < length) {
            int indexOf = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i2));
            if (indexOf < 0) {
                throw new IllegalArgumentException("Bad contents: " + str);
            }
            a(d.f646a[indexOf], iArr);
            int i3 = i;
            for (int i4 = 0; i4 < 9; i4++) {
                i3 += iArr[i4];
            }
            i2++;
            i = i3;
        }
        boolean[] zArr = new boolean[i];
        a(d.b, iArr);
        int b = b(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int b2 = b + b(zArr, b, iArr2, false);
        for (int i5 = 0; i5 < length; i5++) {
            a(d.f646a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i5))], iArr);
            int b3 = b2 + b(zArr, b2, iArr, true);
            b2 = b3 + b(zArr, b3, iArr2, false);
        }
        a(d.b, iArr);
        b(zArr, b2, iArr, true);
        return zArr;
    }

    private static void a(int i, int[] iArr) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < 9) {
                iArr[i3] = ((1 << (8 - i3)) & i) == 0 ? 1 : 2;
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }
}