package com.facebook;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.internal.ac;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccessTokenCache.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f97a;
    private final C0011a b;
    private h c;

    a(SharedPreferences sharedPreferences, C0011a c0011a) {
        this.f97a = sharedPreferences;
        this.b = c0011a;
    }

    public a() {
        this(d.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new C0011a());
    }

    public AccessToken a() {
        if (c()) {
            return d();
        }
        if (!e()) {
            return null;
        }
        AccessToken f = f();
        if (f != null) {
            a(f);
            g().b();
            return f;
        }
        return f;
    }

    public void a(AccessToken accessToken) {
        ac.a(accessToken, "accessToken");
        try {
            this.f97a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", accessToken.k().toString()).apply();
        } catch (JSONException e) {
        }
    }

    public void b() {
        this.f97a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
        if (e()) {
            g().b();
        }
    }

    private boolean c() {
        return this.f97a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
    }

    private AccessToken d() {
        String string = this.f97a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
        if (string != null) {
            try {
                return AccessToken.a(new JSONObject(string));
            } catch (JSONException e) {
                return null;
            }
        }
        return null;
    }

    private boolean e() {
        return d.c();
    }

    private AccessToken f() {
        Bundle a2 = g().a();
        if (a2 == null || !h.a(a2)) {
            return null;
        }
        return AccessToken.a(a2);
    }

    private h g() {
        if (this.c == null) {
            synchronized (this) {
                if (this.c == null) {
                    this.c = this.b.a();
                }
            }
        }
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccessTokenCache.java */
    /* renamed from: com.facebook.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0011a {
        C0011a() {
        }

        public h a() {
            return new h(d.f());
        }
    }
}