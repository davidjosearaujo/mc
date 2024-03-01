package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProgressNoopOutputStream.java */
/* loaded from: classes.dex */
public class k extends OutputStream implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Map<GraphRequest, n> f226a = new HashMap();
    private final Handler b;
    private GraphRequest c;
    private n d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Handler handler) {
        this.b = handler;
    }

    @Override // com.facebook.m
    public void a(GraphRequest graphRequest) {
        this.c = graphRequest;
        this.d = graphRequest != null ? this.f226a.get(graphRequest) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<GraphRequest, n> b() {
        return this.f226a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        if (this.d == null) {
            this.d = new n(this.b, this.c);
            this.f226a.put(this.c, this.d);
        }
        this.d.b(j);
        this.e = (int) (this.e + j);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        a(bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        a(i2);
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        a(1L);
    }
}