package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.w;
import com.facebook.login.LoginClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "katana_proxy_auth";
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        String m = LoginClient.m();
        Intent b = w.b(this.b.b(), request.d(), request.a(), m, request.f(), request.h(), request.c(), a(request.e()));
        a("e2e", m);
        return a(b, LoginClient.d());
    }

    KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}