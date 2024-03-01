package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.ac;
import com.facebook.internal.n;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* compiled from: LoginManager.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f254a = a();
    private static volatile d b;
    private LoginBehavior c = LoginBehavior.NATIVE_WITH_FALLBACK;
    private DefaultAudience d = DefaultAudience.FRIENDS;
    private final SharedPreferences e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d() {
        ac.a();
        this.e = com.facebook.d.f().getSharedPreferences("com.facebook.loginManager", 0);
    }

    public static d c() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    public d a(LoginBehavior loginBehavior) {
        this.c = loginBehavior;
        return this;
    }

    public d a(DefaultAudience defaultAudience) {
        this.d = defaultAudience;
        return this;
    }

    public void d() {
        AccessToken.a((AccessToken) null);
        Profile.a(null);
        a(false);
    }

    public void a(Fragment fragment, Collection<String> collection) {
        a(new n(fragment), collection);
    }

    public void a(android.app.Fragment fragment, Collection<String> collection) {
        a(new n(fragment), collection);
    }

    private void a(n nVar, Collection<String> collection) {
        b(collection);
        a(new b(nVar), a(collection));
    }

    public void a(Activity activity, Collection<String> collection) {
        b(collection);
        a(new a(activity), a(collection));
    }

    public void b(Fragment fragment, Collection<String> collection) {
        b(new n(fragment), collection);
    }

    public void b(android.app.Fragment fragment, Collection<String> collection) {
        b(new n(fragment), collection);
    }

    private void b(n nVar, Collection<String> collection) {
        c(collection);
        a(new b(nVar), a(collection));
    }

    public void b(Activity activity, Collection<String> collection) {
        c(collection);
        a(new a(activity), a(collection));
    }

    private void b(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (a(str)) {
                    throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
                }
            }
        }
    }

    private void c(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (!a(str)) {
                    throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f254a.contains(str));
    }

    private static Set<String> a() {
        return Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.LoginManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                add("ads_management");
                add("create_event");
                add("rsvp_event");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LoginClient.Request a(Collection<String> collection) {
        LoginClient.Request request = new LoginClient.Request(this.c, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.d, com.facebook.d.j(), UUID.randomUUID().toString());
        request.a(AccessToken.a() != null);
        return request;
    }

    private void a(e eVar, LoginClient.Request request) {
        a(eVar.a(), request);
        CallbackManagerImpl.a(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.a() { // from class: com.facebook.login.d.1
        });
        if (!b(eVar, request)) {
            FacebookException facebookException = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            a(eVar.a(), LoginClient.Result.Code.ERROR, null, facebookException, false, request);
            throw facebookException;
        }
    }

    private void a(Context context, LoginClient.Request request) {
        com.facebook.login.c b2 = c.b(context);
        if (b2 != null && request != null) {
            b2.a(request);
        }
    }

    private void a(Context context, LoginClient.Result.Code code, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        com.facebook.login.c b2 = c.b(context);
        if (b2 != null) {
            if (request == null) {
                b2.c("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? "1" : "0");
            b2.a(request.e(), hashMap, code, map, exc);
        }
    }

    private boolean b(e eVar, LoginClient.Request request) {
        Intent a2 = a(request);
        if (a(a2)) {
            try {
                eVar.a(a2, LoginClient.d());
                return true;
            } catch (ActivityNotFoundException e) {
                return false;
            }
        }
        return false;
    }

    private boolean a(Intent intent) {
        return com.facebook.d.f().getPackageManager().resolveActivity(intent, 0) != null;
    }

    protected Intent a(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(com.facebook.d.f(), FacebookActivity.class);
        intent.setAction(request.b().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtra("com.facebook.LoginFragment:Request", bundle);
        return intent;
    }

    private void a(boolean z) {
        SharedPreferences.Editor edit = this.e.edit();
        edit.putBoolean("express_login_allowed", z);
        edit.apply();
    }

    /* compiled from: LoginManager.java */
    /* loaded from: classes.dex */
    private static class a implements e {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f256a;

        a(Activity activity) {
            ac.a(activity, "activity");
            this.f256a = activity;
        }

        @Override // com.facebook.login.e
        public void a(Intent intent, int i) {
            this.f256a.startActivityForResult(intent, i);
        }

        @Override // com.facebook.login.e
        public Activity a() {
            return this.f256a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoginManager.java */
    /* loaded from: classes.dex */
    public static class b implements e {

        /* renamed from: a  reason: collision with root package name */
        private final n f257a;

        b(n nVar) {
            ac.a(nVar, "fragment");
            this.f257a = nVar;
        }

        @Override // com.facebook.login.e
        public void a(Intent intent, int i) {
            this.f257a.a(intent, i);
        }

        @Override // com.facebook.login.e
        public Activity a() {
            return this.f257a.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LoginManager.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private static com.facebook.login.c f258a;

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized com.facebook.login.c b(Context context) {
            com.facebook.login.c cVar;
            synchronized (c.class) {
                if (context == null) {
                    context = com.facebook.d.f();
                }
                if (context == null) {
                    cVar = null;
                } else {
                    if (f258a == null) {
                        f258a = new com.facebook.login.c(context, com.facebook.d.j());
                    }
                    cVar = f258a;
                }
            }
            return cVar;
        }
    }
}