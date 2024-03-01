package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: BundleJSONConverter.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, a> f177a = new HashMap();

    /* compiled from: BundleJSONConverter.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(Bundle bundle, String str, Object obj);

        void a(JSONObject jSONObject, String str, Object obj);
    }

    static {
        f177a.put(Boolean.class, new a() { // from class: com.facebook.internal.c.1
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f177a.put(Integer.class, new a() { // from class: com.facebook.internal.c.2
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                bundle.putInt(str, ((Integer) obj).intValue());
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f177a.put(Long.class, new a() { // from class: com.facebook.internal.c.3
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                bundle.putLong(str, ((Long) obj).longValue());
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f177a.put(Double.class, new a() { // from class: com.facebook.internal.c.4
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f177a.put(String.class, new a() { // from class: com.facebook.internal.c.5
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                bundle.putString(str, (String) obj);
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f177a.put(String[].class, new a() { // from class: com.facebook.internal.c.6
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : (String[]) obj) {
                    jSONArray.put(str2);
                }
                jSONObject.put(str, jSONArray);
            }
        });
        f177a.put(JSONArray.class, new a() { // from class: com.facebook.internal.c.7
            @Override // com.facebook.internal.c.a
            public void a(Bundle bundle, String str, Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList<String> arrayList = new ArrayList<>();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < jSONArray.length()) {
                        Object obj2 = jSONArray.get(i2);
                        if (obj2 instanceof String) {
                            arrayList.add((String) obj2);
                            i = i2 + 1;
                        } else {
                            throw new IllegalArgumentException("Unexpected type in an array: " + obj2.getClass());
                        }
                    } else {
                        bundle.putStringArrayList(str, arrayList);
                        return;
                    }
                }
            }

            @Override // com.facebook.internal.c.a
            public void a(JSONObject jSONObject, String str, Object obj) {
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    public static JSONObject a(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    for (String str2 : (List) obj) {
                        jSONArray.put(str2);
                    }
                    jSONObject.put(str, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(str, a((Bundle) obj));
                } else {
                    a aVar = f177a.get(obj.getClass());
                    if (aVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    aVar.a(jSONObject, str, obj);
                }
            }
        }
        return jSONObject;
    }

    public static Bundle a(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, a((JSONObject) obj));
                } else {
                    a aVar = f177a.get(obj.getClass());
                    if (aVar == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    aVar.a(bundle, next, obj);
                }
            }
        }
        return bundle;
    }
}