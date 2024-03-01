package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.internal.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class ar<R extends com.google.android.gms.common.api.f> extends com.google.android.gms.common.api.d<R> {

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<Boolean> f503a = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.ar.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Boolean initialValue() {
            return false;
        }
    };
    private com.google.android.gms.common.api.g<? super R> g;
    private R i;
    private b j;
    private volatile boolean k;
    private boolean l;
    private boolean m;
    private com.google.android.gms.common.internal.v n;
    private final Object d = new Object();
    private final CountDownLatch e = new CountDownLatch(1);
    private final ArrayList<d.a> f = new ArrayList<>();
    private final AtomicReference<k.a> h = new AtomicReference<>();
    private boolean o = false;
    protected final a<R> b = new a<>(Looper.getMainLooper());
    protected final WeakReference<com.google.android.gms.common.api.c> c = new WeakReference<>(null);

    /* loaded from: classes.dex */
    public static class a<R extends com.google.android.gms.common.api.f> extends Handler {
        public a() {
            this(Looper.getMainLooper());
        }

        public a(Looper looper) {
            super(looper);
        }

        public void a() {
            removeMessages(2);
        }

        public void a(com.google.android.gms.common.api.g<? super R> gVar, R r) {
            sendMessage(obtainMessage(1, new Pair(gVar, r)));
        }

        protected void b(com.google.android.gms.common.api.g<? super R> gVar, R r) {
            try {
                gVar.a(r);
            } catch (RuntimeException e) {
                ar.b(r);
                throw e;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    b((com.google.android.gms.common.api.g) pair.first, (com.google.android.gms.common.api.f) pair.second);
                    return;
                case 2:
                    ((ar) message.obj).a(Status.d);
                    return;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b {
        private b() {
        }

        protected void finalize() {
            ar.b(ar.this.i);
            super.finalize();
        }
    }

    @Deprecated
    ar() {
    }

    private void b() {
        k.a andSet = this.h.getAndSet(null);
        if (andSet != null) {
            andSet.a(this);
        }
    }

    public static void b(com.google.android.gms.common.api.f fVar) {
        if (fVar instanceof com.google.android.gms.common.api.e) {
            try {
                ((com.google.android.gms.common.api.e) fVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(fVar);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private R c() {
        R r;
        synchronized (this.d) {
            com.google.android.gms.common.internal.c.a(this.k ? false : true, "Result has already been consumed.");
            com.google.android.gms.common.internal.c.a(a(), "Result is not ready.");
            r = this.i;
            this.i = null;
            this.g = null;
            this.k = true;
        }
        b();
        return r;
    }

    private void c(R r) {
        this.i = r;
        this.n = null;
        this.e.countDown();
        Status a2 = this.i.a();
        if (this.l) {
            this.g = null;
        } else if (this.g != null) {
            this.b.a();
            this.b.a(this.g, c());
        } else if (this.i instanceof com.google.android.gms.common.api.e) {
            this.j = new b();
        }
        Iterator<d.a> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().a(a2);
        }
        this.f.clear();
    }

    public final void a(Status status) {
        synchronized (this.d) {
            if (!a()) {
                a((ar<R>) b(status));
                this.m = true;
            }
        }
    }

    public final void a(R r) {
        synchronized (this.d) {
            if (this.m || this.l) {
                b(r);
                return;
            }
            if (a()) {
            }
            com.google.android.gms.common.internal.c.a(!a(), "Results have already been set");
            com.google.android.gms.common.internal.c.a(this.k ? false : true, "Result has already been consumed");
            c(r);
        }
    }

    public final boolean a() {
        return this.e.getCount() == 0;
    }

    @NonNull
    protected abstract R b(Status status);
}