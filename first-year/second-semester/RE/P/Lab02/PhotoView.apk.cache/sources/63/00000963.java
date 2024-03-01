package com.google.android.gms.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.internal.am;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    d f381a;
    am b;
    boolean c;
    Object d = new Object();
    b e;
    final long f;
    private final Context g;

    /* renamed from: com.google.android.gms.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0017a {

        /* renamed from: a  reason: collision with root package name */
        private final String f383a;
        private final boolean b;

        public C0017a(String str, boolean z) {
            this.f383a = str;
            this.b = z;
        }

        public String a() {
            return this.f383a;
        }

        public boolean b() {
            return this.b;
        }

        public String toString() {
            String str = this.f383a;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.b).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        CountDownLatch f384a = new CountDownLatch(1);
        boolean b = false;
        private WeakReference<a> c;
        private long d;

        public b(a aVar, long j) {
            this.c = new WeakReference<>(aVar);
            this.d = j;
            start();
        }

        private void c() {
            a aVar = this.c.get();
            if (aVar != null) {
                aVar.b();
                this.b = true;
            }
        }

        public void a() {
            this.f384a.countDown();
        }

        public boolean b() {
            return this.b;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.f384a.await(this.d, TimeUnit.MILLISECONDS)) {
                    return;
                }
                c();
            } catch (InterruptedException e) {
                c();
            }
        }
    }

    public a(Context context, long j, boolean z) {
        c.a(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            this.g = applicationContext != null ? applicationContext : context;
        } else {
            this.g = context;
        }
        this.c = false;
        this.f = j;
    }

    static d a(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (f.b().a(context)) {
                case 0:
                case 2:
                    d dVar = new d();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (com.google.android.gms.common.stats.a.a().a(context, intent, dVar, 1)) {
                            return dVar;
                        }
                        throw new IOException("Connection failure");
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    static am a(Context context, d dVar) {
        try {
            return am.a.a(dVar.a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.a.a.a$1] */
    private void a(C0017a c0017a, boolean z, float f, Throwable th) {
        if (Math.random() > f) {
            return;
        }
        final String uri = a(c0017a, z, th).toString();
        new Thread(this) { // from class: com.google.android.gms.a.a.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                new com.google.android.gms.a.a.b().a(uri);
            }
        }.start();
    }

    public static C0017a b(Context context) {
        float f = 0.0f;
        boolean z = false;
        try {
            Context f2 = h.f(context);
            if (f2 != null) {
                SharedPreferences sharedPreferences = f2.getSharedPreferences("google_ads_flags", 1);
                z = sharedPreferences.getBoolean("gads:ad_id_app_context:enabled", false);
                f = sharedPreferences.getFloat("gads:ad_id_app_context:ping_ratio", 0.0f);
            }
        } catch (Exception e) {
            Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", e);
        }
        a aVar = new a(context, -1L, z);
        try {
            aVar.a(false);
            C0017a a2 = aVar.a();
            aVar.a(a2, z, f, null);
            return a2;
        } catch (Throwable th) {
            try {
                aVar.a(null, z, f, th);
                return null;
            } finally {
                aVar.b();
            }
        }
    }

    private void c() {
        synchronized (this.d) {
            if (this.e != null) {
                this.e.a();
                try {
                    this.e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.f > 0) {
                this.e = new b(this, this.f);
            }
        }
    }

    Uri a(C0017a c0017a, boolean z, Throwable th) {
        Bundle bundle = new Bundle();
        bundle.putString("app_context", z ? "1" : "0");
        if (c0017a != null) {
            bundle.putString("limit_ad_tracking", c0017a.b() ? "1" : "0");
        }
        if (c0017a != null && c0017a.a() != null) {
            bundle.putString("ad_id_size", Integer.toString(c0017a.a().length()));
        }
        if (th != null) {
            bundle.putString("error", th.getClass().getName());
        }
        Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : bundle.keySet()) {
            buildUpon.appendQueryParameter(str, bundle.getString(str));
        }
        return buildUpon.build();
    }

    public C0017a a() {
        C0017a c0017a;
        c.b("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.c) {
                synchronized (this.d) {
                    if (this.e == null || !this.e.b()) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    a(false);
                    if (!this.c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            c.a(this.f381a);
            c.a(this.b);
            try {
                c0017a = new C0017a(this.b.a(), this.b.a(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        c();
        return c0017a;
    }

    protected void a(boolean z) {
        c.b("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.c) {
                b();
            }
            this.f381a = a(this.g);
            this.b = a(this.g, this.f381a);
            this.c = true;
            if (z) {
                c();
            }
        }
    }

    public void b() {
        c.b("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.g == null || this.f381a == null) {
                return;
            }
            try {
                if (this.c) {
                    com.google.android.gms.common.stats.a.a().a(this.g, this.f381a);
                }
            } catch (IllegalArgumentException e) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
            }
            this.c = false;
            this.b = null;
            this.f381a = null;
        }
    }

    protected void finalize() {
        b();
        super.finalize();
    }
}