package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.InterfaceC0018a;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.c;

/* loaded from: classes.dex */
public abstract class h<O extends a.InterfaceC0018a> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f403a;
    private final a<O> b;
    private final O c;
    private final ao<O> d;
    private final int e;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.common.api.a$f] */
    @WorkerThread
    public a.f a(Looper looper, c.a<O> aVar) {
        return this.b.a().a(this.f403a, looper, m.a(this.f403a), this.c, aVar, aVar);
    }

    public ao<O> a() {
        return this.d;
    }

    public com.google.android.gms.internal.j a(Context context, Handler handler) {
        return new com.google.android.gms.internal.j(context, handler);
    }

    public int b() {
        return this.e;
    }
}