package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: ITFWriter.java */
/* loaded from: classes.dex */
public final class l extends n {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f650a = {1, 1, 1, 1};
    private static final int[] b = {3, 1, 1};

    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.ITF) {
            throw new IllegalArgumentException("Can only encode ITF, but got " + barcodeFormat);
        }
        return super.a(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int b2 = b(zArr, 0, f650a, true);
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 10);
            int digit2 = Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[18];
            for (int i2 = 0; i2 < 5; i2++) {
                iArr[i2 * 2] = k.f649a[digit][i2];
                iArr[(i2 * 2) + 1] = k.f649a[digit2][i2];
            }
            b2 += b(zArr, b2, iArr, true);
        }
        b(zArr, b2, b, true);
        return zArr;
    }
}