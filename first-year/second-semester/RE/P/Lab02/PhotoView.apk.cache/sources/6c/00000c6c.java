package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkableInputStream.java */
/* loaded from: classes.dex */
final class m extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f780a;
    private long b;
    private long c;
    private long d;
    private long e;

    public m(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public m(InputStream inputStream, int i) {
        this.e = -1L;
        this.f780a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.e = a(i);
    }

    public long a(int i) {
        long j = this.b + i;
        if (this.d < j) {
            b(j);
        }
        return this.b;
    }

    private void b(long j) {
        try {
            if (this.c < this.b && this.b <= this.d) {
                this.f780a.reset();
                this.f780a.mark((int) (j - this.c));
                a(this.c, this.b);
            } else {
                this.c = this.b;
                this.f780a.mark((int) (j - this.b));
            }
            this.d = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    @Override // java.io.InputStream
    public void reset() {
        a(this.e);
    }

    public void a(long j) {
        if (this.b > this.d || j < this.c) {
            throw new IOException("Cannot reset");
        }
        this.f780a.reset();
        a(this.c, j);
        this.b = j;
    }

    private void a(long j, long j2) {
        while (j < j2) {
            long skip = this.f780a.skip(j2 - j);
            if (skip == 0) {
                if (read() != -1) {
                    skip = 1;
                } else {
                    return;
                }
            }
            j += skip;
        }
    }

    @Override // java.io.InputStream
    public int read() {
        int read = this.f780a.read();
        if (read != -1) {
            this.b++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        int read = this.f780a.read(bArr);
        if (read != -1) {
            this.b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = this.f780a.read(bArr, i, i2);
        if (read != -1) {
            this.b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        long skip = this.f780a.skip(j);
        this.b += skip;
        return skip;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f780a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f780a.close();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f780a.markSupported();
    }
}