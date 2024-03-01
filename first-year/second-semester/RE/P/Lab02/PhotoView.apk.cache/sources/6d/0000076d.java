package com.facebook.appevents.internal;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.ac;
import com.facebook.internal.k;
import com.facebook.internal.l;

/* compiled from: AutomaticAnalyticsLogger.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f126a = c.class.getCanonicalName();

    public static void a() {
        Context f = com.facebook.d.f();
        String j = com.facebook.d.j();
        boolean m = com.facebook.d.m();
        ac.a(f, "context");
        if (m) {
            if (f instanceof Application) {
                AppEventsLogger.a((Application) f, j);
            } else {
                Log.w(f126a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
            }
        }
    }

    public static void a(String str, long j) {
        Context f = com.facebook.d.f();
        String j2 = com.facebook.d.j();
        ac.a(f, "context");
        k a2 = l.a(j2, false);
        if (a2 != null && a2.f() && j > 0) {
            AppEventsLogger b = AppEventsLogger.b(f);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            b.a("fb_aa_time_spent_on_view", j, bundle);
        }
    }
}