package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.util.e;
import com.google.android.gms.common.util.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends zza implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public static e f385a = f.b();
    private static Comparator<Scope> n = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInAccount.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Scope scope, Scope scope2) {
            return scope.a().compareTo(scope2.a());
        }
    };
    final int b;
    List<Scope> c;
    private String d;
    private String e;
    private String f;
    private String g;
    private Uri h;
    private String i;
    private long j;
    private String k;
    private String l;
    private String m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.b = i;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = uri;
        this.i = str5;
        this.j = j;
        this.k = str6;
        this.c = list;
        this.l = str7;
        this.m = str8;
    }

    @Nullable
    public static GoogleSignInAccount a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString(NotificationCompat.CATEGORY_EMAIL, null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).b(jSONObject.optString("serverAuthCode", null));
    }

    public static GoogleSignInAccount a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(f385a.a() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), c.a(str7), new ArrayList((Collection) c.a(set)), str5, str6);
    }

    private JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (a() != null) {
                jSONObject.put("id", a());
            }
            if (b() != null) {
                jSONObject.put("tokenId", b());
            }
            if (c() != null) {
                jSONObject.put(NotificationCompat.CATEGORY_EMAIL, c());
            }
            if (d() != null) {
                jSONObject.put("displayName", d());
            }
            if (e() != null) {
                jSONObject.put("givenName", e());
            }
            if (f() != null) {
                jSONObject.put("familyName", f());
            }
            if (g() != null) {
                jSONObject.put("photoUrl", g().toString());
            }
            if (h() != null) {
                jSONObject.put("serverAuthCode", h());
            }
            jSONObject.put("expirationTime", this.j);
            jSONObject.put("obfuscatedIdentifier", j());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.c, n);
            for (Scope scope : this.c) {
                jSONArray.put(scope.a());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public String a() {
        return this.d;
    }

    public GoogleSignInAccount b(String str) {
        this.i = str;
        return this;
    }

    @Nullable
    public String b() {
        return this.e;
    }

    @Nullable
    public String c() {
        return this.f;
    }

    @Nullable
    public String d() {
        return this.g;
    }

    @Nullable
    public String e() {
        return this.l;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GoogleSignInAccount) {
            return ((GoogleSignInAccount) obj).k().equals(k());
        }
        return false;
    }

    @Nullable
    public String f() {
        return this.m;
    }

    @Nullable
    public Uri g() {
        return this.h;
    }

    @Nullable
    public String h() {
        return this.i;
    }

    public int hashCode() {
        return k().hashCode();
    }

    public long i() {
        return this.j;
    }

    @NonNull
    public String j() {
        return this.k;
    }

    public String k() {
        return l().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}