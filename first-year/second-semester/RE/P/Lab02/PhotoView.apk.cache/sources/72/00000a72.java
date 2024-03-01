package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public class b extends aq {
    private final com.google.android.gms.common.util.a<ao<?>> e;
    private c f;

    @Override // com.google.android.gms.internal.aq, com.google.android.gms.internal.d
    public void a() {
        super.a();
        if (this.e.isEmpty()) {
            return;
        }
        this.f.a(this);
    }

    @Override // com.google.android.gms.internal.aq
    protected void a(ConnectionResult connectionResult, int i) {
        this.f.b(connectionResult, i);
    }

    @Override // com.google.android.gms.internal.aq, com.google.android.gms.internal.d
    public void b() {
        super.b();
        this.f.b(this);
    }

    @Override // com.google.android.gms.internal.aq
    protected void c() {
        this.f.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.google.android.gms.common.util.a<ao<?>> d() {
        return this.e;
    }
}