package com.facebook.appevents.internal;

import android.content.Context;
import android.support.v4.app.NotificationCompat;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.ab;
import com.facebook.internal.u;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AppEventsLoggerUtility {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<GraphAPIActivityType, String> f119a = new HashMap<GraphAPIActivityType, String>() { // from class: com.facebook.appevents.internal.AppEventsLoggerUtility.1
        {
            put(GraphAPIActivityType.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL");
            put(GraphAPIActivityType.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS");
        }
    };

    /* loaded from: classes.dex */
    public enum GraphAPIActivityType {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    public static JSONObject a(GraphAPIActivityType graphAPIActivityType, com.facebook.internal.b bVar, String str, boolean z, Context context) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, f119a.get(graphAPIActivityType));
        String e = AppEventsLogger.e();
        if (e != null) {
            jSONObject.put("app_user_id", e);
        }
        ab.a(jSONObject, bVar, str, z);
        try {
            ab.a(jSONObject, context);
        } catch (Exception e2) {
            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e2.toString());
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}