package com.facebook.appevents;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.internal.l;
import com.facebook.internal.u;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* loaded from: classes.dex */
public class AppEventsLogger {
    private static ScheduledThreadPoolExecutor d;
    private static String g;
    private static String h;
    private static boolean i;
    private static boolean j;
    private static String k;
    private final String b;
    private final AccessTokenAppIdPair c;

    /* renamed from: a  reason: collision with root package name */
    private static final String f101a = AppEventsLogger.class.getCanonicalName();
    private static FlushBehavior e = FlushBehavior.AUTO;
    private static Object f = new Object();

    /* loaded from: classes.dex */
    public enum FlushBehavior {
        AUTO,
        EXPLICIT_ONLY
    }

    public static void a(Application application, String str) {
        if (!com.facebook.d.a()) {
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }
        com.facebook.appevents.a.a();
        if (str == null) {
            str = com.facebook.d.j();
        }
        com.facebook.d.a(application, str);
        com.facebook.appevents.internal.a.a(application, str);
    }

    @Deprecated
    public static void a(Context context) {
        if (com.facebook.appevents.internal.a.a()) {
            Log.w(f101a, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
            return;
        }
        com.facebook.d.a(context);
        a(context, ab.a(context));
    }

    @Deprecated
    public static void a(Context context, String str) {
        if (com.facebook.appevents.internal.a.a()) {
            Log.w(f101a, "activateApp events are being logged automatically. There's no need to call activateApp explicitly, this is safe to remove.");
        } else if (context == null || str == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        } else {
            com.facebook.appevents.a.a();
            if (context instanceof Activity) {
                a((Activity) context);
            } else {
                g();
                Log.d(AppEventsLogger.class.getName(), "To set source application the context of activateApp must be an instance of Activity");
            }
            com.facebook.d.a(context, str);
            AppEventsLogger appEventsLogger = new AppEventsLogger(context, str, (AccessToken) null);
            final long currentTimeMillis = System.currentTimeMillis();
            final String f2 = f();
            d.execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.1
                @Override // java.lang.Runnable
                public void run() {
                    AppEventsLogger.this.a(currentTimeMillis, f2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2, String str) {
        a.a(com.facebook.d.f(), this.c, this, j2, str);
    }

    public static void b(Context context, String str) {
        d.execute(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.2
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle = new Bundle();
                try {
                    Class.forName("com.facebook.core.Core");
                    bundle.putInt("core_lib_included", 1);
                } catch (ClassNotFoundException e2) {
                }
                try {
                    Class.forName("com.facebook.login.Login");
                    bundle.putInt("login_lib_included", 1);
                } catch (ClassNotFoundException e3) {
                }
                try {
                    Class.forName("com.facebook.share.Share");
                    bundle.putInt("share_lib_included", 1);
                } catch (ClassNotFoundException e4) {
                }
                try {
                    Class.forName("com.facebook.places.Places");
                    bundle.putInt("places_lib_included", 1);
                } catch (ClassNotFoundException e5) {
                }
                try {
                    Class.forName("com.facebook.messenger.Messenger");
                    bundle.putInt("messenger_lib_included", 1);
                } catch (ClassNotFoundException e6) {
                }
                try {
                    Class.forName("com.facebook.applinks.AppLinks");
                    bundle.putInt("applinks_lib_included", 1);
                } catch (ClassNotFoundException e7) {
                }
                try {
                    Class.forName("com.facebook.all.All");
                    bundle.putInt("all_lib_included", 1);
                } catch (ClassNotFoundException e8) {
                }
                AppEventsLogger.this.a("fb_sdk_initialize", (Double) null, bundle);
            }
        });
    }

    public static AppEventsLogger b(Context context) {
        return new AppEventsLogger(context, (String) null, (AccessToken) null);
    }

    public static AppEventsLogger c(Context context, String str) {
        return new AppEventsLogger(context, str, (AccessToken) null);
    }

    public static FlushBehavior a() {
        FlushBehavior flushBehavior;
        synchronized (f) {
            flushBehavior = e;
        }
        return flushBehavior;
    }

    public void a(String str, Bundle bundle) {
        a(str, null, bundle, false, com.facebook.appevents.internal.a.b());
    }

    public void a(String str, double d2, Bundle bundle) {
        a(str, Double.valueOf(d2), bundle, false, com.facebook.appevents.internal.a.b());
    }

    public void b() {
        c.a(FlushReason.EXPLICIT);
    }

    public static void c() {
        c.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        String str;
        synchronized (f) {
            str = k;
        }
        return str;
    }

    public static String e() {
        return com.facebook.appevents.a.b();
    }

    public void a(String str, Double d2, Bundle bundle) {
        a(str, d2, bundle, true, com.facebook.appevents.internal.a.b());
    }

    private AppEventsLogger(Context context, String str, AccessToken accessToken) {
        this(ab.c(context), str, accessToken);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppEventsLogger(String str, String str2, AccessToken accessToken) {
        ac.a();
        this.b = str;
        accessToken = accessToken == null ? AccessToken.a() : accessToken;
        if (accessToken != null && (str2 == null || str2.equals(accessToken.h()))) {
            this.c = new AccessTokenAppIdPair(accessToken);
        } else {
            this.c = new AccessTokenAppIdPair(null, str2 == null ? ab.a(com.facebook.d.f()) : str2);
        }
        k();
    }

    private static void k() {
        synchronized (f) {
            if (d == null) {
                d = new ScheduledThreadPoolExecutor(1);
                d.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.3
                    @Override // java.lang.Runnable
                    public void run() {
                        HashSet<String> hashSet = new HashSet();
                        for (AccessTokenAppIdPair accessTokenAppIdPair : c.b()) {
                            hashSet.add(accessTokenAppIdPair.getApplicationId());
                        }
                        for (String str : hashSet) {
                            l.a(str, true);
                        }
                    }
                }, 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    private void a(String str, Double d2, Bundle bundle, boolean z, @Nullable UUID uuid) {
        try {
            a(com.facebook.d.f(), new AppEvent(this.b, str, d2, bundle, z, uuid), this.c);
        } catch (FacebookException e2) {
            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "Invalid app event: %s", e2.toString());
        } catch (JSONException e3) {
            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e3.toString());
        }
    }

    private static void a(Context context, AppEvent appEvent, AccessTokenAppIdPair accessTokenAppIdPair) {
        c.a(accessTokenAppIdPair, appEvent);
        if (!appEvent.getIsImplicit() && !j) {
            if (appEvent.getName() == "fb_mobile_activate_app") {
                j = true;
            } else {
                u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }
    }

    private static void a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            String packageName = callingActivity.getPackageName();
            if (packageName.equals(activity.getPackageName())) {
                g();
                return;
            }
            h = packageName;
        }
        Intent intent = activity.getIntent();
        if (intent == null || intent.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
            g();
            return;
        }
        Bundle a2 = a.a.a(intent);
        if (a2 == null) {
            g();
            return;
        }
        i = true;
        Bundle bundle = a2.getBundle("referer_app_link");
        if (bundle == null) {
            h = null;
            return;
        }
        h = bundle.getString("package");
        intent.putExtra("_fbSourceApplicationHasBeenSet", true);
    }

    static String f() {
        String str = "Unclassified";
        if (i) {
            str = "Applink";
        }
        if (h != null) {
            return str + "(" + h + ")";
        }
        return str;
    }

    static void g() {
        h = null;
        i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor h() {
        if (d == null) {
            k();
        }
        return d;
    }

    public static String c(Context context) {
        if (g == null) {
            synchronized (f) {
                if (g == null) {
                    g = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (g == null) {
                        g = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", g).apply();
                    }
                }
            }
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {
        private static Map<AccessTokenAppIdPair, FacebookTimeSpentData> d;

        /* renamed from: a  reason: collision with root package name */
        private static final Object f105a = new Object();
        private static boolean b = false;
        private static boolean c = false;
        private static final Runnable e = new Runnable() { // from class: com.facebook.appevents.AppEventsLogger.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.a(com.facebook.d.f());
            }
        };

        private static void b(Context context) {
            ObjectInputStream objectInputStream;
            Exception e2;
            ObjectInputStream objectInputStream2 = null;
            synchronized (f105a) {
                try {
                    if (!c) {
                        try {
                            objectInputStream = new ObjectInputStream(context.openFileInput("AppEventsLogger.persistedsessioninfo"));
                        } catch (FileNotFoundException e3) {
                        } catch (Exception e4) {
                            objectInputStream = null;
                            e2 = e4;
                        } catch (Throwable th) {
                            objectInputStream = null;
                            th = th;
                            ab.a((Closeable) objectInputStream);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (d == null) {
                                d = new HashMap();
                            }
                            c = true;
                            b = false;
                            throw th;
                        }
                        try {
                            d = (HashMap) objectInputStream.readObject();
                            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info loaded");
                            ab.a((Closeable) objectInputStream);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (d == null) {
                                d = new HashMap();
                            }
                            c = true;
                            b = false;
                        } catch (FileNotFoundException e5) {
                            objectInputStream2 = objectInputStream;
                            ab.a((Closeable) objectInputStream2);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (d == null) {
                                d = new HashMap();
                            }
                            c = true;
                            b = false;
                        } catch (Exception e6) {
                            e2 = e6;
                            Log.w(AppEventsLogger.f101a, "Got unexpected exception restoring app session info: " + e2.toString());
                            ab.a((Closeable) objectInputStream);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (d == null) {
                                d = new HashMap();
                            }
                            c = true;
                            b = false;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        static void a(Context context) {
            ObjectOutputStream objectOutputStream;
            synchronized (f105a) {
                if (b) {
                    try {
                        objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedsessioninfo", 0)));
                    } catch (Exception e2) {
                        e = e2;
                        objectOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = null;
                        ab.a(objectOutputStream);
                        throw th;
                    }
                    try {
                        try {
                            objectOutputStream.writeObject(d);
                            b = false;
                            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info saved");
                            ab.a(objectOutputStream);
                        } catch (Throwable th2) {
                            th = th2;
                            ab.a(objectOutputStream);
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        Log.w(AppEventsLogger.f101a, "Got unexpected exception while writing app session info: " + e.toString());
                        ab.a(objectOutputStream);
                    }
                }
            }
        }

        static void a(Context context, AccessTokenAppIdPair accessTokenAppIdPair, AppEventsLogger appEventsLogger, long j, String str) {
            synchronized (f105a) {
                a(context, accessTokenAppIdPair).onResume(appEventsLogger, j, str);
                a();
            }
        }

        private static FacebookTimeSpentData a(Context context, AccessTokenAppIdPair accessTokenAppIdPair) {
            b(context);
            FacebookTimeSpentData facebookTimeSpentData = d.get(accessTokenAppIdPair);
            if (facebookTimeSpentData == null) {
                FacebookTimeSpentData facebookTimeSpentData2 = new FacebookTimeSpentData();
                d.put(accessTokenAppIdPair, facebookTimeSpentData2);
                return facebookTimeSpentData2;
            }
            return facebookTimeSpentData;
        }

        private static void a() {
            if (!b) {
                b = true;
                AppEventsLogger.d.schedule(e, 30L, TimeUnit.SECONDS);
            }
        }
    }
}