package com.facebook.internal;

import java.util.concurrent.Executor;

/* compiled from: WorkQueue.java */
/* loaded from: classes.dex */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f171a;
    private final Object b;
    private b c;
    private final int d;
    private final Executor e;
    private b f;
    private int g;

    /* compiled from: WorkQueue.java */
    /* loaded from: classes.dex */
    public interface a {
        boolean a();

        void b();
    }

    static {
        f171a = !ae.class.desiredAssertionStatus();
    }

    public ae() {
        this(8);
    }

    public ae(int i) {
        this(i, com.facebook.d.d());
    }

    public ae(int i, Executor executor) {
        this.b = new Object();
        this.f = null;
        this.g = 0;
        this.d = i;
        this.e = executor;
    }

    public a a(Runnable runnable) {
        return a(runnable, true);
    }

    public a a(Runnable runnable, boolean z) {
        b bVar = new b(runnable);
        synchronized (this.b) {
            this.c = bVar.a(this.c, z);
        }
        a();
        return bVar;
    }

    private void a() {
        a((b) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        b bVar2 = null;
        synchronized (this.b) {
            if (bVar != null) {
                this.f = bVar.a(this.f);
                this.g--;
            }
            if (this.g < this.d && (bVar2 = this.c) != null) {
                this.c = bVar2.a(this.c);
                this.f = bVar2.a(this.f, false);
                this.g++;
                bVar2.a(true);
            }
        }
        if (bVar2 != null) {
            b(bVar2);
        }
    }

    private void b(final b bVar) {
        this.e.execute(new Runnable() { // from class: com.facebook.internal.ae.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    bVar.d().run();
                } finally {
                    ae.this.a(bVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WorkQueue.java */
    /* loaded from: classes.dex */
    public class b implements a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f173a;
        private final Runnable c;
        private b d;
        private b e;
        private boolean f;

        static {
            f173a = !ae.class.desiredAssertionStatus();
        }

        b(Runnable runnable) {
            this.c = runnable;
        }

        @Override // com.facebook.internal.ae.a
        public boolean a() {
            synchronized (ae.this.b) {
                if (!c()) {
                    ae.this.c = a(ae.this.c);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.internal.ae.a
        public void b() {
            synchronized (ae.this.b) {
                if (!c()) {
                    ae.this.c = a(ae.this.c);
                    ae.this.c = a(ae.this.c, true);
                }
            }
        }

        public boolean c() {
            return this.f;
        }

        Runnable d() {
            return this.c;
        }

        void a(boolean z) {
            this.f = z;
        }

        b a(b bVar, boolean z) {
            b bVar2;
            if (f173a || this.d == null) {
                if (f173a || this.e == null) {
                    if (bVar == null) {
                        this.e = this;
                        this.d = this;
                        bVar2 = this;
                    } else {
                        this.d = bVar;
                        this.e = bVar.e;
                        b bVar3 = this.d;
                        this.e.d = this;
                        bVar3.e = this;
                        bVar2 = bVar;
                    }
                    return z ? this : bVar2;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }

        b a(b bVar) {
            if (f173a || this.d != null) {
                if (f173a || this.e != null) {
                    if (bVar == this) {
                        bVar = this.d == this ? null : this.d;
                    }
                    this.d.e = this.e;
                    this.e.d = this.d;
                    this.e = null;
                    this.d = null;
                    return bVar;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
    }
}