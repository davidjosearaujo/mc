package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.internal.v;

/* loaded from: classes.dex */
public final class m {
    public static boolean a(Context context, int i) {
        if (a(context, i, "com.google.android.gms")) {
            try {
                return com.google.android.gms.common.i.a(context).a(context.getPackageManager(), context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
            } catch (PackageManager.NameNotFoundException e) {
                if (Log.isLoggable("UidVerifier", 3)) {
                    Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    @TargetApi(19)
    public static boolean a(Context context, int i, String str) {
        return v.b(context).a(i, str);
    }
}