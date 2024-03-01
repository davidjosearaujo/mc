package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.internal.ah;

/* loaded from: classes.dex */
public class aj extends com.google.android.gms.common.internal.q<ah> implements ab {
    private final boolean e;
    private final com.google.android.gms.common.internal.m f;
    private final Bundle g;
    private Integer h;

    public aj(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.m mVar, Bundle bundle, c.b bVar, c.InterfaceC0020c interfaceC0020c) {
        super(context, looper, 44, mVar, bVar, interfaceC0020c);
        this.e = z;
        this.f = mVar;
        this.g = bundle;
        this.h = mVar.g();
    }

    public aj(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.m mVar, ac acVar, c.b bVar, c.InterfaceC0020c interfaceC0020c) {
        this(context, looper, z, mVar, a(mVar), bVar, interfaceC0020c);
    }

    public static Bundle a(com.google.android.gms.common.internal.m mVar) {
        ac f = mVar.f();
        Integer g = mVar.g();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", mVar.a());
        if (g != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", g.intValue());
        }
        if (f != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", f.a());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", f.b());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", f.c());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", f.d());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", f.e());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", f.f());
            if (f.g() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", f.g().longValue());
            }
            if (f.h() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", f.h().longValue());
            }
        }
        return bundle;
    }

    private zzad t() {
        Account b = this.f.b();
        return new zzad(b, this.h.intValue(), "<<default account>>".equals(b.name) ? com.google.android.gms.auth.api.signin.a.b.a(k()).a() : null);
    }

    @Override // com.google.android.gms.internal.ab
    public void a(ag agVar) {
        com.google.android.gms.common.internal.c.a(agVar, "Expecting a valid ISignInCallbacks");
        try {
            ((ah) q()).a(new zzaxz(t()), agVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                agVar.a(new zzayb(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.l
    /* renamed from: b */
    public ah a(IBinder iBinder) {
        return ah.a.a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.l, com.google.android.gms.common.api.a.f
    public boolean d() {
        return this.e;
    }

    @Override // com.google.android.gms.common.internal.l
    protected String f() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.l
    protected String g() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.internal.ab
    public void h() {
        a(new l.i());
    }

    @Override // com.google.android.gms.common.internal.l
    protected Bundle n() {
        if (!k().getPackageName().equals(this.f.d())) {
            this.g.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f.d());
        }
        return this.g;
    }
}