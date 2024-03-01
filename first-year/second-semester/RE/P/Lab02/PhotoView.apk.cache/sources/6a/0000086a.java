package com.facebook.login.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import com.facebook.login.LoginBehavior;
import com.facebook.login.d;
import com.facebook.login.widget.LoginButton;

/* loaded from: classes.dex */
public class DeviceLoginButton extends LoginButton {

    /* renamed from: a  reason: collision with root package name */
    private Uri f259a;

    public DeviceLoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public DeviceLoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DeviceLoginButton(Context context) {
        super(context);
    }

    public void setDeviceRedirectUri(Uri uri) {
        this.f259a = uri;
    }

    public Uri getDeviceRedirectUri() {
        return this.f259a;
    }

    @Override // com.facebook.login.widget.LoginButton
    protected LoginButton.b getNewLoginClickListener() {
        return new a();
    }

    /* loaded from: classes.dex */
    private class a extends LoginButton.b {
        private a() {
            super();
        }

        @Override // com.facebook.login.widget.LoginButton.b
        protected d a() {
            com.facebook.login.a a2 = com.facebook.login.a.a();
            a2.a(DeviceLoginButton.this.getDefaultAudience());
            a2.a(LoginBehavior.DEVICE_AUTH);
            a2.a(DeviceLoginButton.this.getDeviceRedirectUri());
            return a2;
        }
    }
}