package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: FetchedAppSettings.java */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private boolean f186a;
    private String b;
    private boolean c;
    private boolean d;
    private int e;
    private EnumSet<SmartLoginOption> f;
    private Map<String, Map<String, a>> g;
    private boolean h;
    private h i;
    private String j;
    private String k;
    private boolean l;

    public k(boolean z, String str, boolean z2, boolean z3, int i, EnumSet<SmartLoginOption> enumSet, Map<String, Map<String, a>> map, boolean z4, h hVar, String str2, String str3, boolean z5) {
        this.f186a = z;
        this.b = str;
        this.c = z2;
        this.d = z3;
        this.g = map;
        this.i = hVar;
        this.e = i;
        this.h = z4;
        this.f = enumSet;
        this.j = str2;
        this.k = str3;
        this.l = z5;
    }

    public boolean a() {
        return this.f186a;
    }

    public String b() {
        return this.b;
    }

    public boolean c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    public boolean f() {
        return this.h;
    }

    public EnumSet<SmartLoginOption> g() {
        return this.f;
    }

    public Map<String, Map<String, a>> h() {
        return this.g;
    }

    public h i() {
        return this.i;
    }

    /* compiled from: FetchedAppSettings.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f187a;
        private String b;
        private Uri c;
        private int[] d;

        public static a a(JSONObject jSONObject) {
            String optString = jSONObject.optString("name");
            if (ab.a(optString)) {
                return null;
            }
            String[] split = optString.split("\\|");
            if (split.length == 2) {
                String str = split[0];
                String str2 = split[1];
                if (ab.a(str) || ab.a(str2)) {
                    return null;
                }
                String optString2 = jSONObject.optString("url");
                return new a(str, str2, ab.a(optString2) ? null : Uri.parse(optString2), a(jSONObject.optJSONArray("versions")));
            }
            return null;
        }

        private static int[] a(JSONArray jSONArray) {
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                int optInt = jSONArray.optInt(i, -1);
                if (optInt == -1) {
                    String optString = jSONArray.optString(i);
                    if (!ab.a(optString)) {
                        try {
                            optInt = Integer.parseInt(optString);
                        } catch (NumberFormatException e) {
                            ab.a("FacebookSDK", (Exception) e);
                            optInt = -1;
                        }
                    }
                }
                iArr[i] = optInt;
            }
            return iArr;
        }

        private a(String str, String str2, Uri uri, int[] iArr) {
            this.f187a = str;
            this.b = str2;
            this.c = uri;
            this.d = iArr;
        }

        public String a() {
            return this.f187a;
        }

        public String b() {
            return this.b;
        }

        public Uri c() {
            return this.c;
        }

        public int[] d() {
            return this.d;
        }
    }

    public static a a(String str, String str2, String str3) {
        Map<String, a> map;
        if (ab.a(str2) || ab.a(str3)) {
            return null;
        }
        k a2 = l.a(str);
        if (a2 == null || (map = a2.h().get(str2)) == null) {
            return null;
        }
        return map.get(str3);
    }
}