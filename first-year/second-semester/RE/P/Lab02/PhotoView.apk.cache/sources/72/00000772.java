package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SourceApplicationInfo.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f129a;
    private boolean b;

    private h(String str, boolean z) {
        this.f129a = str;
        this.b = z;
    }

    public static h a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f());
        if (defaultSharedPreferences.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage")) {
            return new h(defaultSharedPreferences.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false));
        }
        return null;
    }

    public static void b() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f()).edit();
        edit.remove("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage");
        edit.remove("com.facebook.appevents.SourceApplicationInfo.openedByApplink");
        edit.apply();
    }

    public String toString() {
        String str = "Unclassified";
        if (this.b) {
            str = "Applink";
        }
        if (this.f129a != null) {
            return str + "(" + this.f129a + ")";
        }
        return str;
    }

    public void c() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.facebook.d.f()).edit();
        edit.putString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", this.f129a);
        edit.putBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", this.b);
        edit.apply();
    }

    /* compiled from: SourceApplicationInfo.java */
    /* loaded from: classes.dex */
    public static class a {
        public static h a(Activity activity) {
            boolean z = false;
            String str = "";
            ComponentName callingActivity = activity.getCallingActivity();
            if (callingActivity != null) {
                str = callingActivity.getPackageName();
                if (str.equals(activity.getPackageName())) {
                    return null;
                }
            }
            Intent intent = activity.getIntent();
            if (intent != null && !intent.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
                intent.putExtra("_fbSourceApplicationHasBeenSet", true);
                Bundle a2 = a.a.a(intent);
                if (a2 != null) {
                    Bundle bundle = a2.getBundle("referer_app_link");
                    if (bundle != null) {
                        str = bundle.getString("package");
                        z = true;
                    } else {
                        z = true;
                    }
                }
            }
            intent.putExtra("_fbSourceApplicationHasBeenSet", true);
            return new h(str, z);
        }
    }
}