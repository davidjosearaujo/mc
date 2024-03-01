package com.google.zxing.qrcode.decoder;

/* loaded from: classes.dex */
public enum ErrorCorrectionLevel {
    L(1),
    M(0),
    Q(3),
    H(2);
    
    private final int bits;

    /* renamed from: a  reason: collision with root package name */
    private static final ErrorCorrectionLevel[] f666a = {M, L, H, Q};

    ErrorCorrectionLevel(int i) {
        this.bits = i;
    }

    public int getBits() {
        return this.bits;
    }

    public static ErrorCorrectionLevel forBits(int i) {
        if (i < 0 || i >= f666a.length) {
            throw new IllegalArgumentException();
        }
        return f666a[i];
    }
}