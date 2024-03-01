package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.f;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AccessTokenManager.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f130a;
    private final LocalBroadcastManager b;
    private final com.facebook.a c;
    private AccessToken d;
    private AtomicBoolean e = new AtomicBoolean(false);
    private Date f = new Date(0);

    b(LocalBroadcastManager localBroadcastManager, com.facebook.a aVar) {
        ac.a(localBroadcastManager, "localBroadcastManager");
        ac.a(aVar, "accessTokenCache");
        this.b = localBroadcastManager;
        this.c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a() {
        if (f130a == null) {
            synchronized (b.class) {
                if (f130a == null) {
                    f130a = new b(LocalBroadcastManager.getInstance(d.f()), new com.facebook.a());
                }
            }
        }
        return f130a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessToken b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        AccessToken a2 = this.c.a();
        if (a2 != null) {
            a(a2, false);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AccessToken accessToken) {
        a(accessToken, true);
    }

    private void a(AccessToken accessToken, boolean z) {
        AccessToken accessToken2 = this.d;
        this.d = accessToken;
        this.e.set(false);
        this.f = new Date(0L);
        if (z) {
            if (accessToken != null) {
                this.c.a(accessToken);
            } else {
                this.c.b();
                ab.b(d.f());
            }
        }
        if (!ab.a(accessToken2, accessToken)) {
            a(accessToken2, accessToken);
        }
    }

    private void a(AccessToken accessToken, AccessToken accessToken2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", accessToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", accessToken2);
        this.b.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (e()) {
            a((AccessToken.a) null);
        }
    }

    private boolean e() {
        if (this.d == null) {
            return false;
        }
        Long valueOf = Long.valueOf(new Date().getTime());
        return this.d.f().canExtendToken() && valueOf.longValue() - this.f.getTime() > 3600000 && valueOf.longValue() - this.d.g().getTime() > 86400000;
    }

    private static GraphRequest a(AccessToken accessToken, GraphRequest.b bVar) {
        return new GraphRequest(accessToken, "me/permissions", new Bundle(), HttpMethod.GET, bVar);
    }

    private static GraphRequest b(AccessToken accessToken, GraphRequest.b bVar) {
        Bundle bundle = new Bundle();
        bundle.putString("grant_type", "fb_extend_sso_token");
        return new GraphRequest(accessToken, "oauth/access_token", bundle, HttpMethod.GET, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AccessTokenManager.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f135a;
        public int b;

        private a() {
        }
    }

    void a(final AccessToken.a aVar) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            b(aVar);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.b.1
                @Override // java.lang.Runnable
                public void run() {
                    b.this.b(aVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AccessToken.a aVar) {
        final AccessToken accessToken = this.d;
        if (accessToken == null) {
            if (aVar != null) {
                aVar.a(new FacebookException("No current access token to refresh"));
            }
        } else if (!this.e.compareAndSet(false, true)) {
            if (aVar != null) {
                aVar.a(new FacebookException("Refresh already in progress"));
            }
        } else {
            this.f = new Date();
            final HashSet hashSet = new HashSet();
            final HashSet hashSet2 = new HashSet();
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final a aVar2 = new a();
            f fVar = new f(a(accessToken, new GraphRequest.b() { // from class: com.facebook.b.2
                @Override // com.facebook.GraphRequest.b
                public void a(g gVar) {
                    JSONArray optJSONArray;
                    JSONObject b = gVar.b();
                    if (b != null && (optJSONArray = b.optJSONArray("data")) != null) {
                        atomicBoolean.set(true);
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString("permission");
                                String optString2 = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS);
                                if (!ab.a(optString) && !ab.a(optString2)) {
                                    String lowerCase = optString2.toLowerCase(Locale.US);
                                    if (lowerCase.equals("granted")) {
                                        hashSet.add(optString);
                                    } else if (lowerCase.equals("declined")) {
                                        hashSet2.add(optString);
                                    } else {
                                        Log.w("AccessTokenManager", "Unexpected status: " + lowerCase);
                                    }
                                }
                            }
                        }
                    }
                }
            }), b(accessToken, new GraphRequest.b() { // from class: com.facebook.b.3
                @Override // com.facebook.GraphRequest.b
                public void a(g gVar) {
                    JSONObject b = gVar.b();
                    if (b != null) {
                        aVar2.f135a = b.optString("access_token");
                        aVar2.b = b.optInt("expires_at");
                    }
                }
            }));
            fVar.a(new f.a() { // from class: com.facebook.b.4
                @Override // com.facebook.f.a
                public void a(f fVar2) {
                    AccessToken accessToken2;
                    try {
                        if (b.a().b() == null || b.a().b().i() != accessToken.i()) {
                            if (aVar != null) {
                                aVar.a(new FacebookException("No current access token to refresh"));
                            }
                            b.this.e.set(false);
                            if (aVar == null || 0 == 0) {
                                return;
                            }
                            aVar.a((AccessToken) null);
                        } else if (!atomicBoolean.get() && aVar2.f135a == null && aVar2.b == 0) {
                            if (aVar != null) {
                                aVar.a(new FacebookException("Failed to refresh access token"));
                            }
                            b.this.e.set(false);
                            if (aVar == null || 0 == 0) {
                                return;
                            }
                            aVar.a((AccessToken) null);
                        } else {
                            AccessToken accessToken3 = new AccessToken(aVar2.f135a != null ? aVar2.f135a : accessToken.b(), accessToken.h(), accessToken.i(), atomicBoolean.get() ? hashSet : accessToken.d(), atomicBoolean.get() ? hashSet2 : accessToken.e(), accessToken.f(), aVar2.b != 0 ? new Date(aVar2.b * 1000) : accessToken.c(), new Date());
                            try {
                                b.a().a(accessToken3);
                                b.this.e.set(false);
                                if (aVar == null || accessToken3 == null) {
                                    return;
                                }
                                aVar.a(accessToken3);
                            } catch (Throwable th) {
                                accessToken2 = accessToken3;
                                th = th;
                                b.this.e.set(false);
                                if (aVar != null && accessToken2 != null) {
                                    aVar.a(accessToken2);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        accessToken2 = null;
                    }
                }
            });
            fVar.h();
        }
    }
}