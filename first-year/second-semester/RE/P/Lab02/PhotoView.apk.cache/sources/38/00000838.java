package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.ab;
import com.facebook.internal.x;
import com.facebook.login.LoginClient;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.GetTokenLoginMethodHandler.3
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    };
    private b c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String a() {
        return "get_token";
    }

    @Override // com.facebook.login.LoginMethodHandler
    void b() {
        if (this.c != null) {
            this.c.b();
            this.c.a((x.a) null);
            this.c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(final LoginClient.Request request) {
        this.c = new b(this.b.b(), request.d());
        if (!this.c.a()) {
            return false;
        }
        this.b.k();
        this.c.a(new x.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.1
            @Override // com.facebook.internal.x.a
            public void a(Bundle bundle) {
                GetTokenLoginMethodHandler.this.a(request, bundle);
            }
        });
        return true;
    }

    void a(LoginClient.Request request, Bundle bundle) {
        if (this.c != null) {
            this.c.a((x.a) null);
        }
        this.c = null;
        this.b.l();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> a2 = request.a();
            if (stringArrayList != null && (a2 == null || stringArrayList.containsAll(a2))) {
                c(request, bundle);
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : a2) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                a("new_permissions", TextUtils.join(",", hashSet));
            }
            request.a(hashSet);
        }
        this.b.i();
    }

    void b(LoginClient.Request request, Bundle bundle) {
        this.b.a(LoginClient.Result.a(this.b.c(), a(bundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE, request.d())));
    }

    void c(final LoginClient.Request request, final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.b.k();
            ab.a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new ab.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.2
                @Override // com.facebook.internal.ab.a
                public void a(JSONObject jSONObject) {
                    try {
                        bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString("id"));
                        GetTokenLoginMethodHandler.this.b(request, bundle);
                    } catch (JSONException e) {
                        GetTokenLoginMethodHandler.this.b.b(LoginClient.Result.a(GetTokenLoginMethodHandler.this.b.c(), "Caught exception", e.getMessage()));
                    }
                }

                @Override // com.facebook.internal.ab.a
                public void a(FacebookException facebookException) {
                    GetTokenLoginMethodHandler.this.b.b(LoginClient.Result.a(GetTokenLoginMethodHandler.this.b.c(), "Caught exception", facebookException.getMessage()));
                }
            });
            return;
        }
        b(request, bundle);
    }

    GetTokenLoginMethodHandler(Parcel parcel) {
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