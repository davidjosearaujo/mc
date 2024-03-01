package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    LoginMethodHandler[] f242a;
    int b;
    Fragment c;
    b d;
    a e;
    boolean f;
    Request g;
    Map<String, String> h;
    private c i;

    /* loaded from: classes.dex */
    interface a {
        void a();

        void b();
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(Result result);
    }

    public LoginClient(Fragment fragment) {
        this.b = -1;
        this.c = fragment;
    }

    public Fragment a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Fragment fragment) {
        if (this.c != null) {
            throw new FacebookException("Can't set fragment once it is already set.");
        }
        this.c = fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentActivity b() {
        return this.c.getActivity();
    }

    public Request c() {
        return this.g;
    }

    public static int d() {
        return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Request request) {
        if (!e()) {
            b(request);
        }
    }

    void b(Request request) {
        if (request != null) {
            if (this.g != null) {
                throw new FacebookException("Attempted to authorize while a request is pending.");
            }
            if (AccessToken.a() == null || h()) {
                this.g = request;
                this.f242a = c(request);
                i();
            }
        }
    }

    boolean e() {
        return this.g != null && this.b >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (this.b >= 0) {
            g().b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginMethodHandler g() {
        if (this.b >= 0) {
            return this.f242a[this.b];
        }
        return null;
    }

    public boolean a(int i, int i2, Intent intent) {
        if (this.g != null) {
            return g().a(i, i2, intent);
        }
        return false;
    }

    protected LoginMethodHandler[] c(Request request) {
        ArrayList arrayList = new ArrayList();
        LoginBehavior b2 = request.b();
        if (b2.allowsGetTokenAuth()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
        }
        if (b2.allowsKatanaAuth()) {
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (b2.allowsFacebookLiteAuth()) {
            arrayList.add(new FacebookLiteLoginMethodHandler(this));
        }
        if (b2.allowsCustomTabAuth()) {
            arrayList.add(new CustomTabLoginMethodHandler(this));
        }
        if (b2.allowsWebViewAuth()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (b2.allowsDeviceAuth()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    boolean h() {
        if (this.f) {
            return true;
        }
        if (a("android.permission.INTERNET") != 0) {
            FragmentActivity b2 = b();
            b(Result.a(this.g, b2.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_title), b2.getString(com.facebook.common.R.string.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.f = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (this.b >= 0) {
            a(g().a(), "skipped", null, null, g().f249a);
        }
        while (this.f242a != null && this.b < this.f242a.length - 1) {
            this.b++;
            if (j()) {
                return;
            }
        }
        if (this.g != null) {
            n();
        }
    }

    private void n() {
        b(Result.a(this.g, "Login attempt failed.", null));
    }

    private void a(String str, String str2, boolean z) {
        if (this.h == null) {
            this.h = new HashMap();
        }
        if (this.h.containsKey(str) && z) {
            str2 = this.h.get(str) + "," + str2;
        }
        this.h.put(str, str2);
    }

    boolean j() {
        boolean z = false;
        LoginMethodHandler g = g();
        if (g.d() && !h()) {
            a("no_internet_permission", "1", false);
        } else {
            z = g.a(this.g);
            if (z) {
                o().a(this.g.e(), g.a());
            } else {
                o().b(this.g.e(), g.a());
                a("not_tried", g.a(), true);
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Result result) {
        if (result.b != null && AccessToken.a() != null) {
            c(result);
        } else {
            b(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Result result) {
        LoginMethodHandler g = g();
        if (g != null) {
            a(g.a(), result, g.f249a);
        }
        if (this.h != null) {
            result.f = this.h;
        }
        this.f242a = null;
        this.b = -1;
        this.g = null;
        this.h = null;
        d(result);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnCompletedListener(b bVar) {
        this.d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.e = aVar;
    }

    int a(String str) {
        return b().checkCallingOrSelfPermission(str);
    }

    void c(Result result) {
        Result a2;
        if (result.b == null) {
            throw new FacebookException("Can't validate without a token");
        }
        AccessToken a3 = AccessToken.a();
        AccessToken accessToken = result.b;
        if (a3 != null && accessToken != null) {
            try {
                if (a3.i().equals(accessToken.i())) {
                    a2 = Result.a(this.g, result.b);
                    b(a2);
                }
            } catch (Exception e) {
                b(Result.a(this.g, "Caught exception", e.getMessage()));
                return;
            }
        }
        a2 = Result.a(this.g, "User logged in as different Facebook user.", null);
        b(a2);
    }

    private c o() {
        if (this.i == null || !this.i.a().equals(this.g.d())) {
            this.i = new c(b(), this.g.d());
        }
        return this.i;
    }

    private void d(Result result) {
        if (this.d != null) {
            this.d.a(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (this.e != null) {
            this.e.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        if (this.e != null) {
            this.e.b();
        }
    }

    private void a(String str, Result result, Map<String, String> map) {
        a(str, result.f244a.getLoggingValue(), result.c, result.d, map);
    }

    private void a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.g == null) {
            o().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            o().a(this.g.e(), str, str2, str3, str4, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String m() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* loaded from: classes.dex */
    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.Request.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final LoginBehavior f243a;
        private Set<String> b;
        private final DefaultAudience c;
        private final String d;
        private final String e;
        private boolean f;
        private String g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Request(LoginBehavior loginBehavior, Set<String> set, DefaultAudience defaultAudience, String str, String str2) {
            this.f = false;
            this.f243a = loginBehavior;
            this.b = set == null ? new HashSet<>() : set;
            this.c = defaultAudience;
            this.d = str;
            this.e = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Set<String> a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(Set<String> set) {
            ac.a((Object) set, "permissions");
            this.b = set;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public LoginBehavior b() {
            return this.f243a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public DefaultAudience c() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String d() {
            return this.d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String e() {
            return this.e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean f() {
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(boolean z) {
            this.f = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String g() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(String str) {
            this.g = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean h() {
            for (String str : this.b) {
                if (d.a(str)) {
                    return true;
                }
            }
            return false;
        }

        private Request(Parcel parcel) {
            this.f = false;
            String readString = parcel.readString();
            this.f243a = readString != null ? LoginBehavior.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.c = readString2 != null ? DefaultAudience.valueOf(readString2) : null;
            this.d = parcel.readString();
            this.e = parcel.readString();
            this.f = parcel.readByte() != 0;
            this.g = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f243a != null ? this.f243a.name() : null);
            parcel.writeStringList(new ArrayList(this.b));
            parcel.writeString(this.c != null ? this.c.name() : null);
            parcel.writeString(this.d);
            parcel.writeString(this.e);
            parcel.writeByte((byte) (this.f ? 1 : 0));
            parcel.writeString(this.g);
        }
    }

    /* loaded from: classes.dex */
    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.Result.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Result[] newArray(int i) {
                return new Result[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        final Code f244a;
        final AccessToken b;
        final String c;
        final String d;
        final Request e;
        public Map<String, String> f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public enum Code {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");
            
            private final String loggingValue;

            Code(String str) {
                this.loggingValue = str;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public String getLoggingValue() {
                return this.loggingValue;
            }
        }

        Result(Request request, Code code, AccessToken accessToken, String str, String str2) {
            ac.a(code, "code");
            this.e = request;
            this.b = accessToken;
            this.c = str;
            this.f244a = code;
            this.d = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result a(Request request, AccessToken accessToken) {
            return new Result(request, Code.SUCCESS, accessToken, null, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result a(Request request, String str) {
            return new Result(request, Code.CANCEL, null, str, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result a(Request request, String str, String str2) {
            return a(request, str, str2, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static Result a(Request request, String str, String str2, String str3) {
            return new Result(request, Code.ERROR, null, TextUtils.join(": ", ab.b(str, str2)), str3);
        }

        private Result(Parcel parcel) {
            this.f244a = Code.valueOf(parcel.readString());
            this.b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.c = parcel.readString();
            this.d = parcel.readString();
            this.e = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f = ab.a(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f244a.name());
            parcel.writeParcelable(this.b, i);
            parcel.writeString(this.c);
            parcel.writeString(this.d);
            parcel.writeParcelable(this.e, i);
            ab.a(parcel, this.f);
        }
    }

    public LoginClient(Parcel parcel) {
        this.b = -1;
        Parcelable[] readParcelableArray = parcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f242a = new LoginMethodHandler[readParcelableArray.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < readParcelableArray.length) {
                this.f242a[i2] = (LoginMethodHandler) readParcelableArray[i2];
                this.f242a[i2].a(this);
                i = i2 + 1;
            } else {
                this.b = parcel.readInt();
                this.g = (Request) parcel.readParcelable(Request.class.getClassLoader());
                this.h = ab.a(parcel);
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelableArray(this.f242a, i);
        parcel.writeInt(this.b);
        parcel.writeParcelable(this.g, i);
        ab.a(parcel, this.h);
    }
}