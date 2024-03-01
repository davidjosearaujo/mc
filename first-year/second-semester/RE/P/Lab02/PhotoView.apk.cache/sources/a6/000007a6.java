package com.facebook;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.internal.t;
import com.facebook.internal.w;
import com.facebook.internal.z;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

/* compiled from: FacebookSdk.java */
/* loaded from: classes.dex */
public final class d {
    private static Executor c;
    private static volatile String d;
    private static volatile String e;
    private static volatile String f;
    private static volatile Boolean g;
    private static t<File> l;
    private static Context m;

    /* renamed from: a  reason: collision with root package name */
    private static final String f138a = d.class.getCanonicalName();
    private static final HashSet<LoggingBehavior> b = new HashSet<>(Arrays.asList(LoggingBehavior.DEVELOPER_ERRORS));
    private static volatile String h = "facebook.com";
    private static AtomicLong i = new AtomicLong(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH);
    private static volatile boolean j = false;
    private static boolean k = false;
    private static int n = 64206;
    private static final Object o = new Object();
    private static String p = z.d();
    private static final BlockingQueue<Runnable> q = new LinkedBlockingQueue(10);
    private static final ThreadFactory r = new ThreadFactory() { // from class: com.facebook.d.1

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f139a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "FacebookSdk #" + this.f139a.incrementAndGet());
        }
    };
    private static Boolean s = false;

    /* compiled from: FacebookSdk.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    @Deprecated
    public static synchronized void a(Context context) {
        synchronized (d.class) {
            a(context, (a) null);
        }
    }

    @Deprecated
    public static synchronized void a(final Context context, final a aVar) {
        synchronized (d.class) {
            if (s.booleanValue()) {
                if (aVar != null) {
                    aVar.a();
                }
            } else {
                ac.a(context, "applicationContext");
                ac.b(context, false);
                ac.a(context, false);
                m = context.getApplicationContext();
                c(m);
                if (ab.a(d)) {
                    throw new FacebookException("A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk.");
                }
                if ((m instanceof Application) && g.booleanValue()) {
                    com.facebook.appevents.internal.a.a((Application) m, d);
                }
                s = true;
                com.facebook.internal.l.a();
                w.b();
                BoltsMeasurementEventListener.a(m);
                l = new t<>(new Callable<File>() { // from class: com.facebook.d.2
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a */
                    public File call() {
                        return d.m.getCacheDir();
                    }
                });
                d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.d.3
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a */
                    public Void call() {
                        b.a().c();
                        j.a().c();
                        if (AccessToken.a() != null && Profile.a() == null) {
                            Profile.b();
                        }
                        if (a.this != null) {
                            a.this.a();
                        }
                        AppEventsLogger.b(d.m, d.d);
                        AppEventsLogger.b(context.getApplicationContext()).b();
                        return null;
                    }
                }));
            }
        }
    }

    public static synchronized boolean a() {
        boolean booleanValue;
        synchronized (d.class) {
            booleanValue = s.booleanValue();
        }
        return booleanValue;
    }

    public static boolean a(LoggingBehavior loggingBehavior) {
        boolean z;
        synchronized (b) {
            z = b() && b.contains(loggingBehavior);
        }
        return z;
    }

    public static boolean b() {
        return j;
    }

    public static boolean c() {
        return k;
    }

    public static Executor d() {
        synchronized (o) {
            if (c == null) {
                c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return c;
    }

    public static String e() {
        return h;
    }

    public static Context f() {
        ac.a();
        return m;
    }

    public static String g() {
        return p;
    }

    public static void a(Context context, final String str) {
        final Context applicationContext = context.getApplicationContext();
        d().execute(new Runnable() { // from class: com.facebook.d.4
            @Override // java.lang.Runnable
            public void run() {
                d.b(applicationContext, str);
            }
        });
    }

    static void b(Context context, String str) {
        try {
            if (context == null || str == null) {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            com.facebook.internal.b a2 = com.facebook.internal.b.a(context);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
            String str2 = str + "ping";
            long j2 = sharedPreferences.getLong(str2, 0L);
            try {
                GraphRequest a3 = GraphRequest.a((AccessToken) null, String.format("%s/activities", str), AppEventsLoggerUtility.a(AppEventsLoggerUtility.GraphAPIActivityType.MOBILE_INSTALL_EVENT, a2, AppEventsLogger.c(context), b(context), context), (GraphRequest.b) null);
                if (j2 == 0) {
                    a3.i();
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putLong(str2, System.currentTimeMillis());
                    edit.apply();
                }
            } catch (JSONException e2) {
                throw new FacebookException("An error occurred while publishing install.", e2);
            }
        } catch (Exception e3) {
            ab.a("Facebook-publish", e3);
        }
    }

    public static String h() {
        return "4.31.0";
    }

    public static boolean b(Context context) {
        ac.a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static long i() {
        ac.a();
        return i.get();
    }

    static void c(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (d == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                d = str.substring(2);
                            } else {
                                d = str;
                            }
                        } else if (obj instanceof Integer) {
                            throw new FacebookException("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (e == null) {
                        e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f == null) {
                        f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (n == 64206) {
                        n = applicationInfo.metaData.getInt("com.facebook.sdk.CallbackOffset", 64206);
                    }
                    if (g == null) {
                        g = Boolean.valueOf(applicationInfo.metaData.getBoolean("com.facebook.sdk.AutoLogAppEventsEnabled", true));
                    }
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
    }

    public static String d(Context context) {
        PackageManager packageManager;
        ac.a();
        if (context == null || (packageManager = context.getPackageManager()) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length == 0) {
                return null;
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(packageInfo.signatures[0].toByteArray());
                return Base64.encodeToString(messageDigest.digest(), 9);
            } catch (NoSuchAlgorithmException e2) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            return null;
        }
    }

    public static String j() {
        ac.a();
        return d;
    }

    public static String k() {
        ac.a();
        return e;
    }

    public static String l() {
        ac.a();
        return f;
    }

    public static boolean m() {
        ac.a();
        return g.booleanValue();
    }

    public static File n() {
        ac.a();
        return l.a();
    }

    public static int o() {
        ac.a();
        return n;
    }

    public static boolean a(int i2) {
        return i2 >= n && i2 < n + 100;
    }
}