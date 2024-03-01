package com.google.zxing;

import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.e;
import com.google.zxing.oned.g;
import com.google.zxing.oned.i;
import com.google.zxing.oned.j;
import com.google.zxing.oned.l;
import com.google.zxing.oned.o;
import com.google.zxing.oned.s;
import java.util.Map;

/* compiled from: MultiFormatWriter.java */
/* loaded from: classes.dex */
public final class b implements c {
    @Override // com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        c aVar;
        switch (barcodeFormat) {
            case EAN_8:
                aVar = new j();
                break;
            case UPC_E:
                aVar = new s();
                break;
            case EAN_13:
                aVar = new i();
                break;
            case UPC_A:
                aVar = new o();
                break;
            case QR_CODE:
                aVar = new com.google.zxing.qrcode.a();
                break;
            case CODE_39:
                aVar = new e();
                break;
            case CODE_93:
                aVar = new g();
                break;
            case CODE_128:
                aVar = new Code128Writer();
                break;
            case ITF:
                aVar = new l();
                break;
            case PDF_417:
                aVar = new com.google.zxing.pdf417.a();
                break;
            case CODABAR:
                aVar = new com.google.zxing.oned.b();
                break;
            case DATA_MATRIX:
                aVar = new com.google.zxing.datamatrix.a();
                break;
            case AZTEC:
                aVar = new com.google.zxing.a.a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return aVar.a(str, barcodeFormat, i, i2, map);
    }
}