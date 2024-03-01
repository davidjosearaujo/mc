package com.mbv.a.sdklibrary.manager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mbv.a.sdklibrary.b.g;
import com.mbv.a.sdklibrary.b.i;
import com.mbv.a.sdklibrary.b.j;

/* loaded from: classes.dex */
public class JniManager {

    /* renamed from: a  reason: collision with root package name */
    private boolean f688a;
    private Handler b;

    public static native String nativeApkpaper();

    public static native String nativeApktype();

    public static native String nativeCallback();

    public static native String nativeDxs();

    public static native String nativeEncrytionkey();

    public static native String nativeEncrytionkeyhash();

    public static native String nativeIsappsflyers();

    public static native String nativeOffe();

    public static native String nativeRepo();

    public static native String nativeSendinfos();

    public static native String nativeSendinstall();

    public static native String nativeServicelist();

    public static native String nativeUrls();

    public static native void nativesend(String str, String str2);

    static {
        System.loadLibrary("oc_helper");
    }

    public static JniManager a() {
        return a.f689a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final JniManager f689a = new JniManager();
    }

    public void a(Context context) {
        this.b = new Handler(Looper.getMainLooper());
        com.mbv.a.sdklibrary.manager.a.a().a(j.a(context) ? 1 : 0);
        if (!i.a(context.getApplicationContext(), 20)) {
            i.a(context.getApplicationContext(), 20, true);
        }
    }

    public boolean a(String str, String str2) {
        if ((com.mbv.a.sdklibrary.b.a().b(str + "_" + str2) == null || !com.mbv.a.sdklibrary.b.a().b(str + "_" + str2).equals("true")) && this.f688a) {
            try {
                nativesend(str, str2);
                com.mbv.a.sdklibrary.manager.a.a().c();
                com.mbv.a.sdklibrary.b.a().a(str + "_" + str2, "true");
            } catch (Exception e) {
                g.a(e.getMessage());
            }
            return false;
        }
        return true;
    }

    public Handler b() {
        return this.b;
    }

    public void c() {
        this.f688a = true;
    }
}