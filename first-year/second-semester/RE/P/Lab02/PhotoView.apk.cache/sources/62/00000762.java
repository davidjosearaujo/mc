package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.ab;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionEventsState.java */
/* loaded from: classes.dex */
public class f {
    private int c;
    private com.facebook.internal.b d;
    private String e;

    /* renamed from: a  reason: collision with root package name */
    private List<AppEvent> f118a = new ArrayList();
    private List<AppEvent> b = new ArrayList();
    private final int f = 1000;

    public f(com.facebook.internal.b bVar, String str) {
        this.d = bVar;
        this.e = str;
    }

    public synchronized void a(AppEvent appEvent) {
        if (this.f118a.size() + this.b.size() >= 1000) {
            this.c++;
        } else {
            this.f118a.add(appEvent);
        }
    }

    public synchronized int a() {
        return this.f118a.size();
    }

    public synchronized void a(boolean z) {
        if (z) {
            this.f118a.addAll(this.b);
        }
        this.b.clear();
        this.c = 0;
    }

    public int a(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.c;
            this.b.addAll(this.f118a);
            this.f118a.clear();
            JSONArray jSONArray = new JSONArray();
            for (AppEvent appEvent : this.b) {
                if (appEvent.isChecksumValid()) {
                    if (z || !appEvent.getIsImplicit()) {
                        jSONArray.put(appEvent.getJSONObject());
                    }
                } else {
                    ab.b("Event with invalid checksum: %s", appEvent.toString());
                }
            }
            if (jSONArray.length() == 0) {
                return 0;
            }
            a(graphRequest, context, i, jSONArray, z2);
            return jSONArray.length();
        }
    }

    public synchronized List<AppEvent> b() {
        List<AppEvent> list;
        list = this.f118a;
        this.f118a = new ArrayList();
        return list;
    }

    private void a(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            jSONObject = AppEventsLoggerUtility.a(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.d, this.e, z, context);
            if (this.c > 0) {
                jSONObject.put("num_skipped_events", i);
            }
        } catch (JSONException e) {
            jSONObject = new JSONObject();
        }
        graphRequest.a(jSONObject);
        Bundle e2 = graphRequest.e();
        if (e2 == null) {
            e2 = new Bundle();
        }
        String jSONArray2 = jSONArray.toString();
        if (jSONArray2 != null) {
            e2.putByteArray("custom_events_file", a(jSONArray2));
            graphRequest.a((Object) jSONArray2);
        }
        graphRequest.a(e2);
    }

    private byte[] a(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            ab.a("Encoding exception: ", (Exception) e);
            return null;
        }
    }
}