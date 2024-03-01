package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.ad;
import com.facebook.login.LoginClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.WebViewLoginMethodHandler.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    };
    private ad c;
    private String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public String a() {
        return "web_view";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    AccessTokenSource a_() {
        return AccessTokenSource.WEB_VIEW;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public void b() {
        if (this.c != null) {
            this.c.cancel();
            this.c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean a(final LoginClient.Request request) {
        Bundle b = b(request);
        ad.c cVar = new ad.c() { // from class: com.facebook.login.WebViewLoginMethodHandler.1
            @Override // com.facebook.internal.ad.c
            public void a(Bundle bundle, FacebookException facebookException) {
                WebViewLoginMethodHandler.this.b(request, bundle, facebookException);
            }
        };
        this.d = LoginClient.m();
        a("e2e", this.d);
        FragmentActivity b2 = this.b.b();
        this.c = new a(b2, request.d(), b).a(this.d).a(request.f()).a(cVar).a();
        FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
        facebookDialogFragment.setRetainInstance(true);
        facebookDialogFragment.a(this.c);
        facebookDialogFragment.show(b2.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    void b(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        super.a(request, bundle, facebookException);
    }

    /* loaded from: classes.dex */
    static class a extends ad.a {

        /* renamed from: a  reason: collision with root package name */
        private String f251a;
        private boolean b;

        public a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        public a a(String str) {
            this.f251a = str;
            return this;
        }

        public a a(boolean z) {
            this.b = z;
            return this;
        }

        @Override // com.facebook.internal.ad.a
        public ad a() {
            Bundle e = e();
            e.putString("redirect_uri", "fbconnect://success");
            e.putString("client_id", b());
            e.putString("e2e", this.f251a);
            e.putString("response_type", "token,signed_request");
            e.putString("return_scopes", "true");
            e.putString("auth_type", "rerequest");
            return ad.a(c(), "oauth", e, d(), f());
        }
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.d);
    }
}