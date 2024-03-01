package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FacebookWebFallbackDialog.java */
/* loaded from: classes.dex */
public class j extends ad {

    /* renamed from: a  reason: collision with root package name */
    private static final String f184a = j.class.getName();
    private boolean b;

    public static j a(Context context, String str, String str2) {
        ad.a(context);
        return new j(context, str, str2);
    }

    private j(Context context, String str, String str2) {
        super(context, str);
        b(str2);
    }

    @Override // com.facebook.internal.ad
    protected Bundle a(String str) {
        Bundle c = ab.c(Uri.parse(str).getQuery());
        String string = c.getString("bridge_args");
        c.remove("bridge_args");
        if (!ab.a(string)) {
            try {
                c.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", c.a(new JSONObject(string)));
            } catch (JSONException e) {
                ab.a(f184a, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = c.getString("method_results");
        c.remove("method_results");
        if (!ab.a(string2)) {
            if (ab.a(string2)) {
                string2 = "{}";
            }
            try {
                c.putBundle("com.facebook.platform.protocol.RESULT_ARGS", c.a(new JSONObject(string2)));
            } catch (JSONException e2) {
                ab.a(f184a, "Unable to parse bridge_args JSON", e2);
            }
        }
        c.remove("version");
        c.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", w.a());
        return c;
    }

    @Override // com.facebook.internal.ad, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView d = d();
        if (!c() || b() || d == null || !d.isShown()) {
            super.cancel();
        } else if (!this.b) {
            this.b = true;
            d.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.super.cancel();
                }
            }, 1500L);
        }
    }
}