package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.zzb;
import java.util.Set;

/* loaded from: classes.dex */
public final class ap {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<ao<?>, ConnectionResult> f500a;
    private final com.google.android.gms.b.b<Void> b;
    private int c;
    private boolean d;

    public Set<ao<?>> a() {
        return this.f500a.keySet();
    }

    public void a(ao<?> aoVar, ConnectionResult connectionResult) {
        this.f500a.put(aoVar, connectionResult);
        this.c--;
        if (!connectionResult.b()) {
            this.d = true;
        }
        if (this.c == 0) {
            if (!this.d) {
                this.b.a((com.google.android.gms.b.b<Void>) null);
                return;
            }
            this.b.a(new zzb(this.f500a));
        }
    }
}