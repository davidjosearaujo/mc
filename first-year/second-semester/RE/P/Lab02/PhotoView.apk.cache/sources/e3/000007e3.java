package com.facebook.internal;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;

/* compiled from: CustomTab.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Uri f178a;

    public d(String str, Bundle bundle) {
        this.f178a = ab.a(z.a(), com.facebook.d.g() + "/dialog/" + str, bundle == null ? new Bundle() : bundle);
    }

    public void a(Activity activity, String str) {
        CustomTabsIntent build = new CustomTabsIntent.Builder().build();
        build.intent.setPackage(str);
        build.intent.addFlags(1073741824);
        build.launchUrl(activity, this.f178a);
    }
}