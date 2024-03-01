package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public class ab {

    /* renamed from: a  reason: collision with root package name */
    private static Object f430a = new Object();
    private static boolean b;
    private static String c;
    private static int d;

    public static int a(Context context) {
        b(context);
        return d;
    }

    private static void b(Context context) {
        Bundle bundle;
        synchronized (f430a) {
            if (b) {
                return;
            }
            b = true;
            try {
                bundle = com.google.android.gms.internal.v.b(context).a(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            c = bundle.getString("com.google.app.id");
            d = bundle.getInt("com.google.android.gms.version");
        }
    }
}