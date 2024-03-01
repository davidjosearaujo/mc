package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.v;

/* loaded from: classes.dex */
public class d {
    @TargetApi(12)
    public static boolean a(Context context, String str) {
        if (l.b()) {
            "com.google.android.gms".equals(str);
            try {
                return (v.b(context).a(str, 0).flags & 2097152) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
        return false;
    }
}