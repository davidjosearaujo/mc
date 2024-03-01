package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s extends r implements Handler.Callback {
    private final Context b;
    private final Handler c;

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<a, b> f448a = new HashMap<>();
    private final com.google.android.gms.common.stats.a d = com.google.android.gms.common.stats.a.a();
    private final long e = 5000;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f449a;
        private final String b;
        private final ComponentName c = null;

        public a(String str, String str2) {
            this.f449a = c.a(str);
            this.b = c.a(str2);
        }

        public Intent a() {
            return this.f449a != null ? new Intent(this.f449a).setPackage(this.b) : new Intent().setComponent(this.c);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return com.google.android.gms.common.internal.b.a(this.f449a, aVar.f449a) && com.google.android.gms.common.internal.b.a(this.c, aVar.c);
            }
            return false;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.b.a(this.f449a, this.c);
        }

        public String toString() {
            return this.f449a == null ? this.c.flattenToString() : this.f449a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b {
        private final a b = new a();
        private final Set<ServiceConnection> c = new HashSet();
        private int d = 2;
        private boolean e;
        private IBinder f;
        private final a g;
        private ComponentName h;

        /* loaded from: classes.dex */
        public class a implements ServiceConnection {
            public a() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                synchronized (s.this.f448a) {
                    b.this.f = iBinder;
                    b.this.h = componentName;
                    for (ServiceConnection serviceConnection : b.this.c) {
                        serviceConnection.onServiceConnected(componentName, iBinder);
                    }
                    b.this.d = 1;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (s.this.f448a) {
                    b.this.f = null;
                    b.this.h = componentName;
                    for (ServiceConnection serviceConnection : b.this.c) {
                        serviceConnection.onServiceDisconnected(componentName);
                    }
                    b.this.d = 2;
                }
            }
        }

        public b(a aVar) {
            this.g = aVar;
        }

        public void a(ServiceConnection serviceConnection, String str) {
            s.this.d.a(s.this.b, serviceConnection, str, this.g.a());
            this.c.add(serviceConnection);
        }

        @TargetApi(14)
        public void a(String str) {
            this.d = 3;
            this.e = s.this.d.a(s.this.b, str, this.g.a(), this.b, 129);
            if (this.e) {
                return;
            }
            this.d = 2;
            try {
                s.this.d.a(s.this.b, this.b);
            } catch (IllegalArgumentException e) {
            }
        }

        public boolean a() {
            return this.e;
        }

        public boolean a(ServiceConnection serviceConnection) {
            return this.c.contains(serviceConnection);
        }

        public int b() {
            return this.d;
        }

        public void b(ServiceConnection serviceConnection, String str) {
            s.this.d.b(s.this.b, serviceConnection);
            this.c.remove(serviceConnection);
        }

        public void b(String str) {
            s.this.d.a(s.this.b, this.b);
            this.e = false;
            this.d = 2;
        }

        public boolean c() {
            return this.c.isEmpty();
        }

        public IBinder d() {
            return this.f;
        }

        public ComponentName e() {
            return this.h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Context context) {
        this.b = context.getApplicationContext();
        this.c = new Handler(context.getMainLooper(), this);
    }

    private boolean a(a aVar, ServiceConnection serviceConnection, String str) {
        boolean a2;
        c.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f448a) {
            b bVar = this.f448a.get(aVar);
            if (bVar != null) {
                this.c.removeMessages(0, aVar);
                if (!bVar.a(serviceConnection)) {
                    bVar.a(serviceConnection, str);
                    switch (bVar.b()) {
                        case 1:
                            serviceConnection.onServiceConnected(bVar.e(), bVar.d());
                            break;
                        case 2:
                            bVar.a(str);
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                bVar = new b(aVar);
                bVar.a(serviceConnection, str);
                bVar.a(str);
                this.f448a.put(aVar, bVar);
            }
            a2 = bVar.a();
        }
        return a2;
    }

    private void b(a aVar, ServiceConnection serviceConnection, String str) {
        c.a(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f448a) {
            b bVar = this.f448a.get(aVar);
            if (bVar == null) {
                String valueOf = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (!bVar.a(serviceConnection)) {
                String valueOf2 = String.valueOf(aVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            } else {
                bVar.b(serviceConnection, str);
                if (bVar.c()) {
                    this.c.sendMessageDelayed(this.c.obtainMessage(0, aVar), this.e);
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.r
    public boolean a(String str, String str2, ServiceConnection serviceConnection, String str3) {
        return a(new a(str, str2), serviceConnection, str3);
    }

    @Override // com.google.android.gms.common.internal.r
    public void b(String str, String str2, ServiceConnection serviceConnection, String str3) {
        b(new a(str, str2), serviceConnection, str3);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                a aVar = (a) message.obj;
                synchronized (this.f448a) {
                    b bVar = this.f448a.get(aVar);
                    if (bVar != null && bVar.c()) {
                        if (bVar.a()) {
                            bVar.b("GmsClientSupervisor");
                        }
                        this.f448a.remove(aVar);
                    }
                }
                return true;
            default:
                return false;
        }
    }
}