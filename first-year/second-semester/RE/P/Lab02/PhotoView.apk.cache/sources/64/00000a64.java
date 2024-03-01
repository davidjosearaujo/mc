package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.f;

/* loaded from: classes.dex */
public abstract class an {

    /* renamed from: a  reason: collision with root package name */
    public final int f498a;

    /* loaded from: classes.dex */
    private static abstract class a extends an {
        protected final com.google.android.gms.b.b<Void> b;

        public a(int i, com.google.android.gms.b.b<Void> bVar) {
            super(i);
            this.b = bVar;
        }

        @Override // com.google.android.gms.internal.an
        public void a(@NonNull Status status) {
            this.b.b(new zza(status));
        }

        @Override // com.google.android.gms.internal.an
        public void a(@NonNull com.google.android.gms.internal.a aVar, boolean z) {
        }

        @Override // com.google.android.gms.internal.an
        public final void a(c.a<?> aVar) {
            try {
                b(aVar);
            } catch (DeadObjectException e) {
                a(an.b(e));
                throw e;
            } catch (RemoteException e2) {
                a(an.b(e2));
            }
        }

        protected abstract void b(c.a<?> aVar);
    }

    /* loaded from: classes.dex */
    public static final class b extends a {
        public final f.a<?> c;

        public b(f.a<?> aVar, com.google.android.gms.b.b<Void> bVar) {
            super(4, bVar);
            this.c = aVar;
        }

        @Override // com.google.android.gms.internal.an.a, com.google.android.gms.internal.an
        public /* bridge */ /* synthetic */ void a(@NonNull Status status) {
            super.a(status);
        }

        @Override // com.google.android.gms.internal.an.a, com.google.android.gms.internal.an
        public /* bridge */ /* synthetic */ void a(@NonNull com.google.android.gms.internal.a aVar, boolean z) {
            super.a(aVar, z);
        }

        @Override // com.google.android.gms.internal.an.a
        public void b(c.a<?> aVar) {
            i remove = aVar.b().remove(this.c);
            if (remove != null) {
                remove.f516a.a();
                return;
            }
            Log.wtf("UnregisterListenerTask", "Received call to unregister a listener without a matching registration call.", new Exception());
            this.b.b(new zza(Status.c));
        }
    }

    public an(int i) {
        this.f498a = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status b(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (com.google.android.gms.common.util.l.d() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void a(@NonNull Status status);

    public abstract void a(@NonNull com.google.android.gms.internal.a aVar, boolean z);

    public abstract void a(c.a<?> aVar);
}