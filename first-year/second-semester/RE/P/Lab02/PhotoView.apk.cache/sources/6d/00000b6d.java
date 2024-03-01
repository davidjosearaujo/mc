package com.google.zxing.datamatrix.encoder;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: C40Encoder.java */
/* loaded from: classes.dex */
public class c implements g {
    public int a() {
        return 1;
    }

    @Override // com.google.zxing.datamatrix.encoder.g
    public void a(h hVar) {
        int a2;
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hVar.g()) {
                break;
            }
            char b = hVar.b();
            hVar.f639a++;
            int a3 = a(b, sb);
            int length = ((sb.length() / 3) << 1) + hVar.d();
            hVar.c(length);
            int f = hVar.i().f() - length;
            if (!hVar.g()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (f < 2 || f > 2)) {
                    a3 = a(hVar, sb, sb2, a3);
                }
                while (sb.length() % 3 == 1 && ((a3 <= 3 && f != 1) || a3 > 3)) {
                    a3 = a(hVar, sb, sb2, a3);
                }
            } else if (sb.length() % 3 == 0 && (a2 = j.a(hVar.a(), hVar.f639a, a())) != a()) {
                hVar.b(a2);
                break;
            }
        }
        b(hVar, sb);
    }

    private int a(h hVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hVar.f639a--;
        int a2 = a(hVar.b(), sb2);
        hVar.k();
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(h hVar, StringBuilder sb) {
        hVar.a(a(sb, 0));
        sb.delete(0, 3);
    }

    void b(h hVar, StringBuilder sb) {
        int length = sb.length() % 3;
        int length2 = ((sb.length() / 3) << 1) + hVar.d();
        hVar.c(length2);
        int f = hVar.i().f() - length2;
        if (length == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (hVar.g()) {
                hVar.a((char) 254);
            }
        } else if (f == 1 && length == 1) {
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (hVar.g()) {
                hVar.a((char) 254);
            }
            hVar.f639a--;
        } else if (length == 0) {
            while (sb.length() >= 3) {
                a(hVar, sb);
            }
            if (f > 0 || hVar.g()) {
                hVar.a((char) 254);
            }
        } else {
            throw new IllegalStateException("Unexpected case. Please report!");
        }
        hVar.b(0);
    }

    int a(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        } else if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        } else if (c >= 0 && c <= 31) {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        } else if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        } else if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        } else if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        } else if (c >= '`' && c <= 127) {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        } else if (c >= 128) {
            sb.append("\u0001\u001e");
            return a((char) (c - 128), sb) + 2;
        } else {
            throw new IllegalArgumentException("Illegal character: " + c);
        }
    }

    private static String a(CharSequence charSequence, int i) {
        int charAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }
}