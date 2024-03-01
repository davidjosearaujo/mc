package com.google.zxing.qrcode.a;

import java.lang.reflect.Array;

/* compiled from: ByteMatrix.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final byte[][] f661a;
    private final int b;
    private final int c;

    public b(int i, int i2) {
        this.f661a = (byte[][]) Array.newInstance(Byte.TYPE, i2, i);
        this.b = i;
        this.c = i2;
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.b;
    }

    public byte a(int i, int i2) {
        return this.f661a[i2][i];
    }

    public byte[][] c() {
        return this.f661a;
    }

    public void a(int i, int i2, int i3) {
        this.f661a[i2][i] = (byte) i3;
    }

    public void a(int i, int i2, boolean z) {
        this.f661a[i2][i] = (byte) (z ? 1 : 0);
    }

    public void a(byte b) {
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                this.f661a[i][i2] = b;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.b * 2 * this.c) + 2);
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.b; i2++) {
                switch (this.f661a[i][i2]) {
                    case 0:
                        sb.append(" 0");
                        break;
                    case 1:
                        sb.append(" 1");
                        break;
                    default:
                        sb.append("  ");
                        break;
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}