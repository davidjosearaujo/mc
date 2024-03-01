package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.Map;

/* compiled from: OneDimensionalCodeWriter.java */
/* loaded from: classes.dex */
public abstract class n implements com.google.zxing.c {
    public abstract boolean[] a(String str);

    @Override // com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        }
        int a2 = a();
        if (map != null && map.containsKey(EncodeHintType.MARGIN)) {
            a2 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
        }
        return a(a(str), i, i2, a2);
    }

    private static com.google.zxing.common.b a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = length + i3;
        int max = Math.max(i, i4);
        int max2 = Math.max(1, i2);
        int i5 = max / i4;
        int i6 = (max - (length * i5)) / 2;
        com.google.zxing.common.b bVar = new com.google.zxing.common.b(max, max2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                bVar.a(i6, 0, i5, max2);
            }
            i7++;
            i6 += i5;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int b(boolean[] zArr, int i, int[] iArr, boolean z) {
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (i2 < length) {
            int i5 = iArr[i2];
            int i6 = i4;
            int i7 = 0;
            while (i7 < i5) {
                zArr[i6] = z;
                i7++;
                i6++;
            }
            i3 += i5;
            i2++;
            z = !z;
            i4 = i6;
        }
        return i3;
    }

    public int a() {
        return 10;
    }
}