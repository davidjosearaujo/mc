package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.w;
import com.facebook.login.LoginClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.FacebookLiteLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookLiteLoginMethodHandler[] newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookLiteLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "fb_lite_login";
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        String m = LoginClient.m();
        Intent a2 = w.a(this.b.b(), request.d(), request.a(), m, request.f(), request.h(), request.c(), a(request.e()));
        a("e2e", m);
        return a(a2, LoginClient.d());
    }

    FacebookLiteLoginMethodHandler(Parcel parcel) {
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