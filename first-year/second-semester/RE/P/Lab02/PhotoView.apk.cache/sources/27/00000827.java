package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.customtabs.CustomTabsService;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.internal.k;
import com.facebook.internal.l;
import com.facebook.login.LoginClient;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    private String d;
    private String e;
    private static final String[] c = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.CustomTabLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.e = ab.a(20);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    AccessTokenSource a_() {
        return AccessTokenSource.CHROME_CUSTOM_TAB;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String c() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        if (!e()) {
            return false;
        }
        Bundle a2 = a(b(request), request);
        Intent intent = new Intent(this.b.b(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f77a, a2);
        intent.putExtra(CustomTabMainActivity.b, g());
        this.b.a().startActivityForResult(intent, 1);
        return true;
    }

    private boolean e() {
        return f() && g() != null && h() && ac.c(com.facebook.d.f());
    }

    private boolean f() {
        k a2 = l.a(ab.a(this.b.b()));
        return a2 != null && a2.d();
    }

    private String g() {
        if (this.d != null) {
            return this.d;
        }
        FragmentActivity b = this.b.b();
        List<ResolveInfo> queryIntentServices = b.getPackageManager().queryIntentServices(new Intent(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION), 0);
        if (queryIntentServices != null) {
            HashSet hashSet = new HashSet(Arrays.asList(c));
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    this.d = serviceInfo.packageName;
                    return this.d;
                }
            }
        }
        return null;
    }

    private boolean h() {
        return !ab.e(this.b.b());
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(int i, int i2, Intent intent) {
        if (i != 1) {
            return super.a(i, i2, intent);
        }
        LoginClient.Request c2 = this.b.c();
        if (i2 == -1) {
            a(intent.getStringExtra(CustomTabMainActivity.c), c2);
            return true;
        }
        super.a(c2, (Bundle) null, new FacebookOperationCanceledException());
        return false;
    }

    private void a(String str, LoginClient.Request request) {
        int i;
        if (str != null && str.startsWith(CustomTabMainActivity.a())) {
            Uri parse = Uri.parse(str);
            Bundle c2 = ab.c(parse.getQuery());
            c2.putAll(ab.c(parse.getFragment()));
            if (!a(c2)) {
                super.a(request, (Bundle) null, new FacebookException("Invalid state parameter"));
                return;
            }
            String string = c2.getString("error");
            if (string == null) {
                string = c2.getString("error_type");
            }
            String string2 = c2.getString("error_msg");
            if (string2 == null) {
                string2 = c2.getString("error_message");
            }
            if (string2 == null) {
                string2 = c2.getString("error_description");
            }
            String string3 = c2.getString("error_code");
            if (ab.a(string3)) {
                i = -1;
            } else {
                try {
                    i = Integer.parseInt(string3);
                } catch (NumberFormatException e) {
                    i = -1;
                }
            }
            if (ab.a(string) && ab.a(string2) && i == -1) {
                super.a(request, c2, (FacebookException) null);
            } else if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                super.a(request, (Bundle) null, new FacebookOperationCanceledException());
            } else if (i == 4201) {
                super.a(request, (Bundle) null, new FacebookOperationCanceledException());
            } else {
                super.a(request, (Bundle) null, new FacebookServiceException(new FacebookRequestError(i, string, string2), string2));
            }
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    protected void a(JSONObject jSONObject) {
        jSONObject.put("7_challenge", this.e);
    }

    private boolean a(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string == null) {
                return false;
            }
            return new JSONObject(string).getString("7_challenge").equals(this.e);
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.e = parcel.readString();
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.e);
    }
}