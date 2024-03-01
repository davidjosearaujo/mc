package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.ab;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class FacebookRequestError implements Parcelable {
    private final Category b;
    private final int c;
    private final int d;
    private final int e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final JSONObject k;
    private final JSONObject l;
    private final Object m;
    private final HttpURLConnection n;
    private final FacebookException o;

    /* renamed from: a  reason: collision with root package name */
    static final a f83a = new a(200, 299);
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new Parcelable.Creator<FacebookRequestError>() { // from class: com.facebook.FacebookRequestError.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    };

    /* loaded from: classes.dex */
    public enum Category {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f85a;
        private final int b;

        private a(int i, int i2) {
            this.f85a = i;
            this.b = i2;
        }

        boolean a(int i) {
            return this.f85a <= i && i <= this.b;
        }
    }

    private FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, boolean z, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = str;
        this.g = str2;
        this.l = jSONObject;
        this.k = jSONObject2;
        this.m = obj;
        this.n = httpURLConnection;
        this.h = str3;
        this.i = str4;
        boolean z2 = false;
        if (facebookException != null) {
            this.o = facebookException;
            z2 = true;
        } else {
            this.o = new FacebookServiceException(this, str2);
        }
        com.facebook.internal.h h = h();
        this.b = z2 ? Category.OTHER : h.a(i2, i3, z);
        this.j = h.a(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookRequestError(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof FacebookException ? (FacebookException) exc : new FacebookException(exc));
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    public int a() {
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.e;
    }

    public String d() {
        return this.f;
    }

    public String e() {
        return this.g != null ? this.g : this.o.getLocalizedMessage();
    }

    public JSONObject f() {
        return this.k;
    }

    public FacebookException g() {
        return this.o;
    }

    public String toString() {
        return "{HttpStatus: " + this.c + ", errorCode: " + this.d + ", errorType: " + this.f + ", errorMessage: " + e() + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FacebookRequestError a(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        try {
            if (jSONObject.has("code")) {
                int i = jSONObject.getInt("code");
                Object a2 = ab.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                if (a2 != null && (a2 instanceof JSONObject)) {
                    JSONObject jSONObject2 = (JSONObject) a2;
                    String str = null;
                    String str2 = null;
                    String str3 = null;
                    String str4 = null;
                    boolean z = false;
                    int i2 = -1;
                    int i3 = -1;
                    boolean z2 = false;
                    if (jSONObject2.has("error")) {
                        JSONObject jSONObject3 = (JSONObject) ab.a(jSONObject2, "error", (String) null);
                        str = jSONObject3.optString("type", null);
                        str2 = jSONObject3.optString("message", null);
                        i2 = jSONObject3.optInt("code", -1);
                        i3 = jSONObject3.optInt("error_subcode", -1);
                        str3 = jSONObject3.optString("error_user_msg", null);
                        str4 = jSONObject3.optString("error_user_title", null);
                        z = jSONObject3.optBoolean("is_transient", false);
                        z2 = true;
                    } else if (jSONObject2.has("error_code") || jSONObject2.has("error_msg") || jSONObject2.has("error_reason")) {
                        str = jSONObject2.optString("error_reason", null);
                        str2 = jSONObject2.optString("error_msg", null);
                        i2 = jSONObject2.optInt("error_code", -1);
                        i3 = jSONObject2.optInt("error_subcode", -1);
                        z2 = true;
                    }
                    if (z2) {
                        return new FacebookRequestError(i, i2, i3, str, str2, str4, str3, z, jSONObject2, jSONObject, obj, httpURLConnection, null);
                    }
                }
                if (!f83a.a(i)) {
                    return new FacebookRequestError(i, -1, -1, null, null, null, null, false, jSONObject.has("body") ? (JSONObject) ab.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
                }
            }
        } catch (JSONException e) {
        }
        return null;
    }

    static synchronized com.facebook.internal.h h() {
        com.facebook.internal.h a2;
        synchronized (FacebookRequestError.class) {
            com.facebook.internal.k a3 = com.facebook.internal.l.a(d.j());
            a2 = a3 == null ? com.facebook.internal.h.a() : a3.i();
        }
        return a2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
    }

    private FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}