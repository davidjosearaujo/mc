package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.common.internal.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class l<T extends IInterface> {
    public static final String[] d = {"service_esmobile", "service_googleme"};

    /* renamed from: a  reason: collision with root package name */
    final Handler f433a;
    protected f b;
    private int e;
    private long f;
    private long g;
    private int h;
    private long i;
    private final Context j;
    private final Looper k;
    private final r l;
    private final com.google.android.gms.common.f m;
    private y p;
    private T q;
    private h s;
    private final b u;
    private final c v;
    private final int w;
    private final String x;
    private final Object n = new Object();
    private final Object o = new Object();
    private final ArrayList<e<?>> r = new ArrayList<>();
    private int t = 1;
    protected AtomicInteger c = new AtomicInteger(0);

    /* loaded from: classes.dex */
    private abstract class a extends e<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public final int f434a;
        public final Bundle b;

        @BinderThread
        protected a(int i, Bundle bundle) {
            super(true);
            this.f434a = i;
            this.b = bundle;
        }

        protected abstract void a(ConnectionResult connectionResult);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.internal.l.e
        public void a(Boolean bool) {
            if (bool == null) {
                l.this.a(1, (int) null);
                return;
            }
            switch (this.f434a) {
                case 0:
                    if (a()) {
                        return;
                    }
                    l.this.a(1, (int) null);
                    a(new ConnectionResult(8, null));
                    return;
                case 10:
                    l.this.a(1, (int) null);
                    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                default:
                    l.this.a(1, (int) null);
                    a(new ConnectionResult(this.f434a, this.b != null ? (PendingIntent) this.b.getParcelable("pendingIntent") : null));
                    return;
            }
        }

        protected abstract boolean a();
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i);

        void a(@Nullable Bundle bundle);
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(@NonNull ConnectionResult connectionResult);
    }

    /* loaded from: classes.dex */
    final class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        private void a(Message message) {
            ((e) message.obj).c();
        }

        private boolean b(Message message) {
            return message.what == 2 || message.what == 1 || message.what == 5;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (l.this.c.get() != message.arg1) {
                if (b(message)) {
                    a(message);
                }
            } else if ((message.what == 1 || message.what == 5) && !l.this.c()) {
                a(message);
            } else if (message.what == 3) {
                ConnectionResult connectionResult = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
                l.this.b.a(connectionResult);
                l.this.a(connectionResult);
            } else if (message.what == 4) {
                l.this.a(4, (int) null);
                if (l.this.u != null) {
                    l.this.u.a(message.arg2);
                }
                l.this.a(message.arg2);
                l.this.a(4, 1, (int) null);
            } else if (message.what == 2 && !l.this.b()) {
                a(message);
            } else if (b(message)) {
                ((e) message.obj).b();
            } else {
                Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public abstract class e<TListener> {

        /* renamed from: a  reason: collision with root package name */
        private TListener f436a;
        private boolean b = false;

        public e(TListener tlistener) {
            this.f436a = tlistener;
        }

        protected abstract void a(TListener tlistener);

        public void b() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f436a;
                if (this.b) {
                    String valueOf = String.valueOf(this);
                    Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e) {
                    throw e;
                }
            }
            synchronized (this) {
                this.b = true;
            }
            c();
        }

        public void c() {
            d();
            synchronized (l.this.r) {
                l.this.r.remove(this);
            }
        }

        public void d() {
            synchronized (this) {
                this.f436a = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(@NonNull ConnectionResult connectionResult);
    }

    /* loaded from: classes.dex */
    public static final class g extends x.a {

        /* renamed from: a  reason: collision with root package name */
        private l f437a;
        private final int b;

        public g(@NonNull l lVar, int i) {
            this.f437a = lVar;
            this.b = i;
        }

        private void a() {
            this.f437a = null;
        }

        @Override // com.google.android.gms.common.internal.x
        @BinderThread
        public void a(int i, @Nullable Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        @Override // com.google.android.gms.common.internal.x
        @BinderThread
        public void a(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
            com.google.android.gms.common.internal.c.a(this.f437a, "onPostInitComplete can be called only once per call to getRemoteService");
            this.f437a.a(i, iBinder, bundle, this.b);
            a();
        }
    }

    /* loaded from: classes.dex */
    public final class h implements ServiceConnection {
        private final int b;

        public h(int i) {
            this.b = i;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                l.this.b(new ConnectionResult(8, null, "ServiceBroker IBinder is null"));
                return;
            }
            synchronized (l.this.o) {
                l.this.p = y.a.a(iBinder);
            }
            l.this.a(0, (Bundle) null, this.b);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (l.this.o) {
                l.this.p = null;
            }
            l.this.f433a.sendMessage(l.this.f433a.obtainMessage(4, this.b, 1));
        }
    }

    /* loaded from: classes.dex */
    protected class i implements f {
        public i() {
        }

        @Override // com.google.android.gms.common.internal.l.f
        public void a(@NonNull ConnectionResult connectionResult) {
            if (connectionResult.b()) {
                l.this.a((u) null, l.this.s());
            } else if (l.this.v != null) {
                l.this.v.a(connectionResult);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public final class j extends a {
        public final IBinder e;

        @BinderThread
        public j(int i, IBinder iBinder, Bundle bundle) {
            super(i, bundle);
            this.e = iBinder;
        }

        @Override // com.google.android.gms.common.internal.l.a
        protected void a(ConnectionResult connectionResult) {
            if (l.this.v != null) {
                l.this.v.a(connectionResult);
            }
            l.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.l.a
        protected boolean a() {
            try {
                String interfaceDescriptor = this.e.getInterfaceDescriptor();
                if (!l.this.g().equals(interfaceDescriptor)) {
                    String valueOf = String.valueOf(l.this.g());
                    Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 34 + String.valueOf(interfaceDescriptor).length()).append("service descriptor mismatch: ").append(valueOf).append(" vs. ").append(interfaceDescriptor).toString());
                    return false;
                }
                IInterface a2 = l.this.a(this.e);
                if (a2 == null || !l.this.a(2, 3, (int) a2)) {
                    return false;
                }
                Bundle p = l.this.p();
                if (l.this.u != null) {
                    l.this.u.a(p);
                }
                return true;
            } catch (RemoteException e) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public final class k extends a {
        @BinderThread
        public k(int i, Bundle bundle) {
            super(i, bundle);
        }

        @Override // com.google.android.gms.common.internal.l.a
        protected void a(ConnectionResult connectionResult) {
            l.this.b.a(connectionResult);
            l.this.a(connectionResult);
        }

        @Override // com.google.android.gms.common.internal.l.a
        protected boolean a() {
            l.this.b.a(ConnectionResult.f393a);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public l(Context context, Looper looper, r rVar, com.google.android.gms.common.f fVar, int i2, b bVar, c cVar, String str) {
        this.j = (Context) com.google.android.gms.common.internal.c.a(context, "Context must not be null");
        this.k = (Looper) com.google.android.gms.common.internal.c.a(looper, "Looper must not be null");
        this.l = (r) com.google.android.gms.common.internal.c.a(rVar, "Supervisor must not be null");
        this.m = (com.google.android.gms.common.f) com.google.android.gms.common.internal.c.a(fVar, "API availability must not be null");
        this.f433a = new d(looper);
        this.w = i2;
        this.u = bVar;
        this.v = cVar;
        this.x = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, T t) {
        com.google.android.gms.common.internal.c.b((i2 == 3) == (t != null));
        synchronized (this.n) {
            this.t = i2;
            this.q = t;
            switch (i2) {
                case 1:
                    t();
                    break;
                case 2:
                    h();
                    break;
                case 3:
                    a((l<T>) t);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i2, int i3, T t) {
        boolean z;
        synchronized (this.n) {
            if (this.t != i2) {
                z = false;
            } else {
                a(i3, (int) t);
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ConnectionResult connectionResult) {
        this.f433a.sendMessage(this.f433a.obtainMessage(3, this.c.get(), connectionResult.c(), connectionResult.d()));
    }

    private void h() {
        if (this.s != null) {
            String valueOf = String.valueOf(f());
            String valueOf2 = String.valueOf(i());
            Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 70 + String.valueOf(valueOf2).length()).append("Calling connect() while still connected, missing disconnect() for ").append(valueOf).append(" on ").append(valueOf2).toString());
            this.l.b(f(), i(), this.s, j());
            this.c.incrementAndGet();
        }
        this.s = new h(this.c.get());
        if (this.l.a(f(), i(), this.s, j())) {
            return;
        }
        String valueOf3 = String.valueOf(f());
        String valueOf4 = String.valueOf(i());
        Log.e("GmsClient", new StringBuilder(String.valueOf(valueOf3).length() + 34 + String.valueOf(valueOf4).length()).append("unable to connect to service: ").append(valueOf3).append(" on ").append(valueOf4).toString());
        a(16, (Bundle) null, this.c.get());
    }

    private void t() {
        if (this.s != null) {
            this.l.b(f(), i(), this.s, j());
            this.s = null;
        }
    }

    @Nullable
    protected abstract T a(IBinder iBinder);

    public void a() {
        this.c.incrementAndGet();
        synchronized (this.r) {
            int size = this.r.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.r.get(i2).d();
            }
            this.r.clear();
        }
        synchronized (this.o) {
            this.p = null;
        }
        a(1, (int) null);
    }

    @CallSuper
    protected void a(int i2) {
        this.e = i2;
        this.f = System.currentTimeMillis();
    }

    protected void a(int i2, @Nullable Bundle bundle, int i3) {
        this.f433a.sendMessage(this.f433a.obtainMessage(5, i3, -1, new k(i2, bundle)));
    }

    @BinderThread
    protected void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        this.f433a.sendMessage(this.f433a.obtainMessage(1, i3, -1, new j(i2, iBinder, bundle)));
    }

    @CallSuper
    protected void a(@NonNull T t) {
        this.g = System.currentTimeMillis();
    }

    @CallSuper
    protected void a(ConnectionResult connectionResult) {
        this.h = connectionResult.c();
        this.i = System.currentTimeMillis();
    }

    public void a(@NonNull f fVar) {
        this.b = (f) com.google.android.gms.common.internal.c.a(fVar, "Connection progress callbacks cannot be null.");
        a(2, (int) null);
    }

    @WorkerThread
    public void a(u uVar, Set<Scope> set) {
        zzj a2 = new zzj(this.w).a(this.j.getPackageName()).a(n());
        if (set != null) {
            a2.a(set);
        }
        if (d()) {
            a2.a(m()).a(uVar);
        } else if (r()) {
            a2.a(l());
        }
        try {
            synchronized (this.o) {
                if (this.p != null) {
                    this.p.a(new g(this, this.c.get()), a2);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "service died");
            b(1);
        } catch (RemoteException e3) {
            Log.w("GmsClient", "Remote exception occurred", e3);
        } catch (SecurityException e4) {
            throw e4;
        } catch (RuntimeException e5) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e5);
            b(new ConnectionResult(8, null, "IGmsServiceBroker.getService failed."));
        }
    }

    public void b(int i2) {
        this.f433a.sendMessage(this.f433a.obtainMessage(4, this.c.get(), i2));
    }

    public boolean b() {
        boolean z;
        synchronized (this.n) {
            z = this.t == 3;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.n) {
            z = this.t == 2;
        }
        return z;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    @NonNull
    protected abstract String f();

    @NonNull
    protected abstract String g();

    protected String i() {
        return "com.google.android.gms";
    }

    @Nullable
    protected final String j() {
        return this.x == null ? this.j.getClass().getName() : this.x;
    }

    public final Context k() {
        return this.j;
    }

    public Account l() {
        return null;
    }

    public final Account m() {
        return l() != null ? l() : new Account("<<default account>>", "com.google");
    }

    protected Bundle n() {
        return new Bundle();
    }

    protected final void o() {
        if (!b()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public Bundle p() {
        return null;
    }

    public final T q() {
        T t;
        synchronized (this.n) {
            if (this.t == 4) {
                throw new DeadObjectException();
            }
            o();
            com.google.android.gms.common.internal.c.a(this.q != null, "Client is connected but service is null");
            t = this.q;
        }
        return t;
    }

    public boolean r() {
        return false;
    }

    protected Set<Scope> s() {
        return Collections.EMPTY_SET;
    }
}