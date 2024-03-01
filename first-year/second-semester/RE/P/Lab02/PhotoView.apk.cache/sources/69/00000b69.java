package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.datamatrix.encoder.e;
import com.google.zxing.datamatrix.encoder.i;
import com.google.zxing.datamatrix.encoder.j;
import com.google.zxing.datamatrix.encoder.k;
import java.util.Map;

/* compiled from: DataMatrixWriter.java */
/* loaded from: classes.dex */
public final class a implements c {
    @Override // com.google.zxing.c
    public b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        com.google.zxing.a aVar;
        com.google.zxing.a aVar2 = null;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + barcodeFormat);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
        if (map != null) {
            SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
            if (symbolShapeHint2 != null) {
                symbolShapeHint = symbolShapeHint2;
            }
            com.google.zxing.a aVar3 = (com.google.zxing.a) map.get(EncodeHintType.MIN_SIZE);
            aVar = aVar3 != null ? aVar3 : null;
            com.google.zxing.a aVar4 = (com.google.zxing.a) map.get(EncodeHintType.MAX_SIZE);
            if (aVar4 != null) {
                aVar2 = aVar4;
            }
        } else {
            aVar = null;
        }
        String a2 = j.a(str, symbolShapeHint, aVar, aVar2);
        k a3 = k.a(a2.length(), symbolShapeHint, aVar, aVar2, true);
        e eVar = new e(i.a(a2, a3), a3.b(), a3.c());
        eVar.a();
        return a(eVar, a3);
    }

    private static b a(e eVar, k kVar) {
        int i;
        int i2;
        int b = kVar.b();
        int c = kVar.c();
        com.google.zxing.qrcode.a.b bVar = new com.google.zxing.qrcode.a.b(kVar.d(), kVar.e());
        int i3 = 0;
        int i4 = 0;
        while (i3 < c) {
            if (i3 % kVar.c == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < kVar.d(); i6++) {
                    bVar.a(i5, i4, i6 % 2 == 0);
                    i5++;
                }
                i = i4 + 1;
            } else {
                i = i4;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < b; i8++) {
                if (i8 % kVar.b == 0) {
                    bVar.a(i7, i, true);
                    i7++;
                }
                bVar.a(i7, i, eVar.a(i8, i3));
                int i9 = i7 + 1;
                if (i8 % kVar.b == kVar.b - 1) {
                    bVar.a(i9, i, i3 % 2 == 0);
                    i7 = i9 + 1;
                } else {
                    i7 = i9;
                }
            }
            int i10 = i + 1;
            if (i3 % kVar.c == kVar.c - 1) {
                int i11 = 0;
                for (int i12 = 0; i12 < kVar.d(); i12++) {
                    bVar.a(i11, i10, true);
                    i11++;
                }
                i2 = i10 + 1;
            } else {
                i2 = i10;
            }
            i3++;
            i4 = i2;
        }
        return a(bVar);
    }

    private static b a(com.google.zxing.qrcode.a.b bVar) {
        int b = bVar.b();
        int a2 = bVar.a();
        b bVar2 = new b(b, a2);
        bVar2.a();
        for (int i = 0; i < b; i++) {
            for (int i2 = 0; i2 < a2; i2++) {
                if (bVar.a(i, i2) == 1) {
                    bVar2.b(i, i2);
                }
            }
        }
        return bVar2;
    }
}