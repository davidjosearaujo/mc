package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.a;

/* loaded from: classes.dex */
public class h<T extends IInterface> extends q<T> {
    private final a.h<T> e;

    @Override // com.google.android.gms.common.internal.l
    protected T a(IBinder iBinder) {
        return this.e.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.l
    protected String f() {
        return this.e.a();
    }

    @Override // com.google.android.gms.common.internal.l
    protected String g() {
        return this.e.b();
    }

    public a.h<T> h() {
        return this.e;
    }
}