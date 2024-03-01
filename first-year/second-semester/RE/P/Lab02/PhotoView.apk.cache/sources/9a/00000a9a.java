package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* loaded from: classes.dex */
public final class zzaar extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    protected Context f524a;
    private final a b;

    /* loaded from: classes.dex */
    public static abstract class a {
        public abstract void a();
    }

    public zzaar(a aVar) {
        this.b = aVar;
    }

    public synchronized void a() {
        if (this.f524a != null) {
            this.f524a.unregisterReceiver(this);
        }
        this.f524a = null;
    }

    public void a(Context context) {
        this.f524a = context;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.b.a();
            a();
        }
    }
}