package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.squareup.picasso.NetworkRequestHandler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Dispatcher.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final b f776a = new b();
    final Context b;
    final ExecutorService c;
    final Downloader d;
    final Map<String, com.squareup.picasso.c> e;
    final Map<Object, com.squareup.picasso.a> f;
    final Map<Object, com.squareup.picasso.a> g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final d k;
    final u l;
    final List<com.squareup.picasso.c> m;
    final c n;
    final boolean o;
    boolean p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, ExecutorService executorService, Handler handler, Downloader downloader, d dVar, u uVar) {
        this.f776a.start();
        y.a(this.f776a.getLooper());
        this.b = context;
        this.c = executorService;
        this.e = new LinkedHashMap();
        this.f = new WeakHashMap();
        this.g = new WeakHashMap();
        this.h = new HashSet();
        this.i = new a(this.f776a.getLooper(), this);
        this.d = downloader;
        this.j = handler;
        this.k = dVar;
        this.l = uVar;
        this.m = new ArrayList(4);
        this.p = y.d(this.b);
        this.o = y.b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.n = new c(this);
        this.n.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.squareup.picasso.a aVar) {
        this.i.sendMessage(this.i.obtainMessage(1, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(com.squareup.picasso.a aVar) {
        this.i.sendMessage(this.i.obtainMessage(2, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.squareup.picasso.c cVar) {
        this.i.sendMessage(this.i.obtainMessage(4, cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(com.squareup.picasso.c cVar) {
        this.i.sendMessageDelayed(this.i.obtainMessage(5, cVar), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(com.squareup.picasso.c cVar) {
        this.i.sendMessage(this.i.obtainMessage(6, cVar));
    }

    void a(NetworkInfo networkInfo) {
        this.i.sendMessage(this.i.obtainMessage(9, networkInfo));
    }

    void a(boolean z) {
        this.i.sendMessage(this.i.obtainMessage(10, z ? 1 : 0, 0));
    }

    void c(com.squareup.picasso.a aVar) {
        a(aVar, true);
    }

    void a(com.squareup.picasso.a aVar, boolean z) {
        if (this.h.contains(aVar.l())) {
            this.g.put(aVar.d(), aVar);
            if (aVar.j().l) {
                y.a("Dispatcher", "paused", aVar.b.a(), "because tag '" + aVar.l() + "' is paused");
                return;
            }
            return;
        }
        com.squareup.picasso.c cVar = this.e.get(aVar.e());
        if (cVar != null) {
            cVar.a(aVar);
        } else if (this.c.isShutdown()) {
            if (aVar.j().l) {
                y.a("Dispatcher", "ignored", aVar.b.a(), "because shut down");
            }
        } else {
            com.squareup.picasso.c a2 = com.squareup.picasso.c.a(aVar.j(), this, this.k, this.l, aVar);
            a2.n = this.c.submit(a2);
            this.e.put(aVar.e(), a2);
            if (z) {
                this.f.remove(aVar.d());
            }
            if (aVar.j().l) {
                y.a("Dispatcher", "enqueued", aVar.b.a());
            }
        }
    }

    void d(com.squareup.picasso.a aVar) {
        String e = aVar.e();
        com.squareup.picasso.c cVar = this.e.get(e);
        if (cVar != null) {
            cVar.b(aVar);
            if (cVar.b()) {
                this.e.remove(e);
                if (aVar.j().l) {
                    y.a("Dispatcher", "canceled", aVar.c().a());
                }
            }
        }
        if (this.h.contains(aVar.l())) {
            this.g.remove(aVar.d());
            if (aVar.j().l) {
                y.a("Dispatcher", "canceled", aVar.c().a(), "because paused request got canceled");
            }
        }
        com.squareup.picasso.a remove = this.f.remove(aVar.d());
        if (remove != null && remove.j().l) {
            y.a("Dispatcher", "canceled", remove.c().a(), "from replaying");
        }
    }

    void a(Object obj) {
        if (this.h.add(obj)) {
            Iterator<com.squareup.picasso.c> it = this.e.values().iterator();
            while (it.hasNext()) {
                com.squareup.picasso.c next = it.next();
                boolean z = next.j().l;
                com.squareup.picasso.a i = next.i();
                List<com.squareup.picasso.a> k = next.k();
                boolean z2 = (k == null || k.isEmpty()) ? false : true;
                if (i != null || z2) {
                    if (i != null && i.l().equals(obj)) {
                        next.b(i);
                        this.g.put(i.d(), i);
                        if (z) {
                            y.a("Dispatcher", "paused", i.b.a(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = k.size() - 1; size >= 0; size--) {
                            com.squareup.picasso.a aVar = k.get(size);
                            if (aVar.l().equals(obj)) {
                                next.b(aVar);
                                this.g.put(aVar.d(), aVar);
                                if (z) {
                                    y.a("Dispatcher", "paused", aVar.b.a(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.b()) {
                        it.remove();
                        if (z) {
                            y.a("Dispatcher", "canceled", y.a(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void b(Object obj) {
        if (this.h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<com.squareup.picasso.a> it = this.g.values().iterator();
            while (it.hasNext()) {
                com.squareup.picasso.a next = it.next();
                if (next.l().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                this.j.sendMessage(this.j.obtainMessage(13, arrayList));
            }
        }
    }

    void d(com.squareup.picasso.c cVar) {
        NetworkInfo networkInfo;
        boolean z = true;
        if (!cVar.c()) {
            if (this.c.isShutdown()) {
                a(cVar, false);
                return;
            }
            if (!this.o) {
                networkInfo = null;
            } else {
                networkInfo = ((ConnectivityManager) y.a(this.b, "connectivity")).getActiveNetworkInfo();
            }
            boolean z2 = networkInfo != null && networkInfo.isConnected();
            boolean a2 = cVar.a(this.p, networkInfo);
            boolean d = cVar.d();
            if (!a2) {
                if (!this.o || !d) {
                    z = false;
                }
                a(cVar, z);
                if (z) {
                    f(cVar);
                }
            } else if (!this.o || z2) {
                if (cVar.j().l) {
                    y.a("Dispatcher", "retrying", y.a(cVar));
                }
                if (cVar.l() instanceof NetworkRequestHandler.ContentLengthException) {
                    cVar.i |= NetworkPolicy.NO_CACHE.index;
                }
                cVar.n = this.c.submit(cVar);
            } else {
                a(cVar, d);
                if (d) {
                    f(cVar);
                }
            }
        }
    }

    void e(com.squareup.picasso.c cVar) {
        if (MemoryPolicy.shouldWriteToMemoryCache(cVar.g())) {
            this.k.a(cVar.f(), cVar.e());
        }
        this.e.remove(cVar.f());
        g(cVar);
        if (cVar.j().l) {
            y.a("Dispatcher", "batched", y.a(cVar), "for completion");
        }
    }

    void a() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        this.j.sendMessage(this.j.obtainMessage(8, arrayList));
        a((List<com.squareup.picasso.c>) arrayList);
    }

    void a(com.squareup.picasso.c cVar, boolean z) {
        if (cVar.j().l) {
            y.a("Dispatcher", "batched", y.a(cVar), "for error" + (z ? " (will replay)" : ""));
        }
        this.e.remove(cVar.f());
        g(cVar);
    }

    void b(boolean z) {
        this.p = z;
    }

    void b(NetworkInfo networkInfo) {
        if (this.c instanceof p) {
            ((p) this.c).a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            b();
        }
    }

    private void b() {
        if (!this.f.isEmpty()) {
            Iterator<com.squareup.picasso.a> it = this.f.values().iterator();
            while (it.hasNext()) {
                com.squareup.picasso.a next = it.next();
                it.remove();
                if (next.j().l) {
                    y.a("Dispatcher", "replaying", next.c().a());
                }
                a(next, false);
            }
        }
    }

    private void f(com.squareup.picasso.c cVar) {
        com.squareup.picasso.a i = cVar.i();
        if (i != null) {
            e(i);
        }
        List<com.squareup.picasso.a> k = cVar.k();
        if (k != null) {
            int size = k.size();
            for (int i2 = 0; i2 < size; i2++) {
                e(k.get(i2));
            }
        }
    }

    private void e(com.squareup.picasso.a aVar) {
        Object d = aVar.d();
        if (d != null) {
            aVar.k = true;
            this.f.put(d, aVar);
        }
    }

    private void g(com.squareup.picasso.c cVar) {
        if (!cVar.c()) {
            this.m.add(cVar);
            if (!this.i.hasMessages(7)) {
                this.i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    private void a(List<com.squareup.picasso.c> list) {
        if (list != null && !list.isEmpty() && list.get(0).j().l) {
            StringBuilder sb = new StringBuilder();
            for (com.squareup.picasso.c cVar : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(y.a(cVar));
            }
            y.a("Dispatcher", "delivered", sb.toString());
        }
    }

    /* compiled from: Dispatcher.java */
    /* loaded from: classes.dex */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final i f777a;

        public a(Looper looper, i iVar) {
            super(looper);
            this.f777a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 1:
                    this.f777a.c((com.squareup.picasso.a) message.obj);
                    return;
                case 2:
                    this.f777a.d((com.squareup.picasso.a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    Picasso.f757a.post(new Runnable() { // from class: com.squareup.picasso.i.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unknown handler message received: " + message.what);
                        }
                    });
                    return;
                case 4:
                    this.f777a.e((com.squareup.picasso.c) message.obj);
                    return;
                case 5:
                    this.f777a.d((com.squareup.picasso.c) message.obj);
                    return;
                case 6:
                    this.f777a.a((com.squareup.picasso.c) message.obj, false);
                    return;
                case 7:
                    this.f777a.a();
                    return;
                case 9:
                    this.f777a.b((NetworkInfo) message.obj);
                    return;
                case 10:
                    this.f777a.b(message.arg1 == 1);
                    return;
                case 11:
                    this.f777a.a(message.obj);
                    return;
                case 12:
                    this.f777a.b(message.obj);
                    return;
            }
        }
    }

    /* compiled from: Dispatcher.java */
    /* loaded from: classes.dex */
    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* compiled from: Dispatcher.java */
    /* loaded from: classes.dex */
    static class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final i f779a;

        c(i iVar) {
            this.f779a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f779a.o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f779a.b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        this.f779a.a(intent.getBooleanExtra("state", false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f779a.a(((ConnectivityManager) y.a(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }
}