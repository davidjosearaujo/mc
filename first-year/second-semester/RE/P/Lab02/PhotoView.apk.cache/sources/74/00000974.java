package com.google.android.gms.b;

import android.support.annotation.NonNull;
import java.util.Queue;

/* loaded from: classes.dex */
class d<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f391a = new Object();
    private Queue<c<TResult>> b;
    private boolean c;

    public void a(@NonNull a<TResult> aVar) {
        c<TResult> poll;
        synchronized (this.f391a) {
            if (this.b == null || this.c) {
                return;
            }
            this.c = true;
            while (true) {
                synchronized (this.f391a) {
                    poll = this.b.poll();
                    if (poll == null) {
                        this.c = false;
                        return;
                    }
                }
                poll.a(aVar);
            }
        }
    }
}