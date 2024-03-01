package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.k;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FetchedAppSettingsManager.java */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String f188a = l.class.getCanonicalName();
    private static final String[] b = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "gdpv4_chrome_custom_tabs_enabled", "android_dialog_configs", "android_sdk_error_categories", "app_events_session_timeout", "app_events_feature_bitmask", "seamless_login", "smart_login_bookmark_icon_url", "smart_login_menu_icon_url"};
    private static Map<String, k> c = new ConcurrentHashMap();
    private static AtomicBoolean d = new AtomicBoolean(false);

    public static void a() {
        final Context f = com.facebook.d.f();
        final String j = com.facebook.d.j();
        boolean compareAndSet = d.compareAndSet(false, true);
        if (!ab.a(j) && !c.containsKey(j) && compareAndSet) {
            final String format = String.format("com.facebook.internal.APP_SETTINGS.%s", j);
            com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.internal.l.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject;
                    SharedPreferences sharedPreferences = f.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                    String string = sharedPreferences.getString(format, null);
                    if (!ab.a(string)) {
                        try {
                            jSONObject = new JSONObject(string);
                        } catch (JSONException e) {
                            ab.a("FacebookSDK", (Exception) e);
                            jSONObject = null;
                        }
                        if (jSONObject != null) {
                            l.b(j, jSONObject);
                        }
                    }
                    JSONObject c2 = l.c(j);
                    if (c2 != null) {
                        l.b(j, c2);
                        sharedPreferences.edit().putString(format, c2.toString()).apply();
                    }
                    com.facebook.appevents.internal.c.a();
                    l.b(f);
                    l.d.set(false);
                }
            });
        }
    }

    public static k a(String str) {
        if (str != null) {
            return c.get(str);
        }
        return null;
    }

    public static k a(String str, boolean z) {
        if (!z && c.containsKey(str)) {
            return c.get(str);
        }
        JSONObject c2 = c(str);
        if (c2 == null) {
            return null;
        }
        return b(str, c2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static k b(String str, JSONObject jSONObject) {
        h a2;
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        if (optJSONArray == null) {
            a2 = h.a();
        } else {
            a2 = h.a(optJSONArray);
        }
        int optInt = jSONObject.optInt("app_events_feature_bitmask", 0);
        k kVar = new k(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), jSONObject.optBoolean("gdpv4_chrome_custom_tabs_enabled", false), jSONObject.optInt("app_events_session_timeout", com.facebook.appevents.internal.d.a()), SmartLoginOption.parseOptions(jSONObject.optLong("seamless_login")), a(jSONObject.optJSONObject("android_dialog_configs")), (optInt & 8) != 0, a2, jSONObject.optString("smart_login_bookmark_icon_url"), jSONObject.optString("smart_login_menu_icon_url"), (optInt & 16) != 0);
        c.put(str, kVar);
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", b));
        GraphRequest a2 = GraphRequest.a((AccessToken) null, str, (GraphRequest.b) null);
        a2.a(true);
        a2.a(bundle);
        return a2.i().b();
    }

    private static Map<String, Map<String, k.a>> a(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= optJSONArray.length()) {
                    break;
                }
                k.a a2 = k.a.a(optJSONArray.optJSONObject(i2));
                if (a2 != null) {
                    String a3 = a2.a();
                    Map map = (Map) hashMap.get(a3);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(a3, map);
                    }
                    map.put(a2.b(), a2);
                }
                i = i2 + 1;
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Context context) {
        CallbackManagerImpl.a(CallbackManagerImpl.RequestCodeOffset.InAppPurchase.toRequestCode(), new CallbackManagerImpl.a() { // from class: com.facebook.internal.l.2
        });
    }
}