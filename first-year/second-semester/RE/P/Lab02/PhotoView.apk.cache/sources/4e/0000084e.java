package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.ab;
import com.facebook.internal.z;
import com.facebook.login.LoginClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public abstract boolean a(LoginClient.Request request);

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean a(int i, int i2, Intent intent) {
        LoginClient.Result a2;
        LoginClient.Request c = this.b.c();
        if (intent == null) {
            a2 = LoginClient.Result.a(c, "Operation canceled");
        } else if (i2 == 0) {
            a2 = b(c, intent);
        } else if (i2 != -1) {
            a2 = LoginClient.Result.a(c, "Unexpected resultCode from authorization.", null);
        } else {
            a2 = a(c, intent);
        }
        if (a2 != null) {
            this.b.a(a2);
            return true;
        }
        this.b.i();
        return true;
    }

    private LoginClient.Result a(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a2 = a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        String b = b(extras);
        String string = extras.getString("e2e");
        if (!ab.a(string)) {
            b(string);
        }
        if (a2 == null && obj == null && b == null) {
            try {
                return LoginClient.Result.a(request, a(request.a(), extras, AccessTokenSource.FACEBOOK_APPLICATION_WEB, request.d()));
            } catch (FacebookException e) {
                return LoginClient.Result.a(request, null, e.getMessage());
            }
        } else if (z.f224a.contains(a2)) {
            return null;
        } else {
            if (z.b.contains(a2)) {
                return LoginClient.Result.a(request, (String) null);
            }
            return LoginClient.Result.a(request, a2, b, obj);
        }
    }

    private LoginClient.Result b(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a2 = a(extras);
        String obj = extras.get("error_code") != null ? extras.get("error_code").toString() : null;
        if ("CONNECTION_FAILURE".equals(obj)) {
            return LoginClient.Result.a(request, a2, b(extras), obj);
        }
        return LoginClient.Result.a(request, a2);
    }

    private String a(Bundle bundle) {
        String string = bundle.getString("error");
        if (string == null) {
            return bundle.getString("error_type");
        }
        return string;
    }

    private String b(Bundle bundle) {
        String string = bundle.getString("error_message");
        if (string == null) {
            return bundle.getString("error_description");
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.b.a().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}