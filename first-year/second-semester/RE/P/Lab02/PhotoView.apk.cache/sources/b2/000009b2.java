package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.g;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f418a;
    private final Context b;

    private i(Context context) {
        this.b = context.getApplicationContext();
    }

    public static i a(Context context) {
        com.google.android.gms.common.internal.c.a(context);
        synchronized (i.class) {
            if (f418a == null) {
                g.a(context);
                f418a = new i(context);
            }
        }
        return f418a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g.a a(PackageInfo packageInfo, g.a... aVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        g.b bVar = new g.b(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < aVarArr.length; i++) {
            if (aVarArr[i].equals(bVar)) {
                return aVarArr[i];
            }
        }
        return null;
    }

    public boolean a(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? a(packageInfo, g.d.f416a) : a(packageInfo, g.d.f416a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean a(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (a(packageInfo, false)) {
            return true;
        }
        if (a(packageInfo, true)) {
            if (h.d(this.b)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
            return false;
        }
        return false;
    }
}