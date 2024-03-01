package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import java.util.Map;

/* compiled from: EAN13Writer.java */
/* loaded from: classes.dex */
public final class i extends q {
    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.EAN_13) {
            throw new IllegalArgumentException("Can only encode EAN_13, but got " + barcodeFormat);
        }
        return super.a(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        if (str.length() != 13) {
            throw new IllegalArgumentException("Requested contents should be 13 digits long, but got " + str.length());
        }
        try {
            if (!p.a(str)) {
                throw new IllegalArgumentException("Contents do not pass checksum");
            }
            int i = h.f648a[Integer.parseInt(str.substring(0, 1))];
            boolean[] zArr = new boolean[95];
            int b = b(zArr, 0, p.b, true) + 0;
            for (int i2 = 1; i2 <= 6; i2++) {
                int parseInt = Integer.parseInt(str.substring(i2, i2 + 1));
                if (((i >> (6 - i2)) & 1) == 1) {
                    parseInt += 10;
                }
                b += b(zArr, b, p.f[parseInt], false);
            }
            int b2 = b + b(zArr, b, p.c, false);
            for (int i3 = 7; i3 <= 12; i3++) {
                b2 += b(zArr, b2, p.e[Integer.parseInt(str.substring(i3, i3 + 1))], true);
            }
            b(zArr, b2, p.b, true);
            return zArr;
        } catch (FormatException e) {
            throw new IllegalArgumentException("Illegal contents");
        }
    }
}