package com.google.zxing.oned;

/* compiled from: CodaBarWriter.java */
/* loaded from: classes.dex */
public final class b extends n {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f644a = {'A', 'B', 'C', 'D'};
    private static final char[] b = {'T', 'N', '*', 'E'};
    private static final char[] c = {'/', ':', '+', '.'};
    private static final char d = f644a[0];

    @Override // com.google.zxing.oned.n
    public boolean[] a(String str) {
        int i;
        if (str.length() < 2) {
            str = d + str + d;
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            boolean a2 = a.a(f644a, upperCase);
            boolean a3 = a.a(f644a, upperCase2);
            boolean a4 = a.a(b, upperCase);
            boolean a5 = a.a(b, upperCase2);
            if (a2) {
                if (!a3) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
            } else if (a4) {
                if (!a5) {
                    throw new IllegalArgumentException("Invalid start/end guards: " + str);
                }
            } else if (a3 || a5) {
                throw new IllegalArgumentException("Invalid start/end guards: " + str);
            } else {
                str = d + str + d;
            }
        }
        int i2 = 20;
        for (int i3 = 1; i3 < str.length() - 1; i3++) {
            if (Character.isDigit(str.charAt(i3)) || str.charAt(i3) == '-' || str.charAt(i3) == '$') {
                i2 += 9;
            } else if (a.a(c, str.charAt(i3))) {
                i2 += 10;
            } else {
                throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i3) + '\'');
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i2];
        int i4 = 0;
        for (int i5 = 0; i5 < str.length(); i5++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i5));
            if (i5 == 0 || i5 == str.length() - 1) {
                switch (upperCase3) {
                    case '*':
                        upperCase3 = 'C';
                        break;
                    case 'E':
                        upperCase3 = 'D';
                        break;
                    case 'N':
                        upperCase3 = 'B';
                        break;
                    case 'T':
                        upperCase3 = 'A';
                        break;
                }
            }
            int i6 = 0;
            while (true) {
                if (i6 >= a.f643a.length) {
                    i = 0;
                } else if (upperCase3 != a.f643a[i6]) {
                    i6++;
                } else {
                    i = a.b[i6];
                }
            }
            int i7 = 0;
            int i8 = 0;
            boolean z = true;
            while (i7 < 7) {
                zArr[i4] = z;
                int i9 = i4 + 1;
                if (((i >> (6 - i7)) & 1) == 0 || i8 == 1) {
                    i7++;
                    i8 = 0;
                    z = !z;
                    i4 = i9;
                } else {
                    i8++;
                    i4 = i9;
                }
            }
            if (i5 < str.length() - 1) {
                zArr[i4] = false;
                i4++;
            }
        }
        return zArr;
    }
}