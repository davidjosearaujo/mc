package com.facebook;

import android.os.Handler;
import com.facebook.f;
import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressOutputStream.java */
/* loaded from: classes.dex */
public class l extends FilterOutputStream implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Map<GraphRequest, n> f227a;
    private final f b;
    private final long c;
    private long d;
    private long e;
    private long f;
    private n g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(OutputStream outputStream, f fVar, Map<GraphRequest, n> map, long j) {
        super(outputStream);
        this.b = fVar;
        this.f227a = map;
        this.f = j;
        this.c = d.i();
    }

    private void a(long j) {
        if (this.g != null) {
            this.g.a(j);
        }
        this.d += j;
        if (this.d >= this.e + this.c || this.d >= this.f) {
            a();
        }
    }

    private void a() {
        if (this.d > this.e) {
            for (f.a aVar : this.b.e()) {
                if (aVar instanceof f.b) {
                    Handler c = this.b.c();
                    final f.b bVar = (f.b) aVar;
                    if (c == null) {
                        bVar.a(this.b, this.d, this.f);
                    } else {
                        c.post(new Runnable() { // from class: com.facebook.l.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bVar.a(l.this.b, l.this.d, l.this.f);
                            }
                        });
                    }
                }
            }
            this.e = this.d;
        }
    }

    @Override // com.facebook.m
    public void a(GraphRequest graphRequest) {
        this.g = graphRequest != null ? this.f227a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        this.out.write(bArr);
        a(bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        a(i2);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        this.out.write(i);
        a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        for (n nVar : this.f227a.values()) {
            nVar.a();
        }
        a();
    }
}