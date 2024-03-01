package com.google.zxing.datamatrix.encoder;

/* compiled from: SymbolInfo.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    static final k[] f641a;
    private static k[] d;
    public final int b;
    public final int c;
    private final boolean e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;

    static {
        k[] kVarArr = {new k(false, 3, 5, 8, 8, 1), new k(false, 5, 7, 10, 10, 1), new k(true, 5, 7, 16, 6, 1), new k(false, 8, 10, 12, 12, 1), new k(true, 10, 11, 14, 6, 2), new k(false, 12, 12, 14, 14, 1), new k(true, 16, 14, 24, 10, 1), new k(false, 18, 14, 16, 16, 1), new k(false, 22, 18, 18, 18, 1), new k(true, 22, 18, 16, 10, 2), new k(false, 30, 20, 20, 20, 1), new k(true, 32, 24, 16, 14, 2), new k(false, 36, 24, 22, 22, 1), new k(false, 44, 28, 24, 24, 1), new k(true, 49, 28, 22, 14, 2), new k(false, 62, 36, 14, 14, 4), new k(false, 86, 42, 16, 16, 4), new k(false, 114, 48, 18, 18, 4), new k(false, 144, 56, 20, 20, 4), new k(false, 174, 68, 22, 22, 4), new k(false, 204, 84, 24, 24, 4, 102, 42), new k(false, 280, 112, 14, 14, 16, 140, 56), new k(false, 368, 144, 16, 16, 16, 92, 36), new k(false, 456, 192, 18, 18, 16, 114, 48), new k(false, 576, 224, 20, 20, 16, 144, 56), new k(false, 696, 272, 22, 22, 16, 174, 68), new k(false, 816, 336, 24, 24, 16, 136, 56), new k(false, 1050, 408, 18, 18, 36, 175, 68), new k(false, 1304, 496, 20, 20, 36, 163, 62), new d()};
        f641a = kVarArr;
        d = kVarArr;
    }

    public k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.e = z;
        this.f = i;
        this.g = i2;
        this.b = i3;
        this.c = i4;
        this.h = i5;
        this.i = i6;
        this.j = i7;
    }

    public static k a(int i, SymbolShapeHint symbolShapeHint, com.google.zxing.a aVar, com.google.zxing.a aVar2, boolean z) {
        k[] kVarArr;
        for (k kVar : d) {
            if ((symbolShapeHint != SymbolShapeHint.FORCE_SQUARE || !kVar.e) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || kVar.e) && ((aVar == null || (kVar.d() >= aVar.a() && kVar.e() >= aVar.b())) && ((aVar2 == null || (kVar.d() <= aVar2.a() && kVar.e() <= aVar2.b())) && i <= kVar.f)))) {
                return kVar;
            }
        }
        if (z) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: " + i);
        }
        return null;
    }

    private int h() {
        switch (this.h) {
            case 1:
                return 1;
            case 2:
            case 4:
                return 2;
            case 16:
                return 4;
            case 36:
                return 6;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
    }

    private int i() {
        switch (this.h) {
            case 1:
            case 2:
                return 1;
            case 4:
                return 2;
            case 16:
                return 4;
            case 36:
                return 6;
            default:
                throw new IllegalStateException("Cannot handle this number of data regions");
        }
    }

    public final int b() {
        return h() * this.b;
    }

    public final int c() {
        return i() * this.c;
    }

    public final int d() {
        return b() + (h() << 1);
    }

    public final int e() {
        return c() + (i() << 1);
    }

    public int a() {
        return this.f / this.i;
    }

    public final int f() {
        return this.f;
    }

    public final int g() {
        return this.g;
    }

    public int a(int i) {
        return this.i;
    }

    public final int b(int i) {
        return this.j;
    }

    public final String toString() {
        return (this.e ? "Rectangular Symbol:" : "Square Symbol:") + " data region " + this.b + 'x' + this.c + ", symbol size " + d() + 'x' + e() + ", symbol data size " + b() + 'x' + c() + ", codewords " + this.f + '+' + this.g;
    }
}