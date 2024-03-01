package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.zzaf;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class j extends ae implements c.b, c.InterfaceC0020c {

    /* renamed from: a  reason: collision with root package name */
    private static a.b<? extends ab, ac> f517a = aa.c;
    private final Context b;
    private final Handler c;
    private final a.b<? extends ab, ac> d;
    private final boolean e;
    private Set<Scope> f;
    private com.google.android.gms.common.internal.m g;
    private ab h;
    private a i;

    @WorkerThread
    /* loaded from: classes.dex */
    public interface a {
        void a(com.google.android.gms.common.internal.u uVar, Set<Scope> set);

        void b(ConnectionResult connectionResult);
    }

    @WorkerThread
    public j(Context context, Handler handler) {
        this.b = context;
        this.c = handler;
        GoogleSignInOptions b = com.google.android.gms.auth.api.signin.a.b.a(this.b).b();
        this.f = b == null ? new HashSet() : new HashSet(b.a());
        this.g = new com.google.android.gms.common.internal.m(null, this.f, null, 0, null, null, null, ac.f494a);
        this.d = f517a;
        this.e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void b(zzayb zzaybVar) {
        ConnectionResult a2 = zzaybVar.a();
        if (a2.b()) {
            zzaf b = zzaybVar.b();
            ConnectionResult b2 = b.b();
            if (!b2.b()) {
                String valueOf = String.valueOf(b2);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                this.i.b(b2);
                this.h.a();
                return;
            }
            this.i.a(b.a(), this.f);
        } else {
            this.i.b(a2);
        }
        this.h.a();
    }

    public void a() {
        this.h.a();
    }

    @Override // com.google.android.gms.common.api.c.b
    @WorkerThread
    public void a(int i) {
        this.h.a();
    }

    @Override // com.google.android.gms.common.api.c.b
    @WorkerThread
    public void a(@Nullable Bundle bundle) {
        this.h.a(this);
    }

    @Override // com.google.android.gms.common.api.c.InterfaceC0020c
    @WorkerThread
    public void a(@NonNull ConnectionResult connectionResult) {
        this.i.b(connectionResult);
    }

    @WorkerThread
    public void a(a aVar) {
        if (this.h != null) {
            this.h.a();
        }
        if (this.e) {
            GoogleSignInOptions b = com.google.android.gms.auth.api.signin.a.b.a(this.b).b();
            this.f = b == null ? new HashSet() : new HashSet(b.a());
            this.g = new com.google.android.gms.common.internal.m(null, this.f, null, 0, null, null, null, ac.f494a);
        }
        this.h = this.d.a(this.b, this.c.getLooper(), this.g, this.g.f(), this, this);
        this.i = aVar;
        this.h.h();
    }

    @Override // com.google.android.gms.internal.ae, com.google.android.gms.internal.ag
    @BinderThread
    public void a(final zzayb zzaybVar) {
        this.c.post(new Runnable() { // from class: com.google.android.gms.internal.j.1
            @Override // java.lang.Runnable
            public void run() {
                j.this.b(zzaybVar);
            }
        });
    }
}