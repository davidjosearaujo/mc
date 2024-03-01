package com.mbv.a.sdklibrary.b;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import java.lang.reflect.InvocationTargetException;

/* compiled from: OpsUtil.java */
/* loaded from: classes.dex */
public class i {
    public static boolean a(Context context, int i) {
        Object a2 = a(context, i, a(context));
        return (a2 instanceof Integer) && ((Integer) a2).intValue() == 0;
    }

    public static boolean a(Context context, int i, boolean z) {
        return a(context, i, a(context), z ? 0 : 1);
    }

    private static Object a(Context context, int i, int i2) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            return appOpsManager.getClass().getMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(i2), context.getPackageName());
        } catch (Error e) {
            e.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static boolean a(Context context, int i, int i2, int i3) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            appOpsManager.getClass().getMethod("setMode", Integer.TYPE, Integer.TYPE, String.class, Integer.TYPE).invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(i2), context.getPackageName(), Integer.valueOf(i3));
            return true;
        } catch (IllegalAccessException | NoClassDefFoundError | NoSuchMethodException | InvocationTargetException e) {
            return false;
        }
    }

    private static int a(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 4).uid;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }
}