package com.facebook.internal;

import com.facebook.FacebookRequestError;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: FacebookRequestErrorClassification.java */
/* loaded from: classes.dex */
public final class h {
    private static h g;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f181a;
    private final Map<Integer, Set<Integer>> b;
    private final Map<Integer, Set<Integer>> c;
    private final String d;
    private final String e;
    private final String f;

    h(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.f181a = map;
        this.b = map2;
        this.c = map3;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public String a(FacebookRequestError.Category category) {
        switch (category) {
            case OTHER:
                return this.d;
            case LOGIN_RECOVERABLE:
                return this.f;
            case TRANSIENT:
                return this.e;
            default:
                return null;
        }
    }

    public FacebookRequestError.Category a(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        if (this.f181a != null && this.f181a.containsKey(Integer.valueOf(i)) && ((set3 = this.f181a.get(Integer.valueOf(i))) == null || set3.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.Category.OTHER;
        }
        if (this.c != null && this.c.containsKey(Integer.valueOf(i)) && ((set2 = this.c.get(Integer.valueOf(i))) == null || set2.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.Category.LOGIN_RECOVERABLE;
        }
        if (this.b != null && this.b.containsKey(Integer.valueOf(i)) && ((set = this.b.get(Integer.valueOf(i))) == null || set.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        return FacebookRequestError.Category.OTHER;
    }

    public static synchronized h a() {
        h hVar;
        synchronized (h.class) {
            if (g == null) {
                g = b();
            }
            hVar = g;
        }
        return hVar;
    }

    private static h b() {
        return new h(null, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.FacebookRequestErrorClassification$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                put(2, null);
                put(4, null);
                put(9, null);
                put(17, null);
                put(341, null);
            }
        }, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.FacebookRequestErrorClassification$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                put(102, null);
                put(190, null);
            }
        }, null, null, null);
    }

    private static Map<Integer, Set<Integer>> a(JSONObject jSONObject) {
        int optInt;
        HashSet hashSet;
        JSONArray optJSONArray = jSONObject.optJSONArray("items");
        if (optJSONArray.length() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null && (optInt = optJSONObject.optInt("code")) != 0) {
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                    hashSet = null;
                } else {
                    HashSet hashSet2 = new HashSet();
                    for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                        int optInt2 = optJSONArray2.optInt(i2);
                        if (optInt2 != 0) {
                            hashSet2.add(Integer.valueOf(optInt2));
                        }
                    }
                    hashSet = hashSet2;
                }
                hashMap.put(Integer.valueOf(optInt), hashSet);
            }
        }
        return hashMap;
    }

    public static h a(JSONArray jSONArray) {
        String optString;
        if (jSONArray == null) {
            return null;
        }
        String str = null;
        String str2 = null;
        String str3 = null;
        Map<Integer, Set<Integer>> map = null;
        Map<Integer, Set<Integer>> map2 = null;
        Map<Integer, Set<Integer>> map3 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                if (optString.equalsIgnoreCase("other")) {
                    str3 = optJSONObject.optString("recovery_message", null);
                    map3 = a(optJSONObject);
                } else if (optString.equalsIgnoreCase("transient")) {
                    str2 = optJSONObject.optString("recovery_message", null);
                    map2 = a(optJSONObject);
                } else if (optString.equalsIgnoreCase("login_recoverable")) {
                    str = optJSONObject.optString("recovery_message", null);
                    map = a(optJSONObject);
                }
            }
        }
        return new h(map3, map2, map, str3, str2, str);
    }
}