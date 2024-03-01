package com.facebook.internal;

import android.os.Bundle;
import com.facebook.LoggingBehavior;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ServerProtocol.java */
/* loaded from: classes.dex */
public final class z {
    private static final String c = z.class.getName();

    /* renamed from: a  reason: collision with root package name */
    public static final Collection<String> f224a = ab.a("service_disabled", "AndroidAuthKillSwitchException");
    public static final Collection<String> b = ab.a("access_denied", "OAuthAccessDeniedException");

    public static final String a() {
        return String.format("m.%s", com.facebook.d.e());
    }

    public static final String b() {
        return String.format("https://graph.%s", com.facebook.d.e());
    }

    public static final String c() {
        return String.format("https://graph-video.%s", com.facebook.d.e());
    }

    public static final String d() {
        return "v2.11";
    }

    public static Bundle a(String str, int i, Bundle bundle) {
        JSONObject a2;
        JSONObject a3;
        String d = com.facebook.d.d(com.facebook.d.f());
        if (ab.a(d)) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("android_key_hash", d);
        bundle2.putString("app_id", com.facebook.d.j());
        bundle2.putInt("version", i);
        bundle2.putString("display", "touch");
        Bundle bundle3 = new Bundle();
        bundle3.putString("action_id", str);
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            a2 = c.a(bundle3);
            a3 = c.a(bundle);
        } catch (JSONException e) {
            u.a(LoggingBehavior.DEVELOPER_ERRORS, 6, c, "Error creating Url -- " + e);
            bundle2 = null;
        }
        if (a2 == null || a3 == null) {
            return null;
        }
        bundle2.putString("bridge_args", a2.toString());
        bundle2.putString("method_args", a3.toString());
        return bundle2;
    }
}