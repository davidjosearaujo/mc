package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: EAN8Writer.java */
/* loaded from: classes.dex */
public final class j extends q {
    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.EAN_8) {
            throw new IllegalArgumentException("Can only encode EAN_8, but got " + barcodeFormat);
        }
        return super.a(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        if (str.length() != 8) {
            throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + str.length());
        }
        boolean[] zArr = new boolean[67];
        int b = b(zArr, 0, p.b, true) + 0;
        for (int i = 0; i <= 3; i++) {
            b += b(zArr, b, p.e[Integer.parseInt(str.substring(i, i + 1))], false);
        }
        int b2 = b + b(zArr, b, p.c, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            b2 += b(zArr, b2, p.e[Integer.parseInt(str.substring(i2, i2 + 1))], true);
        }
        b(zArr, b2, p.b, true);
        return zArr;
    }
}