package com.facebook;

import android.content.SharedPreferences;
import com.facebook.internal.ac;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProfileCache.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f146a = d.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Profile a() {
        String string = this.f146a.getString("com.facebook.ProfileManager.CachedProfile", null);
        if (string != null) {
            try {
                return new Profile(new JSONObject(string));
            } catch (JSONException e) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Profile profile) {
        ac.a(profile, "profile");
        JSONObject d = profile.d();
        if (d != null) {
            this.f146a.edit().putString("com.facebook.ProfileManager.CachedProfile", d.toString()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f146a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
    }
}