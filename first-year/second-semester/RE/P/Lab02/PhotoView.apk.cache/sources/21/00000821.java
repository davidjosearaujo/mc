package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* compiled from: ProfileInformationCache.java */
/* loaded from: classes.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentHashMap<String, JSONObject> f223a = new ConcurrentHashMap<>();

    public static JSONObject a(String str) {
        return f223a.get(str);
    }

    public static void a(String str, JSONObject jSONObject) {
        f223a.put(str, jSONObject);
    }
}