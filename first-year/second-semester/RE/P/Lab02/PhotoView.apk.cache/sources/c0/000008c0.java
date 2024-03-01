package com.facebook.share.internal;

import com.facebook.share.model.CameraEffectArguments;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: CameraEffectJSONUtility.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, InterfaceC0014a> f296a = new HashMap();

    /* compiled from: CameraEffectJSONUtility.java */
    /* renamed from: com.facebook.share.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0014a {
        void a(JSONObject jSONObject, String str, Object obj);
    }

    static {
        f296a.put(String.class, new InterfaceC0014a() { // from class: com.facebook.share.internal.a.1
            @Override // com.facebook.share.internal.a.InterfaceC0014a
            public void a(JSONObject jSONObject, String str, Object obj) {
                jSONObject.put(str, obj);
            }
        });
        f296a.put(String[].class, new InterfaceC0014a() { // from class: com.facebook.share.internal.a.2
            @Override // com.facebook.share.internal.a.InterfaceC0014a
            public void a(JSONObject jSONObject, String str, Object obj) {
                JSONArray jSONArray = new JSONArray();
                for (String str2 : (String[]) obj) {
                    jSONArray.put(str2);
                }
                jSONObject.put(str, jSONArray);
            }
        });
        f296a.put(JSONArray.class, new InterfaceC0014a() { // from class: com.facebook.share.internal.a.3
            @Override // com.facebook.share.internal.a.InterfaceC0014a
            public void a(JSONObject jSONObject, String str, Object obj) {
                throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
            }
        });
    }

    public static JSONObject a(CameraEffectArguments cameraEffectArguments) {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : cameraEffectArguments.a()) {
            Object a2 = cameraEffectArguments.a(str);
            if (a2 != null) {
                InterfaceC0014a interfaceC0014a = f296a.get(a2.getClass());
                if (interfaceC0014a == null) {
                    throw new IllegalArgumentException("Unsupported type: " + a2.getClass());
                }
                interfaceC0014a.a(jSONObject, str, a2);
            }
        }
        return jSONObject;
    }
}