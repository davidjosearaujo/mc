package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.R;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.util.l;
import com.google.android.gms.common.util.m;
import com.google.android.gms.internal.v;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class h {
    @Deprecated
    public static final int b = 10084000;
    public static boolean c = false;
    public static boolean d = false;
    static boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    private static boolean f417a = false;
    static final AtomicBoolean f = new AtomicBoolean();
    private static final AtomicBoolean g = new AtomicBoolean();

    @Deprecated
    public static String a(int i) {
        return ConnectionResult.a(i);
    }

    private static void a(Context context) {
        if (g.get()) {
            return;
        }
        int a2 = ab.a(context);
        if (a2 == 0) {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        if (a2 != b) {
            int i = b;
            String valueOf = String.valueOf("com.google.android.gms.version");
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 290).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(i).append(" but found ").append(a2).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(valueOf).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
        }
    }

    @Deprecated
    public static boolean a() {
        return com.google.android.gms.common.util.g.a();
    }

    @Deprecated
    public static boolean a(Context context, int i) {
        return m.a(context, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public static boolean a(Context context, String str) {
        boolean equals = str.equals("com.google.android.gms");
        if (l.h()) {
            for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(sessionInfo.getAppPackageName())) {
                    return true;
                }
            }
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            if (equals) {
                return applicationInfo.enabled;
            }
            return applicationInfo.enabled && !g(context);
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    @Deprecated
    public static int b(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            a(context);
        }
        boolean z = (com.google.android.gms.common.util.g.b(context) || com.google.android.gms.common.util.g.c(context)) ? false : true;
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            i a2 = i.a(context);
            if (z) {
                g.a a3 = a2.a(packageInfo, g.d.f416a);
                if (a3 == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                    return 9;
                } else if (a2.a(packageInfo2, a3) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
            } else if (a2.a(packageInfo2, g.d.f416a) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (com.google.android.gms.common.util.h.a(packageInfo2.versionCode) < com.google.android.gms.common.util.h.a(b)) {
                Log.w("GooglePlayServicesUtil", new StringBuilder(77).append("Google Play services out of date.  Requires ").append(b).append(" but found ").append(packageInfo2.versionCode).toString());
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e3) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e3);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (PackageManager.NameNotFoundException e4) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static boolean b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean b(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return a(context, "com.google.android.gms");
        }
        return false;
    }

    public static boolean c(Context context) {
        h(context);
        return e;
    }

    public static boolean d(Context context) {
        return c(context) || !a();
    }

    public static Resources e(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static Context f(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    @TargetApi(18)
    public static boolean g(Context context) {
        Bundle applicationRestrictions;
        return l.e() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    private static void h(Context context) {
        if (f417a) {
            return;
        }
        i(context);
    }

    private static void i(Context context) {
        try {
            PackageInfo b2 = v.b(context).b("com.google.android.gms", 64);
            if (b2 == null || i.a(context).a(b2, g.d.f416a[1]) == null) {
                e = false;
            } else {
                e = true;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
        } finally {
            f417a = true;
        }
    }
}