package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.ab;
import com.facebook.login.LoginClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f249a;
    protected LoginClient b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a(LoginClient.Request request);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginMethodHandler(LoginClient loginClient) {
        this.b = loginClient;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginMethodHandler(Parcel parcel) {
        this.f249a = ab.a(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LoginClient loginClient) {
        if (this.b != null) {
            throw new FacebookException("Can't set LoginClient if it is already set.");
        }
        this.b = loginClient;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i, int i2, Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
    }

    void a(JSONObject jSONObject) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", a());
            a(jSONObject);
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Object obj) {
        if (this.f249a == null) {
            this.f249a = new HashMap();
        }
        this.f249a.put(str, obj == null ? null : obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        String d = this.b.c().d();
        AppEventsLogger c = AppEventsLogger.c(this.b.b(), d);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", d);
        c.a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken a(Bundle bundle, AccessTokenSource accessTokenSource, String str) {
        Date a2 = ab.a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (ab.a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, accessTokenSource, a2, new Date());
    }

    public static AccessToken a(Collection<String> collection, Bundle bundle, AccessTokenSource accessTokenSource, String str) {
        Date a2 = ab.a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        String string2 = bundle.getString("granted_scopes");
        Collection<String> arrayList = !ab.a(string2) ? new ArrayList<>(Arrays.asList(string2.split(","))) : collection;
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList2 = !ab.a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        if (ab.a(string)) {
            return null;
        }
        return new AccessToken(string, str, c(bundle.getString("signed_request")), arrayList, arrayList2, accessTokenSource, a2, new Date());
    }

    static String c(String str) {
        if (str == null || str.isEmpty()) {
            throw new FacebookException("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), "UTF-8")).getString("user_id");
            }
        } catch (UnsupportedEncodingException e) {
        } catch (JSONException e2) {
        }
        throw new FacebookException("Failed to retrieve user_id from signed_request");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ab.a(parcel, this.f249a);
    }
}