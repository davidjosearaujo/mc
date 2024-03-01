package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.g;
import com.facebook.internal.k;
import com.facebook.internal.l;
import com.facebook.internal.u;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppEventQueue.java */
/* loaded from: classes.dex */
public class c {
    private static ScheduledFuture d;

    /* renamed from: a  reason: collision with root package name */
    private static final String f111a = c.class.getName();
    private static volatile b b = new b();
    private static final ScheduledExecutorService c = Executors.newSingleThreadScheduledExecutor();
    private static final Runnable e = new Runnable() { // from class: com.facebook.appevents.c.1
        @Override // java.lang.Runnable
        public void run() {
            ScheduledFuture unused = c.d = null;
            if (AppEventsLogger.a() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                c.b(FlushReason.TIMER);
            }
        }
    };

    c() {
    }

    public static void a() {
        c.execute(new Runnable() { // from class: com.facebook.appevents.c.2
            @Override // java.lang.Runnable
            public void run() {
                d.a(c.b);
                b unused = c.b = new b();
            }
        });
    }

    public static void a(final FlushReason flushReason) {
        c.execute(new Runnable() { // from class: com.facebook.appevents.c.3
            @Override // java.lang.Runnable
            public void run() {
                c.b(FlushReason.this);
            }
        });
    }

    public static void a(final AccessTokenAppIdPair accessTokenAppIdPair, final AppEvent appEvent) {
        c.execute(new Runnable() { // from class: com.facebook.appevents.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.b.a(AccessTokenAppIdPair.this, appEvent);
                if (AppEventsLogger.a() == AppEventsLogger.FlushBehavior.EXPLICIT_ONLY || c.b.b() <= 100) {
                    if (c.d == null) {
                        ScheduledFuture unused = c.d = c.c.schedule(c.e, 15L, TimeUnit.SECONDS);
                        return;
                    }
                    return;
                }
                c.b(FlushReason.EVENT_THRESHOLD);
            }
        });
    }

    public static Set<AccessTokenAppIdPair> b() {
        return b.a();
    }

    static void b(FlushReason flushReason) {
        b.a(d.a());
        try {
            e a2 = a(flushReason, b);
            if (a2 != null) {
                Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", a2.f117a);
                intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", a2.b);
                LocalBroadcastManager.getInstance(com.facebook.d.f()).sendBroadcast(intent);
            }
        } catch (Exception e2) {
            Log.w(f111a, "Caught unexpected exception while flushing app events: ", e2);
        }
    }

    private static e a(FlushReason flushReason, b bVar) {
        e eVar = new e();
        boolean b2 = com.facebook.d.b(com.facebook.d.f());
        ArrayList<GraphRequest> arrayList = new ArrayList();
        for (AccessTokenAppIdPair accessTokenAppIdPair : bVar.a()) {
            GraphRequest a2 = a(accessTokenAppIdPair, bVar.a(accessTokenAppIdPair), b2, eVar);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.size() > 0) {
            u.a(LoggingBehavior.APP_EVENTS, f111a, "Flushing %d events due to %s.", Integer.valueOf(eVar.f117a), flushReason.toString());
            for (GraphRequest graphRequest : arrayList) {
                graphRequest.i();
            }
            return eVar;
        }
        return null;
    }

    private static GraphRequest a(final AccessTokenAppIdPair accessTokenAppIdPair, final f fVar, boolean z, final e eVar) {
        String applicationId = accessTokenAppIdPair.getApplicationId();
        k a2 = l.a(applicationId, false);
        final GraphRequest a3 = GraphRequest.a((AccessToken) null, String.format("%s/activities", applicationId), (JSONObject) null, (GraphRequest.b) null);
        Bundle e2 = a3.e();
        if (e2 == null) {
            e2 = new Bundle();
        }
        e2.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
        String d2 = AppEventsLogger.d();
        if (d2 != null) {
            e2.putString("device_token", d2);
        }
        a3.a(e2);
        int a4 = fVar.a(a3, com.facebook.d.f(), a2 != null ? a2.a() : false, z);
        if (a4 == 0) {
            return null;
        }
        eVar.f117a = a4 + eVar.f117a;
        a3.a(new GraphRequest.b() { // from class: com.facebook.appevents.c.5
            @Override // com.facebook.GraphRequest.b
            public void a(g gVar) {
                c.b(AccessTokenAppIdPair.this, a3, gVar, fVar, eVar);
            }
        });
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, g gVar, final f fVar, e eVar) {
        String str;
        FlushResult flushResult;
        String str2;
        FacebookRequestError a2 = gVar.a();
        FlushResult flushResult2 = FlushResult.SUCCESS;
        if (a2 == null) {
            str = "Success";
            flushResult = flushResult2;
        } else if (a2.b() == -1) {
            str = "Failed: No Connectivity";
            flushResult = FlushResult.NO_CONNECTIVITY;
        } else {
            str = String.format("Failed:\n  Response: %s\n  Error %s", gVar.toString(), a2.toString());
            flushResult = FlushResult.SERVER_ERROR;
        }
        if (com.facebook.d.a(LoggingBehavior.APP_EVENTS)) {
            try {
                str2 = new JSONArray((String) graphRequest.h()).toString(2);
            } catch (JSONException e2) {
                str2 = "<Can't encode events for debug logging>";
            }
            u.a(LoggingBehavior.APP_EVENTS, f111a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.a().toString(), str, str2);
        }
        fVar.a(a2 != null);
        if (flushResult == FlushResult.NO_CONNECTIVITY) {
            com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.appevents.c.6
                @Override // java.lang.Runnable
                public void run() {
                    d.a(AccessTokenAppIdPair.this, fVar);
                }
            });
        }
        if (flushResult != FlushResult.SUCCESS && eVar.b != FlushResult.NO_CONNECTIVITY) {
            eVar.b = flushResult;
        }
    }
}