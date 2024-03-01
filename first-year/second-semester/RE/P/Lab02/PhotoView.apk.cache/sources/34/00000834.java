package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.DeviceAuthMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    };
    private static ScheduledThreadPoolExecutor c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        b(request);
        return true;
    }

    private void b(LoginClient.Request request) {
        DeviceAuthDialog deviceAuthDialog = new DeviceAuthDialog();
        deviceAuthDialog.show(this.b.b().getSupportFragmentManager(), "login_with_facebook");
        deviceAuthDialog.a(request);
    }

    public void b_() {
        this.b.a(LoginClient.Result.a(this.b.c(), "User canceled log in."));
    }

    public void a(Exception exc) {
        this.b.a(LoginClient.Result.a(this.b.c(), null, exc.getMessage()));
    }

    public void a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, AccessTokenSource accessTokenSource, Date date, Date date2) {
        this.b.a(LoginClient.Result.a(this.b.c(), new AccessToken(str, str2, str3, collection, collection2, accessTokenSource, date, date2)));
    }

    public static synchronized ScheduledThreadPoolExecutor c() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            if (c == null) {
                c = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = c;
        }
        return scheduledThreadPoolExecutor;
    }

    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "device_auth";
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