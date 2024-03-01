package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.ab;
import com.facebook.login.LoginClient;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {
    private String c;

    abstract AccessTokenSource a_();

    private static final String e() {
        return "fb" + com.facebook.d.j() + "://authorize";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    protected String c() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle b(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!ab.a(request.a())) {
            String join = TextUtils.join(",", request.a());
            bundle.putString("scope", join);
            a("scope", join);
        }
        bundle.putString("default_audience", request.c().getNativeProtocolAudience());
        bundle.putString("state", a(request.e()));
        AccessToken a2 = AccessToken.a();
        String b = a2 != null ? a2.b() : null;
        if (b != null && b.equals(f())) {
            bundle.putString("access_token", b);
            a("access_token", "1");
        } else {
            ab.b(this.b.b());
            a("access_token", "0");
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle a(Bundle bundle, LoginClient.Request request) {
        bundle.putString("redirect_uri", e());
        bundle.putString("client_id", request.d());
        LoginClient loginClient = this.b;
        bundle.putString("e2e", LoginClient.m());
        bundle.putString("response_type", "token,signed_request");
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", "rerequest");
        if (c() != null) {
            bundle.putString("sso", c());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        String str;
        LoginClient.Result a2;
        this.c = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.c = bundle.getString("e2e");
            }
            try {
                AccessToken a3 = a(request.a(), bundle, a_(), request.d());
                a2 = LoginClient.Result.a(this.b.c(), a3);
                CookieSyncManager.createInstance(this.b.b()).sync();
                d(a3.b());
            } catch (FacebookException e) {
                a2 = LoginClient.Result.a(this.b.c(), null, e.getMessage());
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            a2 = LoginClient.Result.a(this.b.c(), "User canceled log in.");
        } else {
            this.c = null;
            String message = facebookException.getMessage();
            if (facebookException instanceof FacebookServiceException) {
                FacebookRequestError requestError = ((FacebookServiceException) facebookException).getRequestError();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(requestError.b()));
                message = requestError.toString();
            } else {
                str = null;
            }
            a2 = LoginClient.Result.a(this.b.c(), null, message, str);
        }
        if (!ab.a(this.c)) {
            b(this.c);
        }
        this.b.a(a2);
    }

    private String f() {
        return this.b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    private void d(String str) {
        this.b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }
}