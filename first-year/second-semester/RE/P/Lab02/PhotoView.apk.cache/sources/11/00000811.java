package com.facebook.internal;

import android.util.Log;
import com.facebook.LoggingBehavior;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Logger.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, String> f215a = new HashMap<>();
    private final LoggingBehavior b;
    private final String c;
    private StringBuilder d;
    private int e = 3;

    public static synchronized void a(String str, String str2) {
        synchronized (u.class) {
            f215a.put(str, str2);
        }
    }

    public static synchronized void a(String str) {
        synchronized (u.class) {
            if (!com.facebook.d.a(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                a(str, "ACCESS_TOKEN_REMOVED");
            }
        }
    }

    public static void a(LoggingBehavior loggingBehavior, String str, String str2) {
        a(loggingBehavior, 3, str, str2);
    }

    public static void a(LoggingBehavior loggingBehavior, String str, String str2, Object... objArr) {
        if (com.facebook.d.a(loggingBehavior)) {
            a(loggingBehavior, 3, str, String.format(str2, objArr));
        }
    }

    public static void a(LoggingBehavior loggingBehavior, int i, String str, String str2, Object... objArr) {
        if (com.facebook.d.a(loggingBehavior)) {
            a(loggingBehavior, i, str, String.format(str2, objArr));
        }
    }

    public static void a(LoggingBehavior loggingBehavior, int i, String str, String str2) {
        if (com.facebook.d.a(loggingBehavior)) {
            String d = d(str2);
            if (!str.startsWith("FacebookSDK.")) {
                str = "FacebookSDK." + str;
            }
            Log.println(i, str, d);
            if (loggingBehavior == LoggingBehavior.DEVELOPER_ERRORS) {
                new Exception().printStackTrace();
            }
        }
    }

    private static synchronized String d(String str) {
        synchronized (u.class) {
            for (Map.Entry<String, String> entry : f215a.entrySet()) {
                str = str.replace(entry.getKey(), entry.getValue());
            }
        }
        return str;
    }

    public u(LoggingBehavior loggingBehavior, String str) {
        ac.a(str, "tag");
        this.b = loggingBehavior;
        this.c = "FacebookSDK." + str;
        this.d = new StringBuilder();
    }

    public void a() {
        b(this.d.toString());
        this.d = new StringBuilder();
    }

    public void b(String str) {
        a(this.b, this.e, this.c, str);
    }

    public void c(String str) {
        if (b()) {
            this.d.append(str);
        }
    }

    public void a(String str, Object... objArr) {
        if (b()) {
            this.d.append(String.format(str, objArr));
        }
    }

    public void a(String str, Object obj) {
        a("  %s:\t%s\n", str, obj);
    }

    private boolean b() {
        return com.facebook.d.a(this.b);
    }
}