package com.mbv.a.sdklibrary.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* compiled from: ConfigUtil.java */
/* loaded from: classes.dex */
public class b {
    public static String a(Context context, String str) {
        Bundle a2 = a(context);
        Object obj = a2 != null ? a2.get(str) : null;
        return obj != null ? obj.toString() : "";
    }

    private static Bundle a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}