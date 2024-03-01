package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Stats.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    final HandlerThread f789a = new HandlerThread("Picasso-Stats", 10);
    final d b;
    final Handler c;
    long d;
    long e;
    long f;
    long g;
    long h;
    long i;
    long j;
    long k;
    int l;
    int m;
    int n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(d dVar) {
        this.b = dVar;
        this.f789a.start();
        y.a(this.f789a.getLooper());
        this.c = new a(this.f789a.getLooper(), this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bitmap bitmap) {
        a(bitmap, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Bitmap bitmap) {
        a(bitmap, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.c.sendMessage(this.c.obtainMessage(4, Long.valueOf(j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.c.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.c.sendEmptyMessage(1);
    }

    void c() {
        this.d++;
    }

    void d() {
        this.e++;
    }

    void a(Long l) {
        this.l++;
        this.f += l.longValue();
        this.i = a(this.l, this.f);
    }

    void b(long j) {
        this.m++;
        this.g += j;
        this.j = a(this.m, this.g);
    }

    void c(long j) {
        this.n++;
        this.h += j;
        this.k = a(this.m, this.h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v e() {
        return new v(this.b.b(), this.b.a(), this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }

    private void a(Bitmap bitmap, int i) {
        this.c.sendMessage(this.c.obtainMessage(i, y.a(bitmap), 0));
    }

    private static long a(int i, long j) {
        return j / i;
    }

    /* compiled from: Stats.java */
    /* loaded from: classes.dex */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final u f790a;

        public a(Looper looper, u uVar) {
            super(looper);
            this.f790a = uVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 0:
                    this.f790a.c();
                    return;
                case 1:
                    this.f790a.d();
                    return;
                case 2:
                    this.f790a.b(message.arg1);
                    return;
                case 3:
                    this.f790a.c(message.arg1);
                    return;
                case 4:
                    this.f790a.a((Long) message.obj);
                    return;
                default:
                    Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.u.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unhandled stats message." + message.what);
                        }
                    });
                    return;
            }
        }
    }
}