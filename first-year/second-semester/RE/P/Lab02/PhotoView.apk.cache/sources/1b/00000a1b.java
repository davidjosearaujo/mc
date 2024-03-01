package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f472a;
    private static Boolean b;

    public static boolean a() {
        boolean z = com.google.android.gms.common.h.c;
        return "user".equals(Build.TYPE);
    }

    @TargetApi(20)
    public static boolean a(Context context) {
        if (f472a == null) {
            f472a = Boolean.valueOf(l.g() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f472a.booleanValue();
    }

    @TargetApi(24)
    public static boolean b(Context context) {
        return !l.i() && a(context);
    }

    public static boolean c(Context context) {
        if (b == null) {
            b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot"));
        }
        return b.booleanValue();
    }
}