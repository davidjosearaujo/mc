package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public final class Code128Writer extends n {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    @Override // com.google.zxing.oned.n, com.google.zxing.c
    public com.google.zxing.common.b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat != BarcodeFormat.CODE_128) {
            throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeFormat);
        }
        return super.a(str, barcodeFormat, i, i2, map);
    }

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        int i;
        int i2 = 0;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + length);
        }
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt < ' ' || charAt > '~') {
                switch (charAt) {
                    case 241:
                    case 242:
                    case 243:
                    case 244:
                        break;
                    default:
                        throw new IllegalArgumentException("Bad character in input: " + charAt);
                }
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        int i7 = 0;
        while (i4 < length) {
            int a2 = a(str, i4, i5);
            if (a2 == i5) {
                switch (str.charAt(i4)) {
                    case 241:
                        i = 102;
                        break;
                    case 242:
                        i = 97;
                        break;
                    case 243:
                        i = 96;
                        break;
                    case 244:
                        i = 100;
                        break;
                    default:
                        if (i5 != 100) {
                            i = Integer.parseInt(str.substring(i4, i4 + 2));
                            i4++;
                            break;
                        } else {
                            i = str.charAt(i4) - ' ';
                            break;
                        }
                }
                i4++;
                a2 = i5;
            } else if (i5 != 0) {
                i = a2;
            } else if (a2 == 100) {
                i = 104;
            } else {
                i = 105;
            }
            arrayList.add(c.f645a[i]);
            int i8 = i7 + (i * i6);
            i6 = i4 != 0 ? i6 + 1 : i6;
            i7 = i8;
            i5 = a2;
        }
        arrayList.add(c.f645a[i7 % 103]);
        arrayList.add(c.f645a[106]);
        int i9 = 0;
        for (int[] iArr : arrayList) {
            int length2 = iArr.length;
            int i10 = 0;
            while (i10 < length2) {
                int i11 = iArr[i10] + i9;
                i10++;
                i9 = i11;
            }
        }
        boolean[] zArr = new boolean[i9];
        for (int[] iArr2 : arrayList) {
            i2 += b(zArr, i2, iArr2, true);
        }
        return zArr;
    }

    private static CType a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return CType.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return CType.UNCODABLE;
        }
        if (i + 1 >= length) {
            return CType.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i + 1);
        if (charAt2 < '0' || charAt2 > '9') {
            return CType.ONE_DIGIT;
        }
        return CType.TWO_DIGITS;
    }

    private static int a(CharSequence charSequence, int i, int i2) {
        CType a2;
        CType a3;
        CType a4 = a(charSequence, i);
        if (a4 == CType.UNCODABLE || a4 == CType.ONE_DIGIT) {
            return 100;
        }
        if (i2 != 99) {
            if (i2 == 100) {
                if (a4 != CType.FNC_1 && (a2 = a(charSequence, i + 2)) != CType.UNCODABLE && a2 != CType.ONE_DIGIT) {
                    if (a2 == CType.FNC_1) {
                        return a(charSequence, i + 3) == CType.TWO_DIGITS ? 99 : 100;
                    }
                    int i3 = i + 4;
                    while (true) {
                        a3 = a(charSequence, i3);
                        if (a3 != CType.TWO_DIGITS) {
                            break;
                        }
                        i3 += 2;
                    }
                    return a3 == CType.ONE_DIGIT ? 100 : 99;
                }
                return i2;
            }
            if (a4 == CType.FNC_1) {
                a4 = a(charSequence, i + 1);
            }
            return a4 == CType.TWO_DIGITS ? 99 : 100;
        }
        return i2;
    }
}