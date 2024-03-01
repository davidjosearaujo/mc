package com.google.zxing.common;

import java.util.Arrays;

/* compiled from: BitMatrix.java */
/* loaded from: classes.dex */
public final class b implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final int f636a;
    private final int b;
    private final int c;
    private final int[] d;

    public b(int i) {
        this(i, i);
    }

    public b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f636a = i;
        this.b = i2;
        this.c = (i + 31) / 32;
        this.d = new int[this.c * i2];
    }

    private b(int i, int i2, int i3, int[] iArr) {
        this.f636a = i;
        this.b = i2;
        this.c = i3;
        this.d = iArr;
    }

    public boolean a(int i, int i2) {
        return ((this.d[(this.c * i2) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    public void b(int i, int i2) {
        int i3 = (this.c * i2) + (i / 32);
        int[] iArr = this.d;
        iArr[i3] = iArr[i3] | (1 << (i & 31));
    }

    public void a() {
        int length = this.d.length;
        for (int i = 0; i < length; i++) {
            this.d[i] = 0;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i5 = i + i3;
        int i6 = i2 + i4;
        if (i6 > this.b || i5 > this.f636a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i2 < i6) {
            int i7 = i2 * this.c;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.d;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public int b() {
        return this.f636a;
    }

    public int c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            b bVar = (b) obj;
            return this.f636a == bVar.f636a && this.b == bVar.b && this.c == bVar.c && Arrays.equals(this.d, bVar.d);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f636a * 31) + this.f636a) * 31) + this.b) * 31) + this.c) * 31) + Arrays.hashCode(this.d);
    }

    public String toString() {
        return a("X ", "  ");
    }

    public String a(String str, String str2) {
        return a(str, str2, "\n");
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.b * (this.f636a + 1));
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.f636a; i2++) {
                sb.append(a(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* renamed from: d */
    public b clone() {
        return new b(this.f636a, this.b, this.c, (int[]) this.d.clone());
    }
}