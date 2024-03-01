package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.InterfaceC0018a;

/* loaded from: classes.dex */
public final class ao<O extends a.InterfaceC0018a> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f499a;
    private final int b;
    private final com.google.android.gms.common.api.a<O> c;
    private final O d;

    public String a() {
        return this.c.b();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ao) {
            ao aoVar = (ao) obj;
            return !this.f499a && !aoVar.f499a && com.google.android.gms.common.internal.b.a(this.c, aoVar.c) && com.google.android.gms.common.internal.b.a(this.d, aoVar.d);
        }
        return false;
    }

    public int hashCode() {
        return this.b;
    }
}