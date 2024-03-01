package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.l;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class q<T extends IInterface> extends l<T> implements a.f {
    private final m e;
    private final Set<Scope> f;
    private final Account g;

    /* JADX INFO: Access modifiers changed from: protected */
    public q(Context context, Looper looper, int i, m mVar, c.b bVar, c.InterfaceC0020c interfaceC0020c) {
        this(context, looper, r.a(context), com.google.android.gms.common.b.a(), i, mVar, (c.b) c.a(bVar), (c.InterfaceC0020c) c.a(interfaceC0020c));
    }

    protected q(Context context, Looper looper, r rVar, com.google.android.gms.common.b bVar, int i, m mVar, c.b bVar2, c.InterfaceC0020c interfaceC0020c) {
        super(context, looper, rVar, bVar, i, a(bVar2), a(interfaceC0020c), mVar.e());
        this.e = mVar;
        this.g = mVar.a();
        this.f = b(mVar.c());
    }

    @Nullable
    private static l.b a(final c.b bVar) {
        if (bVar == null) {
            return null;
        }
        return new l.b() { // from class: com.google.android.gms.common.internal.q.1
            @Override // com.google.android.gms.common.internal.l.b
            public void a(int i) {
                c.b.this.a(i);
            }

            @Override // com.google.android.gms.common.internal.l.b
            public void a(@Nullable Bundle bundle) {
                c.b.this.a(bundle);
            }
        };
    }

    @Nullable
    private static l.c a(final c.InterfaceC0020c interfaceC0020c) {
        if (interfaceC0020c == null) {
            return null;
        }
        return new l.c() { // from class: com.google.android.gms.common.internal.q.2
            @Override // com.google.android.gms.common.internal.l.c
            public void a(@NonNull ConnectionResult connectionResult) {
                c.InterfaceC0020c.this.a(connectionResult);
            }
        };
    }

    private Set<Scope> b(@NonNull Set<Scope> set) {
        Set<Scope> a2 = a(set);
        for (Scope scope : a2) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return a2;
    }

    @NonNull
    protected Set<Scope> a(@NonNull Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.l
    public final Account l() {
        return this.g;
    }

    @Override // com.google.android.gms.common.internal.l
    protected final Set<Scope> s() {
        return this.f;
    }
}