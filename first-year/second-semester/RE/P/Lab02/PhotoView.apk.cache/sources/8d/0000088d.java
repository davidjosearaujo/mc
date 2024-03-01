package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RequestProgress.java */
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final GraphRequest f277a;
    private final Handler b;
    private final long c = d.i();
    private long d;
    private long e;
    private long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Handler handler, GraphRequest graphRequest) {
        this.f277a = graphRequest;
        this.b = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.d += j;
        if (this.d >= this.e + this.c || this.d >= this.f) {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j) {
        this.f += j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.d > this.e) {
            GraphRequest.b g = this.f277a.g();
            if (this.f > 0 && (g instanceof GraphRequest.e)) {
                final long j = this.d;
                final long j2 = this.f;
                final GraphRequest.e eVar = (GraphRequest.e) g;
                if (this.b == null) {
                    eVar.a(j, j2);
                } else {
                    this.b.post(new Runnable() { // from class: com.facebook.n.1
                        @Override // java.lang.Runnable
                        public void run() {
                            eVar.a(j, j2);
                        }
                    });
                }
                this.e = this.d;
            }
        }
    }
}