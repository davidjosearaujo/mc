package com.google.zxing.a;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.nio.charset.Charset;
import java.util.Map;

/* compiled from: AztecWriter.java */
/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f623a = Charset.forName("ISO-8859-1");

    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        int i3;
        Charset charset;
        Charset charset2 = f623a;
        int i4 = 33;
        int i5 = 0;
        if (map != null) {
            if (map.containsKey(EncodeHintType.CHARACTER_SET)) {
                charset2 = Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString());
            }
            if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                i4 = Integer.parseInt(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EncodeHintType.AZTEC_LAYERS)) {
                i5 = Integer.parseInt(map.get(EncodeHintType.AZTEC_LAYERS).toString());
                i3 = i4;
                charset = charset2;
                return a(str, barcodeFormat, i, i2, charset, i3, i5);
            }
        }
        i3 = i4;
        charset = charset2;
        return a(str, barcodeFormat, i, i2, charset, i3, i5);
    }

    private static b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Charset charset, int i3, int i4) {
        if (barcodeFormat != BarcodeFormat.AZTEC) {
            throw new IllegalArgumentException("Can only encode AZTEC, but got " + barcodeFormat);
        }
        return a(com.google.zxing.a.a.c.a(str.getBytes(charset), i3, i4), i, i2);
    }

    private static b a(com.google.zxing.a.a.a aVar, int i, int i2) {
        b a2 = aVar.a();
        if (a2 == null) {
            throw new IllegalStateException();
        }
        int b = a2.b();
        int c = a2.c();
        int max = Math.max(i, b);
        int max2 = Math.max(i2, c);
        int min = Math.min(max / b, max2 / c);
        int i3 = (max - (b * min)) / 2;
        b bVar = new b(max, max2);
        int i4 = (max2 - (c * min)) / 2;
        for (int i5 = 0; i5 < c; i5++) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < b) {
                if (a2.a(i7, i5)) {
                    bVar.a(i6, i4, min, min);
                }
                i7++;
                i6 += min;
            }
            i4 += min;
        }
        return bVar;
    }
}