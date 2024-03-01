package com.facebook.appevents.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.internal.h;
import com.facebook.internal.ab;
import com.facebook.internal.k;
import com.facebook.internal.l;
import com.facebook.internal.u;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ActivityLifecycleTracker.java */
/* loaded from: classes.dex */
public class a {
    private static volatile ScheduledFuture c;
    private static volatile f f;
    private static String h;
    private static long i;

    /* renamed from: a  reason: collision with root package name */
    private static final String f121a = a.class.getCanonicalName();
    private static final ScheduledExecutorService b = Executors.newSingleThreadScheduledExecutor();
    private static final Object d = new Object();
    private static AtomicInteger e = new AtomicInteger(0);
    private static AtomicBoolean g = new AtomicBoolean(false);

    static /* synthetic */ int f() {
        return k();
    }

    public static void a(Application application, String str) {
        if (g.compareAndSet(false, true)) {
            h = str;
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.internal.a.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityCreated");
                    b.b();
                    a.a(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityStarted");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityResumed");
                    b.b();
                    a.b(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityPaused");
                    b.b();
                    a.d(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityStopped");
                    AppEventsLogger.c();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivitySaveInstanceState");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    u.a(LoggingBehavior.APP_EVENTS, a.f121a, "onActivityDestroyed");
                }
            });
        }
    }

    public static boolean a() {
        return g.get();
    }

    public static UUID b() {
        if (f != null) {
            return f.g();
        }
        return null;
    }

    public static void a(Activity activity) {
        final long currentTimeMillis = System.currentTimeMillis();
        final Context applicationContext = activity.getApplicationContext();
        final String c2 = ab.c(activity);
        final h a2 = h.a.a(activity);
        b.execute(new Runnable() { // from class: com.facebook.appevents.internal.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.f == null) {
                    f a3 = f.a();
                    if (a3 != null) {
                        g.a(applicationContext, c2, a3, a.h);
                    }
                    f unused = a.f = new f(Long.valueOf(currentTimeMillis), null);
                    a.f.a(a2);
                    g.a(applicationContext, c2, a2, a.h);
                }
            }
        });
    }

    public static void b(Activity activity) {
        e.incrementAndGet();
        l();
        final long currentTimeMillis = System.currentTimeMillis();
        i = currentTimeMillis;
        final Context applicationContext = activity.getApplicationContext();
        final String c2 = ab.c(activity);
        b.execute(new Runnable() { // from class: com.facebook.appevents.internal.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (a.f == null) {
                    f unused = a.f = new f(Long.valueOf(currentTimeMillis), null);
                    g.a(applicationContext, c2, (h) null, a.h);
                } else if (a.f.c() != null) {
                    long longValue = currentTimeMillis - a.f.c().longValue();
                    if (longValue > a.f() * 1000) {
                        g.a(applicationContext, c2, a.f, a.h);
                        g.a(applicationContext, c2, (h) null, a.h);
                        f unused2 = a.f = new f(Long.valueOf(currentTimeMillis), null);
                    } else if (longValue > 1000) {
                        a.f.e();
                    }
                }
                a.f.a(Long.valueOf(currentTimeMillis));
                a.f.j();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Activity activity) {
        if (e.decrementAndGet() < 0) {
            e.set(0);
            Log.w(f121a, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application's onCreate method");
        }
        l();
        final long currentTimeMillis = System.currentTimeMillis();
        final Context applicationContext = activity.getApplicationContext();
        final String c2 = ab.c(activity);
        b.execute(new Runnable() { // from class: com.facebook.appevents.internal.a.4
            @Override // java.lang.Runnable
            public void run() {
                if (a.f == null) {
                    f unused = a.f = new f(Long.valueOf(currentTimeMillis), null);
                }
                a.f.a(Long.valueOf(currentTimeMillis));
                if (a.e.get() <= 0) {
                    Runnable runnable = new Runnable() { // from class: com.facebook.appevents.internal.a.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.e.get() <= 0) {
                                g.a(applicationContext, c2, a.f, a.h);
                                f.b();
                                f unused2 = a.f = null;
                            }
                            synchronized (a.d) {
                                ScheduledFuture unused3 = a.c = null;
                            }
                        }
                    };
                    synchronized (a.d) {
                        ScheduledFuture unused2 = a.c = a.b.schedule(runnable, a.f(), TimeUnit.SECONDS);
                    }
                }
                long j = a.i;
                c.a(c2, j > 0 ? (currentTimeMillis - j) / 1000 : 0L);
                a.f.j();
            }
        });
    }

    private static int k() {
        k a2 = l.a(com.facebook.d.j());
        return a2 == null ? d.a() : a2.e();
    }

    private static void l() {
        synchronized (d) {
            if (c != null) {
                c.cancel(false);
            }
            c = null;
        }
    }
}