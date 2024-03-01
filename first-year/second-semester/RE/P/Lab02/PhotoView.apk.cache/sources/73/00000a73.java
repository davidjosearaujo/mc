package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.f;
import com.google.android.gms.internal.j;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class c implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static final Status f505a = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status b = new Status(4, "The user must be signed in to make this API call.");
    private static final Object f = new Object();
    private static c g;
    private final Context h;
    private final com.google.android.gms.common.b i;
    private final Handler q;
    private long c = 5000;
    private long d = 120000;
    private long e = 10000;
    private int j = -1;
    private final AtomicInteger k = new AtomicInteger(1);
    private final AtomicInteger l = new AtomicInteger(0);
    private final Map<ao<?>, a<?>> m = new ConcurrentHashMap(5, 0.75f, 1);
    private com.google.android.gms.internal.b n = null;
    private final Set<ao<?>> o = new com.google.android.gms.common.util.a();
    private final Set<ao<?>> p = new com.google.android.gms.common.util.a();

    /* loaded from: classes.dex */
    public class a<O extends a.InterfaceC0018a> implements c.b, c.InterfaceC0020c, as {
        private final a.f c;
        private final a.c d;
        private final ao<O> e;
        private final com.google.android.gms.internal.a f;
        private final int i;
        private final j j;
        private boolean k;
        private final Queue<an> b = new LinkedList();
        private final Set<ap> g = new HashSet();
        private final Map<f.a<?>, i> h = new HashMap();
        private ConnectionResult l = null;

        @WorkerThread
        public a(com.google.android.gms.common.api.h<O> hVar) {
            this.c = hVar.a(c.this.q.getLooper(), this);
            if (this.c instanceof com.google.android.gms.common.internal.h) {
                this.d = ((com.google.android.gms.common.internal.h) this.c).h();
            } else {
                this.d = this.c;
            }
            this.e = hVar.a();
            this.f = new com.google.android.gms.internal.a();
            this.i = hVar.b();
            if (this.c.d()) {
                this.j = hVar.a(c.this.h, c.this.q);
            } else {
                this.j = null;
            }
        }

        @WorkerThread
        private void b(an anVar) {
            anVar.a(this.f, j());
            try {
                anVar.a((a<?>) this);
            } catch (DeadObjectException e) {
                a(1);
                this.c.a();
            }
        }

        @WorkerThread
        private void c(ConnectionResult connectionResult) {
            for (ap apVar : this.g) {
                apVar.a(this.e, connectionResult);
            }
            this.g.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void l() {
            c();
            c(ConnectionResult.f393a);
            o();
            Iterator<i> it = this.h.values().iterator();
            while (it.hasNext()) {
                it.next();
                try {
                    new com.google.android.gms.b.b();
                } catch (DeadObjectException e) {
                    a(1);
                    this.c.a();
                } catch (RemoteException e2) {
                }
            }
            n();
            p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void m() {
            c();
            this.k = true;
            this.f.c();
            c.this.q.sendMessageDelayed(Message.obtain(c.this.q, 7, this.e), c.this.c);
            c.this.q.sendMessageDelayed(Message.obtain(c.this.q, 9, this.e), c.this.d);
            c.this.j = -1;
        }

        @WorkerThread
        private void n() {
            while (this.c.b() && !this.b.isEmpty()) {
                b(this.b.remove());
            }
        }

        @WorkerThread
        private void o() {
            if (this.k) {
                c.this.q.removeMessages(9, this.e);
                c.this.q.removeMessages(7, this.e);
                this.k = false;
            }
        }

        private void p() {
            c.this.q.removeMessages(10, this.e);
            c.this.q.sendMessageDelayed(c.this.q.obtainMessage(10, this.e), c.this.e);
        }

        @WorkerThread
        public void a() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            a(c.f505a);
            this.f.b();
            for (f.a<?> aVar : this.h.keySet()) {
                a(new an.b(aVar, new com.google.android.gms.b.b()));
            }
            this.c.a();
        }

        @Override // com.google.android.gms.common.api.c.b
        public void a(int i) {
            if (Looper.myLooper() == c.this.q.getLooper()) {
                m();
            } else {
                c.this.q.post(new Runnable() { // from class: com.google.android.gms.internal.c.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.m();
                    }
                });
            }
        }

        @Override // com.google.android.gms.common.api.c.b
        public void a(@Nullable Bundle bundle) {
            if (Looper.myLooper() == c.this.q.getLooper()) {
                l();
            } else {
                c.this.q.post(new Runnable() { // from class: com.google.android.gms.internal.c.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.l();
                    }
                });
            }
        }

        @Override // com.google.android.gms.common.api.c.InterfaceC0020c
        @WorkerThread
        public void a(@NonNull ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.j != null) {
                this.j.a();
            }
            c();
            c.this.j = -1;
            c(connectionResult);
            if (connectionResult.c() == 4) {
                a(c.b);
            } else if (this.b.isEmpty()) {
                this.l = connectionResult;
            } else {
                synchronized (c.f) {
                    if (c.this.n != null && c.this.o.contains(this.e)) {
                        c.this.n.b(connectionResult, this.i);
                    } else if (!c.this.a(connectionResult, this.i)) {
                        if (connectionResult.c() == 18) {
                            this.k = true;
                        }
                        if (this.k) {
                            c.this.q.sendMessageDelayed(Message.obtain(c.this.q, 7, this.e), c.this.c);
                        } else {
                            String valueOf = String.valueOf(this.e.a());
                            a(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 38).append("API: ").append(valueOf).append(" is not available on this device.").toString()));
                        }
                    }
                }
            }
        }

        @WorkerThread
        public void a(Status status) {
            com.google.android.gms.common.internal.c.a(c.this.q);
            for (an anVar : this.b) {
                anVar.a(status);
            }
            this.b.clear();
        }

        @WorkerThread
        public void a(an anVar) {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.c.b()) {
                b(anVar);
                p();
                return;
            }
            this.b.add(anVar);
            if (this.l == null || !this.l.a()) {
                h();
            } else {
                a(this.l);
            }
        }

        @WorkerThread
        public void a(ap apVar) {
            com.google.android.gms.common.internal.c.a(c.this.q);
            this.g.add(apVar);
        }

        public Map<f.a<?>, i> b() {
            return this.h;
        }

        @WorkerThread
        public void b(@NonNull ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.c.a(c.this.q);
            this.c.a();
            a(connectionResult);
        }

        @WorkerThread
        public void c() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            this.l = null;
        }

        @WorkerThread
        public ConnectionResult d() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            return this.l;
        }

        @WorkerThread
        public void e() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.k) {
                h();
            }
        }

        @WorkerThread
        public void f() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.k) {
                o();
                a(c.this.i.a(c.this.h) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.c.a();
            }
        }

        @WorkerThread
        public void g() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.c.b() && this.h.size() == 0) {
                if (this.f.a()) {
                    p();
                } else {
                    this.c.a();
                }
            }
        }

        @WorkerThread
        public void h() {
            com.google.android.gms.common.internal.c.a(c.this.q);
            if (this.c.b() || this.c.c()) {
                return;
            }
            if (this.c.e() && c.this.j != 0) {
                c.this.j = c.this.i.a(c.this.h);
                if (c.this.j != 0) {
                    a(new ConnectionResult(c.this.j, null));
                    return;
                }
            }
            b bVar = new b(this.c, this.e);
            if (this.c.d()) {
                this.j.a(bVar);
            }
            this.c.a(bVar);
        }

        boolean i() {
            return this.c.b();
        }

        public boolean j() {
            return this.c.d();
        }

        public int k() {
            return this.i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements l.f, j.a {
        private final a.f b;
        private final ao<?> c;
        private com.google.android.gms.common.internal.u d = null;
        private Set<Scope> e = null;
        private boolean f = false;

        public b(a.f fVar, ao<?> aoVar) {
            this.b = fVar;
            this.c = aoVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @WorkerThread
        public void a() {
            if (!this.f || this.d == null) {
                return;
            }
            this.b.a(this.d, this.e);
        }

        @Override // com.google.android.gms.common.internal.l.f
        public void a(@NonNull final ConnectionResult connectionResult) {
            c.this.q.post(new Runnable() { // from class: com.google.android.gms.internal.c.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!connectionResult.b()) {
                        ((a) c.this.m.get(b.this.c)).a(connectionResult);
                        return;
                    }
                    b.this.f = true;
                    if (b.this.b.d()) {
                        b.this.a();
                    } else {
                        b.this.b.a(null, Collections.emptySet());
                    }
                }
            });
        }

        @Override // com.google.android.gms.internal.j.a
        @WorkerThread
        public void a(com.google.android.gms.common.internal.u uVar, Set<Scope> set) {
            if (uVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                b(new ConnectionResult(4));
                return;
            }
            this.d = uVar;
            this.e = set;
            a();
        }

        @Override // com.google.android.gms.internal.j.a
        @WorkerThread
        public void b(ConnectionResult connectionResult) {
            ((a) c.this.m.get(this.c)).b(connectionResult);
        }
    }

    private c(Context context, Looper looper, com.google.android.gms.common.b bVar) {
        this.h = context;
        this.q = new Handler(looper, this);
        this.i = bVar;
    }

    public static c a(Context context) {
        c cVar;
        synchronized (f) {
            if (g == null) {
                g = new c(context.getApplicationContext(), d(), com.google.android.gms.common.b.a());
            }
            cVar = g;
        }
        return cVar;
    }

    @WorkerThread
    private void a(int i, ConnectionResult connectionResult) {
        a<?> aVar;
        Iterator<a<?>> it = this.m.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            aVar = it.next();
            if (aVar.k() == i) {
                break;
            }
        }
        if (aVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(76).append("Could not find API instance ").append(i).append(" while trying to fail enqueued calls.").toString(), new Exception());
            return;
        }
        String valueOf = String.valueOf(this.i.b(connectionResult.c()));
        String valueOf2 = String.valueOf(connectionResult.e());
        aVar.a(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(valueOf2).length()).append("Error resolution was canceled by the user, original error message: ").append(valueOf).append(": ").append(valueOf2).toString()));
    }

    @WorkerThread
    private void a(com.google.android.gms.common.api.h<?> hVar) {
        ao<?> a2 = hVar.a();
        if (!this.m.containsKey(a2)) {
            this.m.put(a2, new a<>(hVar));
        }
        a<?> aVar = this.m.get(a2);
        if (aVar.j()) {
            this.p.add(a2);
        }
        aVar.h();
    }

    @WorkerThread
    private void a(ap apVar) {
        for (ao<?> aoVar : apVar.a()) {
            a<?> aVar = this.m.get(aoVar);
            if (aVar == null) {
                apVar.a(aoVar, new ConnectionResult(13));
                return;
            } else if (aVar.i()) {
                apVar.a(aoVar, ConnectionResult.f393a);
            } else if (aVar.d() != null) {
                apVar.a(aoVar, aVar.d());
            } else {
                aVar.a(apVar);
            }
        }
    }

    @WorkerThread
    private void a(g gVar) {
        a<?> aVar = this.m.get(gVar.c.a());
        if (aVar == null) {
            a(gVar.c);
            aVar = this.m.get(gVar.c.a());
        }
        if (!aVar.j() || this.l.get() == gVar.b) {
            aVar.a(gVar.f514a);
            return;
        }
        gVar.f514a.a(f505a);
        aVar.a();
    }

    private static Looper d() {
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    @WorkerThread
    private void e() {
        for (a<?> aVar : this.m.values()) {
            aVar.c();
            aVar.h();
        }
    }

    @WorkerThread
    private void f() {
        for (ao<?> aoVar : this.p) {
            this.m.remove(aoVar).a();
        }
        this.p.clear();
    }

    public void a() {
        this.q.sendMessage(this.q.obtainMessage(2));
    }

    public void a(@NonNull com.google.android.gms.internal.b bVar) {
        synchronized (f) {
            if (this.n != bVar) {
                this.n = bVar;
                this.o.clear();
                this.o.addAll(bVar.d());
            }
        }
    }

    boolean a(ConnectionResult connectionResult, int i) {
        if (connectionResult.a() || this.i.a(connectionResult.c())) {
            this.i.a(this.h, connectionResult, i);
            return true;
        }
        return false;
    }

    public void b(ConnectionResult connectionResult, int i) {
        if (a(connectionResult, i)) {
            return;
        }
        this.q.sendMessage(this.q.obtainMessage(4, i, 0, connectionResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull com.google.android.gms.internal.b bVar) {
        synchronized (f) {
            if (this.n == bVar) {
                this.n = null;
                this.o.clear();
            }
        }
    }

    @Override // android.os.Handler.Callback
    @WorkerThread
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                a((ap) message.obj);
                break;
            case 2:
                e();
                break;
            case 3:
            case 6:
            case 11:
                a((g) message.obj);
                break;
            case 4:
                a(message.arg1, (ConnectionResult) message.obj);
                break;
            case 5:
                a((com.google.android.gms.common.api.h) message.obj);
                break;
            case 7:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).e();
                    break;
                }
                break;
            case 8:
                f();
                break;
            case 9:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).f();
                    break;
                }
                break;
            case 10:
                if (this.m.containsKey(message.obj)) {
                    this.m.get(message.obj).g();
                    break;
                }
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
        return true;
    }
}