package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.f;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.ab;
import com.facebook.internal.ae;
import com.facebook.internal.m;
import com.facebook.internal.u;
import com.facebook.internal.x;
import com.facebook.share.internal.LikeContent;
import com.facebook.share.widget.LikeView;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: LikeActionController.java */
@Deprecated
/* loaded from: classes.dex */
public class c {
    private static com.facebook.internal.m b;
    private static Handler f;
    private static String g;
    private static boolean h;
    private static volatile int i;
    private static com.facebook.c j;
    private String k;
    private LikeView.ObjectType l;
    private boolean m;
    private String n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private boolean t;
    private boolean u;
    private boolean v;
    private Bundle w;
    private AppEventsLogger x;

    /* renamed from: a  reason: collision with root package name */
    private static final String f297a = c.class.getSimpleName();
    private static final ConcurrentHashMap<String, c> c = new ConcurrentHashMap<>();
    private static ae d = new ae(1);
    private static ae e = new ae(1);

    /* compiled from: LikeActionController.java */
    @Deprecated
    /* renamed from: com.facebook.share.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0015c {
        void a(c cVar, FacebookException facebookException);
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private interface i extends n {
        boolean b();

        String c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public interface m {
        void a();
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private interface n {
        FacebookRequestError a();

        void a(com.facebook.f fVar);
    }

    @Deprecated
    public static void a(String str, LikeView.ObjectType objectType, InterfaceC0015c interfaceC0015c) {
        if (!h) {
            j();
        }
        c a2 = a(str);
        if (a2 != null) {
            a(a2, objectType, interfaceC0015c);
        } else {
            e.a(new b(str, objectType, interfaceC0015c));
        }
    }

    private static void a(c cVar, LikeView.ObjectType objectType, InterfaceC0015c interfaceC0015c) {
        FacebookException facebookException;
        c cVar2 = null;
        LikeView.ObjectType a2 = com.facebook.share.internal.k.a(objectType, cVar.l);
        if (a2 == null) {
            facebookException = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", cVar.k, cVar.l.toString(), objectType.toString());
        } else {
            cVar.l = a2;
            facebookException = null;
            cVar2 = cVar;
        }
        a(interfaceC0015c, cVar2, facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, LikeView.ObjectType objectType, InterfaceC0015c interfaceC0015c) {
        c a2 = a(str);
        if (a2 != null) {
            a(a2, objectType, interfaceC0015c);
            return;
        }
        c b2 = b(str);
        if (b2 == null) {
            b2 = new c(str, objectType);
            l(b2);
        }
        a(str, b2);
        f.post(new Runnable() { // from class: com.facebook.share.internal.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.this.n();
            }
        });
        a(interfaceC0015c, b2, (FacebookException) null);
    }

    private static synchronized void j() {
        synchronized (c.class) {
            if (!h) {
                f = new Handler(Looper.getMainLooper());
                i = com.facebook.d.f().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
                b = new com.facebook.internal.m(f297a, new m.d());
                k();
                CallbackManagerImpl.a(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), new CallbackManagerImpl.a() { // from class: com.facebook.share.internal.c.5
                });
                h = true;
            }
        }
    }

    private static void a(final InterfaceC0015c interfaceC0015c, final c cVar, final FacebookException facebookException) {
        if (interfaceC0015c != null) {
            f.post(new Runnable() { // from class: com.facebook.share.internal.c.6
                @Override // java.lang.Runnable
                public void run() {
                    InterfaceC0015c.this.a(cVar, facebookException);
                }
            });
        }
    }

    private static void k() {
        j = new com.facebook.c() { // from class: com.facebook.share.internal.c.7
            @Override // com.facebook.c
            protected void a(AccessToken accessToken, AccessToken accessToken2) {
                Context f2 = com.facebook.d.f();
                if (accessToken2 == null) {
                    int unused = c.i = (c.i + 1) % 1000;
                    f2.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", c.i).apply();
                    c.c.clear();
                    c.b.a();
                }
                c.d((c) null, "com.facebook.sdk.LikeActionController.DID_RESET");
            }
        };
    }

    private static void a(String str, c cVar) {
        String d2 = d(str);
        d.a(new j(d2, true));
        c.put(d2, cVar);
    }

    private static c a(String str) {
        String d2 = d(str);
        c cVar = c.get(d2);
        if (cVar != null) {
            d.a(new j(d2, false));
        }
        return cVar;
    }

    private static void l(c cVar) {
        String m2 = m(cVar);
        String d2 = d(cVar.k);
        if (!ab.a(m2) && !ab.a(d2)) {
            e.a(new o(d2, m2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2) {
        OutputStream outputStream = null;
        try {
            try {
                outputStream = b.b(str);
                outputStream.write(str2.getBytes());
                if (outputStream != null) {
                    ab.a(outputStream);
                }
            } catch (IOException e2) {
                Log.e(f297a, "Unable to serialize controller to disk", e2);
                if (outputStream != null) {
                    ab.a(outputStream);
                }
            }
        } catch (Throwable th) {
            if (outputStream != null) {
                ab.a(outputStream);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.facebook.share.internal.c b(java.lang.String r5) {
        /*
            r0 = 0
            java.lang.String r1 = d(r5)     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L30
            com.facebook.internal.m r2 = com.facebook.share.internal.c.b     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L30
            java.io.InputStream r2 = r2.a(r1)     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L30
            if (r2 == 0) goto L1b
            java.lang.String r1 = com.facebook.internal.ab.a(r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            boolean r3 = com.facebook.internal.ab.a(r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            if (r3 != 0) goto L1b
            com.facebook.share.internal.c r0 = c(r1)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
        L1b:
            if (r2 == 0) goto L20
            com.facebook.internal.ab.a(r2)
        L20:
            return r0
        L21:
            r1 = move-exception
            r2 = r0
        L23:
            java.lang.String r3 = com.facebook.share.internal.c.f297a     // Catch: java.lang.Throwable -> L39
            java.lang.String r4 = "Unable to deserialize controller from disk"
            android.util.Log.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L39
            if (r2 == 0) goto L20
            com.facebook.internal.ab.a(r2)
            goto L20
        L30:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L33:
            if (r2 == 0) goto L38
            com.facebook.internal.ab.a(r2)
        L38:
            throw r0
        L39:
            r0 = move-exception
            goto L33
        L3b:
            r1 = move-exception
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.internal.c.b(java.lang.String):com.facebook.share.internal.c");
    }

    private static c c(String str) {
        c cVar;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e2) {
            Log.e(f297a, "Unable to deserialize controller from JSON", e2);
            cVar = null;
        }
        if (jSONObject.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
            return null;
        }
        cVar = new c(jSONObject.getString("object_id"), LikeView.ObjectType.fromInt(jSONObject.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
        cVar.n = jSONObject.optString("like_count_string_with_like", null);
        cVar.o = jSONObject.optString("like_count_string_without_like", null);
        cVar.p = jSONObject.optString("social_sentence_with_like", null);
        cVar.q = jSONObject.optString("social_sentence_without_like", null);
        cVar.m = jSONObject.optBoolean("is_object_liked");
        cVar.r = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject("facebook_dialog_analytics_bundle");
        if (optJSONObject != null) {
            cVar.w = com.facebook.internal.c.a(optJSONObject);
        }
        return cVar;
    }

    private static String m(c cVar) {
        JSONObject a2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
            jSONObject.put("object_id", cVar.k);
            jSONObject.put("object_type", cVar.l.getValue());
            jSONObject.put("like_count_string_with_like", cVar.n);
            jSONObject.put("like_count_string_without_like", cVar.o);
            jSONObject.put("social_sentence_with_like", cVar.p);
            jSONObject.put("social_sentence_without_like", cVar.q);
            jSONObject.put("is_object_liked", cVar.m);
            jSONObject.put("unlike_token", cVar.r);
            if (cVar.w != null && (a2 = com.facebook.internal.c.a(cVar.w)) != null) {
                jSONObject.put("facebook_dialog_analytics_bundle", a2);
            }
            return jSONObject.toString();
        } catch (JSONException e2) {
            Log.e(f297a, "Unable to serialize controller to JSON", e2);
            return null;
        }
    }

    private static String d(String str) {
        String str2 = null;
        AccessToken a2 = AccessToken.a();
        if (a2 != null) {
            str2 = a2.b();
        }
        if (str2 != null) {
            str2 = ab.b(str2);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, ab.a(str2, ""), Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(c cVar, String str) {
        b(cVar, str, (Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(c cVar, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        if (cVar != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", cVar.a());
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        LocalBroadcastManager.getInstance(com.facebook.d.f()).sendBroadcast(intent);
    }

    private c(String str, LikeView.ObjectType objectType) {
        this.k = str;
        this.l = objectType;
    }

    @Deprecated
    public String a() {
        return this.k;
    }

    @Deprecated
    public String b() {
        return this.m ? this.n : this.o;
    }

    @Deprecated
    public String c() {
        return this.m ? this.p : this.q;
    }

    @Deprecated
    public boolean d() {
        return this.m;
    }

    @Deprecated
    public boolean e() {
        return false;
    }

    @Deprecated
    public void a(Activity activity, com.facebook.internal.n nVar, Bundle bundle) {
        boolean z = !this.m;
        if (m()) {
            b(z);
            if (this.v) {
                l().a("fb_like_control_did_undo_quickly", (Double) null, bundle);
                return;
            } else if (!a(z, bundle)) {
                b(z ? false : true);
                b(activity, nVar, bundle);
                return;
            } else {
                return;
            }
        }
        b(activity, nVar, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AppEventsLogger l() {
        if (this.x == null) {
            this.x = AppEventsLogger.b(com.facebook.d.f());
        }
        return this.x;
    }

    private boolean a(boolean z, Bundle bundle) {
        if (m()) {
            if (z) {
                b(bundle);
                return true;
            } else if (!ab.a(this.r)) {
                c(bundle);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        b(z);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
        b(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    private void b(boolean z) {
        a(z, this.n, this.o, this.p, this.q, this.r);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, String str, String str2, String str3, String str4, String str5) {
        String a2 = ab.a(str, (String) null);
        String a3 = ab.a(str2, (String) null);
        String a4 = ab.a(str3, (String) null);
        String a5 = ab.a(str4, (String) null);
        String a6 = ab.a(str5, (String) null);
        if ((z == this.m && ab.a(a2, this.n) && ab.a(a3, this.o) && ab.a(a4, this.p) && ab.a(a5, this.q) && ab.a(a6, this.r)) ? false : true) {
            this.m = z;
            this.n = a2;
            this.o = a3;
            this.p = a4;
            this.q = a5;
            this.r = a6;
            l(this);
            d(this, "com.facebook.sdk.LikeActionController.UPDATED");
        }
    }

    private void b(Activity activity, com.facebook.internal.n nVar, Bundle bundle) {
        String str;
        String objectType;
        if (com.facebook.share.internal.d.e()) {
            str = "fb_like_control_did_present_dialog";
        } else if (com.facebook.share.internal.d.f()) {
            str = "fb_like_control_did_present_fallback_dialog";
        } else {
            a("present_dialog", bundle);
            ab.b(f297a, "Cannot show the Like Dialog on this device.");
            d((c) null, "com.facebook.sdk.LikeActionController.UPDATED");
            str = null;
        }
        if (str != null) {
            if (this.l != null) {
                objectType = this.l.toString();
            } else {
                objectType = LikeView.ObjectType.UNKNOWN.toString();
            }
            LikeContent a2 = new LikeContent.a().a(this.k).b(objectType).a();
            if (nVar != null) {
                new com.facebook.share.internal.d(nVar).b(a2);
            } else {
                new com.facebook.share.internal.d(activity).b(a2);
            }
            a(bundle);
            l().a("fb_like_control_did_present_dialog", (Double) null, bundle);
        }
    }

    private void a(Bundle bundle) {
        e(this.k);
        this.w = bundle;
        l(this);
    }

    private static void e(String str) {
        g = str;
        com.facebook.d.f().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", g).apply();
    }

    private boolean m() {
        AccessToken a2 = AccessToken.a();
        return (this.t || this.s == null || a2 == null || a2.d() == null || !a2.d().contains("publish_actions")) ? false : true;
    }

    private void b(final Bundle bundle) {
        this.v = true;
        a(new m() { // from class: com.facebook.share.internal.c.8
            @Override // com.facebook.share.internal.c.m
            public void a() {
                if (ab.a(c.this.s)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                    c.b(c.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle2);
                    return;
                }
                com.facebook.f fVar = new com.facebook.f();
                final k kVar = new k(c.this.s, c.this.l);
                kVar.a(fVar);
                fVar.a(new f.a() { // from class: com.facebook.share.internal.c.8.1
                    @Override // com.facebook.f.a
                    public void a(com.facebook.f fVar2) {
                        c.this.v = false;
                        if (kVar.a() != null) {
                            c.this.a(false);
                            return;
                        }
                        c.this.r = ab.a(kVar.e, (String) null);
                        c.this.u = true;
                        c.this.l().a("fb_like_control_did_like", (Double) null, bundle);
                        c.this.d(bundle);
                    }
                });
                fVar.h();
            }
        });
    }

    private void c(final Bundle bundle) {
        this.v = true;
        com.facebook.f fVar = new com.facebook.f();
        final l lVar = new l(this.r);
        lVar.a(fVar);
        fVar.a(new f.a() { // from class: com.facebook.share.internal.c.9
            @Override // com.facebook.f.a
            public void a(com.facebook.f fVar2) {
                c.this.v = false;
                if (lVar.a() != null) {
                    c.this.a(true);
                    return;
                }
                c.this.r = null;
                c.this.u = false;
                c.this.l().a("fb_like_control_did_unlike", (Double) null, bundle);
                c.this.d(bundle);
            }
        });
        fVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (AccessToken.a() == null) {
            o();
        } else {
            a(new m() { // from class: com.facebook.share.internal.c.10
                @Override // com.facebook.share.internal.c.m
                public void a() {
                    final i hVar;
                    switch (AnonymousClass3.f302a[c.this.l.ordinal()]) {
                        case 1:
                            hVar = new h(c.this.s);
                            break;
                        default:
                            hVar = new f(c.this.s, c.this.l);
                            break;
                    }
                    final d dVar = new d(c.this.s, c.this.l);
                    com.facebook.f fVar = new com.facebook.f();
                    hVar.a(fVar);
                    dVar.a(fVar);
                    fVar.a(new f.a() { // from class: com.facebook.share.internal.c.10.1
                        @Override // com.facebook.f.a
                        public void a(com.facebook.f fVar2) {
                            if (hVar.a() == null && dVar.a() == null) {
                                c.this.a(hVar.b(), dVar.e, dVar.f, dVar.g, dVar.h, hVar.c());
                            } else {
                                u.a(LoggingBehavior.REQUESTS, c.f297a, "Unable to refresh like state for id: '%s'", c.this.k);
                            }
                        }
                    });
                    fVar.h();
                }
            });
        }
    }

    /* compiled from: LikeActionController.java */
    /* renamed from: com.facebook.share.internal.c$3  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f302a = new int[LikeView.ObjectType.values().length];

        static {
            try {
                f302a[LikeView.ObjectType.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private void o() {
        com.facebook.share.internal.e eVar = new com.facebook.share.internal.e(com.facebook.d.f(), com.facebook.d.j(), this.k);
        if (eVar.a()) {
            eVar.a(new x.a() { // from class: com.facebook.share.internal.c.1
                @Override // com.facebook.internal.x.a
                public void a(Bundle bundle) {
                    String str;
                    String str2;
                    String str3;
                    String str4;
                    String str5;
                    if (bundle != null && bundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED")) {
                        boolean z = bundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
                        if (!bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE")) {
                            str = c.this.n;
                        } else {
                            str = bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
                        }
                        if (!bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE")) {
                            str2 = c.this.o;
                        } else {
                            str2 = bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
                        }
                        if (!bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE")) {
                            str3 = c.this.p;
                        } else {
                            str3 = bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
                        }
                        if (!bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE")) {
                            str4 = c.this.q;
                        } else {
                            str4 = bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
                        }
                        if (!bundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN")) {
                            str5 = c.this.r;
                        } else {
                            str5 = bundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");
                        }
                        c.this.a(z, str, str2, str3, str4, str5);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Bundle bundle) {
        if (this.m != this.u && !a(this.m, bundle)) {
            a(!this.m);
        }
    }

    private void a(final m mVar) {
        if (!ab.a(this.s)) {
            if (mVar != null) {
                mVar.a();
                return;
            }
            return;
        }
        final e eVar = new e(this.k, this.l);
        final g gVar = new g(this.k, this.l);
        com.facebook.f fVar = new com.facebook.f();
        eVar.a(fVar);
        gVar.a(fVar);
        fVar.a(new f.a() { // from class: com.facebook.share.internal.c.2
            @Override // com.facebook.f.a
            public void a(com.facebook.f fVar2) {
                FacebookRequestError a2;
                c.this.s = eVar.e;
                if (ab.a(c.this.s)) {
                    c.this.s = gVar.e;
                    c.this.t = gVar.f;
                }
                if (ab.a(c.this.s)) {
                    u.a(LoggingBehavior.DEVELOPER_ERRORS, c.f297a, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", c.this.k);
                    c cVar = c.this;
                    if (gVar.a() != null) {
                        a2 = gVar.a();
                    } else {
                        a2 = eVar.a();
                    }
                    cVar.a("get_verified_id", a2);
                }
                if (mVar != null) {
                    mVar.a();
                }
            }
        });
        fVar.h();
    }

    private void a(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.k);
        bundle2.putString("object_type", this.l.toString());
        bundle2.putString("current_action", str);
        l().a("fb_like_control_error", (Double) null, bundle2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, FacebookRequestError facebookRequestError) {
        JSONObject f2;
        Bundle bundle = new Bundle();
        if (facebookRequestError != null && (f2 = facebookRequestError.f()) != null) {
            bundle.putString("error", f2.toString());
        }
        a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public class e extends a {
        String e;

        e(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", str);
            a(new GraphRequest(AccessToken.a(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.e().contains("og_object")) {
                this.c = null;
            } else {
                u.a(LoggingBehavior.REQUESTS, c.f297a, "Error getting the FB id for object '%s' with type '%s' : %s", this.f308a, this.b, facebookRequestError);
            }
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            JSONObject optJSONObject;
            JSONObject b = ab.b(gVar.b(), this.f308a);
            if (b != null && (optJSONObject = b.optJSONObject("og_object")) != null) {
                this.e = optJSONObject.optString("id");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public class g extends a {
        String e;
        boolean f;

        g(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", str);
            a(new GraphRequest(AccessToken.a(), "", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            JSONObject b = ab.b(gVar.b(), this.f308a);
            if (b != null) {
                this.e = b.optString("id");
                this.f = !ab.a(this.e);
            }
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error getting the FB id for object '%s' with type '%s' : %s", this.f308a, this.b, facebookRequestError);
        }
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private class k extends a {
        String e;

        k(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            a(new GraphRequest(AccessToken.a(), "me/og.likes", bundle, HttpMethod.POST));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            this.e = ab.a(gVar.b(), "id");
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.b() == 3501) {
                this.c = null;
                return;
            }
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error liking object '%s' with type '%s' : %s", this.f308a, this.b, facebookRequestError);
            c.this.a("publish_like", facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public class l extends a {
        private String f;

        l(String str) {
            super(null, null);
            this.f = str;
            a(new GraphRequest(AccessToken.a(), str, null, HttpMethod.DELETE));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error unliking object with unlike token '%s' : %s", this.f, facebookRequestError);
            c.this.a("publish_unlike", facebookRequestError);
        }
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private class h extends a implements i {
        private boolean f;
        private String g;

        h(String str) {
            super(str, LikeView.ObjectType.PAGE);
            this.f = c.this.m;
            this.g = str;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            a(new GraphRequest(AccessToken.a(), "me/likes/" + str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            JSONArray c = ab.c(gVar.b(), "data");
            if (c != null && c.length() > 0) {
                this.f = true;
            }
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error fetching like status for page id '%s': %s", this.g, facebookRequestError);
            c.this.a("get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.c.i
        public boolean b() {
            return this.f;
        }

        @Override // com.facebook.share.internal.c.i
        public String c() {
            return null;
        }
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private class f extends a implements i {
        private boolean f;
        private String g;
        private final String h;
        private final LikeView.ObjectType i;

        f(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            this.f = c.this.m;
            this.h = str;
            this.i = objectType;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", this.h);
            a(new GraphRequest(AccessToken.a(), "me/og.likes", bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            JSONArray c = ab.c(gVar.b(), "data");
            if (c != null) {
                for (int i = 0; i < c.length(); i++) {
                    JSONObject optJSONObject = c.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.f = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("application");
                        AccessToken a2 = AccessToken.a();
                        if (optJSONObject2 != null && a2 != null && ab.a(a2.h(), optJSONObject2.optString("id"))) {
                            this.g = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error fetching like status for object '%s' with type '%s' : %s", this.h, this.i, facebookRequestError);
            c.this.a("get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.internal.c.i
        public boolean b() {
            return this.f;
        }

        @Override // com.facebook.share.internal.c.i
        public String c() {
            return this.g;
        }
    }

    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    private class d extends a {
        String e;
        String f;
        String g;
        String h;

        d(String str, LikeView.ObjectType objectType) {
            super(str, objectType);
            this.e = c.this.n;
            this.f = c.this.o;
            this.g = c.this.p;
            this.h = c.this.q;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            a(new GraphRequest(AccessToken.a(), str, bundle, HttpMethod.GET));
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(com.facebook.g gVar) {
            JSONObject b = ab.b(gVar.b(), "engagement");
            if (b != null) {
                this.e = b.optString("count_string_with_like", this.e);
                this.f = b.optString("count_string_without_like", this.f);
                this.g = b.optString("social_sentence_with_like", this.g);
                this.h = b.optString("social_sentence_without_like", this.h);
            }
        }

        @Override // com.facebook.share.internal.c.a
        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error fetching engagement for object '%s' with type '%s' : %s", this.f308a, this.b, facebookRequestError);
            c.this.a("get_engagement", facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public abstract class a implements n {

        /* renamed from: a  reason: collision with root package name */
        protected String f308a;
        protected LikeView.ObjectType b;
        protected FacebookRequestError c;
        private GraphRequest e;

        protected abstract void a(com.facebook.g gVar);

        protected a(String str, LikeView.ObjectType objectType) {
            this.f308a = str;
            this.b = objectType;
        }

        @Override // com.facebook.share.internal.c.n
        public void a(com.facebook.f fVar) {
            fVar.add(this.e);
        }

        @Override // com.facebook.share.internal.c.n
        public FacebookRequestError a() {
            return this.c;
        }

        protected void a(GraphRequest graphRequest) {
            this.e = graphRequest;
            graphRequest.a(com.facebook.d.g());
            graphRequest.a(new GraphRequest.b() { // from class: com.facebook.share.internal.c.a.1
                @Override // com.facebook.GraphRequest.b
                public void a(com.facebook.g gVar) {
                    a.this.c = gVar.a();
                    if (a.this.c != null) {
                        a.this.a(a.this.c);
                    } else {
                        a.this.a(gVar);
                    }
                }
            });
        }

        protected void a(FacebookRequestError facebookRequestError) {
            u.a(LoggingBehavior.REQUESTS, c.f297a, "Error running request for object '%s' with type '%s' : %s", this.f308a, this.b, facebookRequestError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public static class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private static ArrayList<String> f311a = new ArrayList<>();
        private String b;
        private boolean c;

        j(String str, boolean z) {
            this.b = str;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.b != null) {
                f311a.remove(this.b);
                f311a.add(0, this.b);
            }
            if (this.c && f311a.size() >= 128) {
                while (64 < f311a.size()) {
                    c.c.remove(f311a.remove(f311a.size() - 1));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public static class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f312a;
        private String b;

        o(String str, String str2) {
            this.f312a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.b(this.f312a, this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LikeActionController.java */
    /* loaded from: classes.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f310a;
        private LikeView.ObjectType b;
        private InterfaceC0015c c;

        b(String str, LikeView.ObjectType objectType, InterfaceC0015c interfaceC0015c) {
            this.f310a = str;
            this.b = objectType;
            this.c = interfaceC0015c;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.c(this.f310a, this.b, this.c);
        }
    }
}