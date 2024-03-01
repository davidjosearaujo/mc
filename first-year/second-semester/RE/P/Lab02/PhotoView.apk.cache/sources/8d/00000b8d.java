package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.d;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* compiled from: PDF417Writer.java */
/* loaded from: classes.dex */
public final class a implements c {
    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        int i3;
        int i4;
        int i5;
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        d dVar = new d();
        if (map == null) {
            i3 = 30;
            i4 = 2;
        } else {
            if (map.containsKey(EncodeHintType.PDF417_COMPACT)) {
                dVar.a(Boolean.valueOf(map.get(EncodeHintType.PDF417_COMPACT).toString()).booleanValue());
            }
            if (map.containsKey(EncodeHintType.PDF417_COMPACTION)) {
                dVar.a(Compaction.valueOf(map.get(EncodeHintType.PDF417_COMPACTION).toString()));
            }
            if (map.containsKey(EncodeHintType.PDF417_DIMENSIONS)) {
                com.google.zxing.pdf417.encoder.c cVar = (com.google.zxing.pdf417.encoder.c) map.get(EncodeHintType.PDF417_DIMENSIONS);
                dVar.a(cVar.b(), cVar.a(), cVar.d(), cVar.c());
            }
            if (!map.containsKey(EncodeHintType.MARGIN)) {
                i5 = 30;
            } else {
                i5 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
            }
            if (!map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                i4 = 2;
            } else {
                i4 = Integer.parseInt(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EncodeHintType.CHARACTER_SET)) {
                dVar.a(Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString()));
            }
            i3 = i5;
        }
        return a(dVar, str, i4, i, i2, i3);
    }

    private static b a(d dVar, String str, int i, int i2, int i3, int i4) {
        boolean z;
        dVar.a(str, i);
        byte[][] a2 = dVar.a().a(1, 4);
        if ((i3 > i2) ^ (a2[0].length < a2.length)) {
            a2 = a(a2);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / a2[0].length;
        int length2 = i3 / a2.length;
        if (length >= length2) {
            length = length2;
        }
        if (length > 1) {
            byte[][] a3 = dVar.a().a(length, length << 2);
            return a(z ? a(a3) : a3, i4);
        }
        return a(a2, i4);
    }

    private static b a(byte[][] bArr, int i) {
        b bVar = new b(bArr[0].length + (i * 2), bArr.length + (i * 2));
        bVar.a();
        int c = (bVar.c() - i) - 1;
        int i2 = 0;
        while (i2 < bArr.length) {
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                if (bArr[i2][i3] == 1) {
                    bVar.b(i3 + i, c);
                }
            }
            i2++;
            c--;
        }
        return bVar;
    }

    private static byte[][] a(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }
}