package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookSdkNotInitializedException;
import java.util.Collection;
import java.util.List;

/* compiled from: Validate.java */
/* loaded from: classes.dex */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private static final String f161a = ac.class.getName();

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    public static <T> void a(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    public static <T> void b(Collection<T> collection, String str) {
        a((Object) collection, str);
        for (T t : collection) {
            if (t == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    public static <T> void c(Collection<T> collection, String str) {
        b(collection, str);
        a((Collection) collection, str);
    }

    public static void a(String str, String str2) {
        if (ab.a(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    public static void a() {
        if (!com.facebook.d.a()) {
            throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    public static String b() {
        String j = com.facebook.d.j();
        if (j == null) {
            throw new IllegalStateException("No App ID found, please set the App ID.");
        }
        return j;
    }

    public static String c() {
        String l = com.facebook.d.l();
        if (l == null) {
            throw new IllegalStateException("No Client Token found, please set the Client Token.");
        }
        return l;
    }

    public static void a(Context context) {
        a(context, true);
    }

    public static void a(Context context, boolean z) {
        a(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (z) {
                throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Log.w(f161a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    public static void b(Context context) {
        b(context, true);
    }

    public static void b(Context context, boolean z) {
        a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (activityInfo == null) {
            if (z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            Log.w(f161a, "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
        }
    }

    public static boolean c(Context context) {
        boolean z;
        a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> list = null;
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse("fb" + com.facebook.d.j() + "://authorize"));
            list = packageManager.queryIntentActivities(intent, 64);
        }
        if (list != null) {
            z = false;
            for (ResolveInfo resolveInfo : list) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (!activityInfo.name.equals("com.facebook.CustomTabActivity") || !activityInfo.packageName.equals(context.getPackageName())) {
                    return false;
                }
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }

    public static void d(Context context) {
        a(context, "context");
        String b = b();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String str = "com.facebook.app.FacebookContentProvider" + b;
            if (packageManager.resolveContentProvider(str, 0) == null) {
                throw new IllegalStateException(String.format("A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.", str));
            }
        }
    }
}