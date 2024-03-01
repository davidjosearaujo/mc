package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.ac;

/* compiled from: AccessTokenTracker.java */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private final BroadcastReceiver f136a;
    private final LocalBroadcastManager b;
    private boolean c = false;

    protected abstract void a(AccessToken accessToken, AccessToken accessToken2);

    public c() {
        ac.a();
        this.f136a = new a();
        this.b = LocalBroadcastManager.getInstance(d.f());
        a();
    }

    public void a() {
        if (!this.c) {
            d();
            this.c = true;
        }
    }

    public void b() {
        if (this.c) {
            this.b.unregisterReceiver(this.f136a);
            this.c = false;
        }
    }

    public boolean c() {
        return this.c;
    }

    /* compiled from: AccessTokenTracker.java */
    /* loaded from: classes.dex */
    private class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                c.this.a((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    private void d() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.b.registerReceiver(this.f136a, intentFilter);
    }
}