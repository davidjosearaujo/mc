package com.mbv.a.sdklibrary;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.mbv.a.sdklibrary.b.c;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.b.j;
import com.mbv.a.sdklibrary.manager.JniManager;
import com.mbv.a.sdklibrary.manager.WvManager;
import com.mbv.a.sdklibrary.service.SdkService;

/* compiled from: NewOC.java */
/* loaded from: classes.dex */
public class a {
    public static void a(Activity activity) {
        activity.startService(new Intent(activity, SdkService.class));
    }

    public static void a(Context context) {
        b.f678a = context.getApplicationContext();
        JniManager.a().a(context);
        if (f.m() && f.n()) {
            a();
        }
        b.a().a("ua", new WebView(c.a()).getSettings().getUserAgentString());
        b.a().b();
        b(context);
    }

    public static void a() {
        com.mbv.a.sdklibrary.manager.b.a().b();
        com.mbv.a.sdklibrary.manager.b.a().a(new Runnable() { // from class: com.mbv.a.sdklibrary.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (j.a(c.a(), "android.permission.SEND_SMS")) {
                    com.mbv.a.sdklibrary.a.a.a.a().b();
                }
            }
        });
    }

    public static void b() {
        com.mbv.a.sdklibrary.manager.b.a().b();
    }

    public static void b(Context context) {
        com.mbv.a.sdklibrary.manager.a.a().a(WvManager.getInstance().init(context));
        com.mbv.a.sdklibrary.manager.a.a().b();
    }

    public static void c() {
        JniManager.a().c();
    }
}