package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: UPCAWriter.java */
/* loaded from: classes.dex */
public final class o implements com.google.zxing.c {

    /* renamed from: a  reason: collision with root package name */
    private final i f651a = new i();

    @Override // com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        return this.f651a.a(a(str), BarcodeFormat.EAN_13, i, i2, map);
    }

    private static String a(String str) {
        int length = str.length();
        if (length == 11) {
            int i = 0;
            for (int i2 = 0; i2 < 11; i2++) {
                i += (i2 % 2 == 0 ? 3 : 1) * (str.charAt(i2) - '0');
            }
            str = str + ((1000 - i) % 10);
        } else if (length != 12) {
            throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
        }
        return "0" + str;
    }
}