package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* compiled from: HighLevelEncoder.java */
/* loaded from: classes.dex */
public final class j {
    private static char a(char c, int i) {
        int i2 = ((i * 149) % 253) + 1 + c;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    public static String a(String str, SymbolShapeHint symbolShapeHint, com.google.zxing.a aVar, com.google.zxing.a aVar2) {
        int i = 0;
        g[] gVarArr = {new a(), new c(), new l(), new m(), new f(), new b()};
        h hVar = new h(str);
        hVar.a(symbolShapeHint);
        hVar.a(aVar, aVar2);
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            hVar.a((char) 236);
            hVar.a(2);
            hVar.f639a += 7;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            hVar.a((char) 237);
            hVar.a(2);
            hVar.f639a += 7;
        }
        while (hVar.g()) {
            gVarArr[i].a(hVar);
            if (hVar.e() >= 0) {
                i = hVar.e();
                hVar.f();
            }
        }
        int d = hVar.d();
        hVar.j();
        int f = hVar.i().f();
        if (d < f && i != 0 && i != 5) {
            hVar.a((char) 254);
        }
        StringBuilder c = hVar.c();
        if (c.length() < f) {
            c.append((char) 129);
        }
        while (c.length() < f) {
            c.append(a((char) 129, c.length() + 1));
        }
        return hVar.c().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:157:?, code lost:
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(java.lang.CharSequence r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.encoder.j.a(java.lang.CharSequence, int, int):int");
    }

    private static int a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i2 = i;
        for (int i3 = 0; i3 < 6; i3++) {
            iArr[i3] = (int) Math.ceil(fArr[i3]);
            int i4 = iArr[i3];
            if (i2 > i4) {
                Arrays.fill(bArr, (byte) 0);
                i2 = i4;
            }
            if (i2 == i4) {
                bArr[i3] = (byte) (bArr[i3] + 1);
            }
        }
        return i2;
    }

    private static int a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(char c) {
        return c >= '0' && c <= '9';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(char c) {
        return c >= 128 && c <= 255;
    }

    private static boolean d(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    private static boolean e(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z');
    }

    private static boolean f(char c) {
        return g(c) || c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    private static boolean g(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    private static boolean h(char c) {
        return c >= ' ' && c <= '^';
    }

    private static boolean i(char c) {
        return false;
    }

    public static int a(CharSequence charSequence, int i) {
        int i2 = 0;
        int length = charSequence.length();
        if (i < length) {
            char charAt = charSequence.charAt(i);
            while (a(charAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    charAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }
}