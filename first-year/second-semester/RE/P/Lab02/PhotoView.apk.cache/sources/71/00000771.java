package com.facebook.appevents.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.u;
import java.util.Locale;

/* compiled from: SessionLogger.java */
/* loaded from: classes.dex */
class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String f128a = g.class.getCanonicalName();
    private static final long[] b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};

    g() {
    }

    public static void a(Context context, String str, h hVar, String str2) {
        String hVar2 = hVar != null ? hVar.toString() : "Unclassified";
        Bundle bundle = new Bundle();
        bundle.putString("fb_mobile_launch_source", hVar2);
        e eVar = new e(str, str2, null);
        eVar.a("fb_mobile_activate_app", bundle);
        if (AppEventsLogger.a() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
            eVar.b();
        }
    }

    public static void a(Context context, String str, f fVar, String str2) {
        Long valueOf = Long.valueOf(fVar.f() - fVar.c().longValue());
        if (valueOf.longValue() < 0) {
            valueOf = 0L;
            a();
        }
        Long valueOf2 = Long.valueOf(fVar.h());
        if (valueOf2.longValue() < 0) {
            a();
            valueOf2 = 0L;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", fVar.d());
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(a(valueOf.longValue()))));
        h i = fVar.i();
        bundle.putString("fb_mobile_launch_source", i != null ? i.toString() : "Unclassified");
        bundle.putLong("_logTime", fVar.c().longValue() / 1000);
        new e(str, str2, null).a("fb_mobile_deactivate_app", valueOf2.longValue() / 1000, bundle);
    }

    private static void a() {
        u.a(LoggingBehavior.APP_EVENTS, f128a, "Clock skew detected");
    }

    private static int a(long j) {
        int i = 0;
        while (i < b.length && b[i] < j) {
            i++;
        }
        return i;
    }
}