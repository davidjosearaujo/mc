package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.qrcode.a.f;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Map;

/* compiled from: QRCodeWriter.java */
/* loaded from: classes.dex */
public final class a implements c {
    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        ErrorCorrectionLevel errorCorrectionLevel;
        int i3;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevel2 = ErrorCorrectionLevel.L;
        if (map != null) {
            if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                errorCorrectionLevel2 = ErrorCorrectionLevel.valueOf(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EncodeHintType.MARGIN)) {
                errorCorrectionLevel = errorCorrectionLevel2;
                i3 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
                return a(com.google.zxing.qrcode.a.c.a(str, errorCorrectionLevel, map), i, i2, i3);
            }
        }
        errorCorrectionLevel = errorCorrectionLevel2;
        i3 = 4;
        return a(com.google.zxing.qrcode.a.c.a(str, errorCorrectionLevel, map), i, i2, i3);
    }

    private static b a(f fVar, int i, int i2, int i3) {
        com.google.zxing.qrcode.a.b a2 = fVar.a();
        if (a2 == null) {
            throw new IllegalStateException();
        }
        int b = a2.b();
        int a3 = a2.a();
        int i4 = (i3 << 1) + b;
        int i5 = (i3 << 1) + a3;
        int max = Math.max(i, i4);
        int max2 = Math.max(i2, i5);
        int min = Math.min(max / i4, max2 / i5);
        int i6 = (max - (b * min)) / 2;
        b bVar = new b(max, max2);
        int i7 = (max2 - (a3 * min)) / 2;
        for (int i8 = 0; i8 < a3; i8++) {
            int i9 = 0;
            int i10 = i6;
            while (i9 < b) {
                if (a2.a(i9, i8) == 1) {
                    bVar.a(i10, i7, min, min);
                }
                i9++;
                i10 += min;
            }
            i7 += min;
        }
        return bVar;
    }
}