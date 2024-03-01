package com.facebook.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

/* compiled from: LockOnGetVariable.java */
/* loaded from: classes.dex */
public class t<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f213a;
    private CountDownLatch b = new CountDownLatch(1);

    public t(final Callable<T> callable) {
        com.facebook.d.d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.internal.t.1
            @Override // java.util.concurrent.Callable
            /* renamed from: a */
            public Void call() {
                try {
                    t.this.f213a = callable.call();
                    t.this.b.countDown();
                    return null;
                } catch (Throwable th) {
                    t.this.b.countDown();
                    throw th;
                }
            }
        }));
    }

    public T a() {
        b();
        return this.f213a;
    }

    private void b() {
        if (this.b != null) {
            try {
                this.b.await();
            } catch (InterruptedException e) {
            }
        }
    }
}