package com.mbv.a.sdklibrary.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.v4.content.PermissionChecker;

/* compiled from: PermissionUtil.java */
/* loaded from: classes.dex */
public class j {
    public static boolean a(Context context) {
        return a(context, "android.permission.READ_SMS") && a(context, "android.permission.WRITE_SMS");
    }

    public static boolean a(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return b(context) >= 23 ? context.checkSelfPermission(str) == 0 : PermissionChecker.checkSelfPermission(context, str) == 0;
        }
        return true;
    }

    private static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }
}