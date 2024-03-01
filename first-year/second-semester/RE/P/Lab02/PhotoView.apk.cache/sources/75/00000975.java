package com.google.android.gms.b;

import android.support.annotation.NonNull;

/* loaded from: classes.dex */
final class e<TResult> extends a<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f392a = new Object();
    private final d<TResult> b = new d<>();
    private boolean c;
    private TResult d;
    private Exception e;

    private void a() {
        com.google.android.gms.common.internal.c.a(!this.c, "Task is already complete");
    }

    public void a(@NonNull Exception exc) {
        com.google.android.gms.common.internal.c.a(exc, "Exception must not be null");
        synchronized (this.f392a) {
            a();
            this.c = true;
            this.e = exc;
        }
        this.b.a(this);
    }

    public void a(TResult tresult) {
        synchronized (this.f392a) {
            a();
            this.c = true;
            this.d = tresult;
        }
        this.b.a(this);
    }

    public boolean b(@NonNull Exception exc) {
        boolean z = true;
        com.google.android.gms.common.internal.c.a(exc, "Exception must not be null");
        synchronized (this.f392a) {
            if (this.c) {
                z = false;
            } else {
                this.c = true;
                this.e = exc;
                this.b.a(this);
            }
        }
        return z;
    }
}