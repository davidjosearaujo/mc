package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.internal.k;
import com.facebook.internal.w;

/* compiled from: DialogPresenter.java */
/* loaded from: classes.dex */
public class f {

    /* compiled from: DialogPresenter.java */
    /* loaded from: classes.dex */
    public interface a {
        Bundle a();

        Bundle b();
    }

    public static void a(com.facebook.internal.a aVar) {
        a(aVar, new FacebookException("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    public static void a(com.facebook.internal.a aVar, FacebookException facebookException) {
        b(aVar, facebookException);
    }

    public static void a(com.facebook.internal.a aVar, Activity activity) {
        activity.startActivityForResult(aVar.b(), aVar.d());
        aVar.e();
    }

    public static void a(com.facebook.internal.a aVar, n nVar) {
        nVar.a(aVar.b(), aVar.d());
        aVar.e();
    }

    public static boolean a(e eVar) {
        return b(eVar).b() != -1;
    }

    public static void b(com.facebook.internal.a aVar, FacebookException facebookException) {
        if (facebookException != null) {
            ac.b(com.facebook.d.f());
            Intent intent = new Intent();
            intent.setClass(com.facebook.d.f(), FacebookActivity.class);
            intent.setAction(FacebookActivity.f79a);
            w.a(intent, aVar.c().toString(), (String) null, w.a(), w.a(facebookException));
            aVar.a(intent);
        }
    }

    public static void a(com.facebook.internal.a aVar, String str, Bundle bundle) {
        ac.b(com.facebook.d.f());
        ac.a(com.facebook.d.f());
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", str);
        bundle2.putBundle("params", bundle);
        Intent intent = new Intent();
        w.a(intent, aVar.c().toString(), str, w.a(), bundle2);
        intent.setClass(com.facebook.d.f(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        aVar.a(intent);
    }

    public static void a(com.facebook.internal.a aVar, Bundle bundle, e eVar) {
        Uri a2;
        ac.b(com.facebook.d.f());
        ac.a(com.facebook.d.f());
        String name = eVar.name();
        Uri c = c(eVar);
        if (c == null) {
            throw new FacebookException("Unable to fetch the Url for the DialogFeature : '" + name + "'");
        }
        Bundle a3 = z.a(aVar.c().toString(), w.a(), bundle);
        if (a3 == null) {
            throw new FacebookException("Unable to fetch the app's key-hash");
        }
        if (c.isRelative()) {
            a2 = ab.a(z.a(), c.toString(), a3);
        } else {
            a2 = ab.a(c.getAuthority(), c.getPath(), a3);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("url", a2.toString());
        bundle2.putBoolean("is_fallback", true);
        Intent intent = new Intent();
        w.a(intent, aVar.c().toString(), eVar.getAction(), w.a(), bundle2);
        intent.setClass(com.facebook.d.f(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        aVar.a(intent);
    }

    public static void a(com.facebook.internal.a aVar, a aVar2, e eVar) {
        Bundle b;
        Context f = com.facebook.d.f();
        String action = eVar.getAction();
        w.f b2 = b(eVar);
        int b3 = b2.b();
        if (b3 == -1) {
            throw new FacebookException("Cannot present this dialog. This likely means that the Facebook app is not installed.");
        }
        if (w.a(b3)) {
            b = aVar2.a();
        } else {
            b = aVar2.b();
        }
        if (b == null) {
            b = new Bundle();
        }
        Intent a2 = w.a(f, aVar.c().toString(), action, b2, b);
        if (a2 == null) {
            throw new FacebookException("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        aVar.a(a2);
    }

    private static Uri c(e eVar) {
        String name = eVar.name();
        k.a a2 = k.a(com.facebook.d.j(), eVar.getAction(), name);
        if (a2 == null) {
            return null;
        }
        return a2.c();
    }

    public static w.f b(e eVar) {
        String j = com.facebook.d.j();
        String action = eVar.getAction();
        return w.a(action, a(j, action, eVar));
    }

    private static int[] a(String str, String str2, e eVar) {
        k.a a2 = k.a(str, str2, eVar.name());
        return a2 != null ? a2.d() : new int[]{eVar.getMinVersion()};
    }
}