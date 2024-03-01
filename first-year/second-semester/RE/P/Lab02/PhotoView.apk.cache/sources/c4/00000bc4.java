package com.mbv.a.sdklibrary.b;

import android.app.Application;
import android.content.Context;

/* compiled from: ContextHolder.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Context f686a;

    public static Context a() {
        if (f686a == null) {
            try {
                Application application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
                if (application != null) {
                    f686a = application;
                    return application;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                Application application2 = (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, null);
                if (application2 != null) {
                    f686a = application2;
                    return application2;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            throw new IllegalStateException("ContextHolder is not initialed, it is recommend to init with application context.");
        }
        return f686a;
    }
}