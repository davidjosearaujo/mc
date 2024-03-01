package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AccessToken implements Parcelable {
    private final Date e;
    private final Set<String> f;
    private final Set<String> g;
    private final String h;
    private final AccessTokenSource i;
    private final Date j;
    private final String k;
    private final String l;

    /* renamed from: a  reason: collision with root package name */
    private static final Date f73a = new Date(Long.MAX_VALUE);
    private static final Date b = f73a;
    private static final Date c = new Date();
    private static final AccessTokenSource d = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator() { // from class: com.facebook.AccessToken.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    };

    /* loaded from: classes.dex */
    public interface a {
        void a(AccessToken accessToken);

        void a(FacebookException facebookException);
    }

    public AccessToken(String str, String str2, String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2) {
        ac.a(str, "accessToken");
        ac.a(str2, "applicationId");
        ac.a(str3, "userId");
        this.e = date == null ? b : date;
        this.f = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.g = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.h = str;
        this.i = accessTokenSource == null ? d : accessTokenSource;
        this.j = date2 == null ? c : date2;
        this.k = str2;
        this.l = str3;
    }

    public static AccessToken a() {
        return b.a().b();
    }

    public static void a(AccessToken accessToken) {
        b.a().a(accessToken);
    }

    public String b() {
        return this.h;
    }

    public Date c() {
        return this.e;
    }

    public Set<String> d() {
        return this.f;
    }

    public Set<String> e() {
        return this.g;
    }

    public AccessTokenSource f() {
        return this.i;
    }

    public Date g() {
        return this.j;
    }

    public String h() {
        return this.k;
    }

    public String i() {
        return this.l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(l());
        a(sb);
        sb.append("}");
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessToken) {
            AccessToken accessToken = (AccessToken) obj;
            return this.e.equals(accessToken.e) && this.f.equals(accessToken.f) && this.g.equals(accessToken.g) && this.h.equals(accessToken.h) && this.i == accessToken.i && this.j.equals(accessToken.j) && (this.k != null ? this.k.equals(accessToken.k) : accessToken.k == null) && this.l.equals(accessToken.l);
        }
        return false;
    }

    public int hashCode() {
        return (((this.k == null ? 0 : this.k.hashCode()) + ((((((((((((this.e.hashCode() + 527) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + this.j.hashCode()) * 31)) * 31) + this.l.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken a(Bundle bundle) {
        List<String> a2 = a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> a3 = a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        String d2 = h.d(bundle);
        if (ab.a(d2)) {
            d2 = d.j();
        }
        String b2 = h.b(bundle);
        try {
            return new AccessToken(b2, d2, ab.d(b2).getString("id"), a2, a3, h.c(bundle), h.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), h.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
        } catch (JSONException e) {
            return null;
        }
    }

    static List<String> a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public boolean j() {
        return new Date().after(this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("version", 1);
        jSONObject.put("token", this.h);
        jSONObject.put("expires_at", this.e.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.g));
        jSONObject.put("last_refresh", this.j.getTime());
        jSONObject.put("source", this.i.name());
        jSONObject.put("application_id", this.k);
        jSONObject.put("user_id", this.l);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AccessToken a(JSONObject jSONObject) {
        if (jSONObject.getInt("version") > 1) {
            throw new FacebookException("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), ab.a(jSONArray), ab.a(jSONArray2), AccessTokenSource.valueOf(jSONObject.getString("source")), date, date2);
    }

    private String l() {
        if (this.h == null) {
            return "null";
        }
        if (d.a(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.h;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    private void a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f));
        sb.append("]");
    }

    AccessToken(Parcel parcel) {
        this.e = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.g = Collections.unmodifiableSet(new HashSet(arrayList));
        this.h = parcel.readString();
        this.i = AccessTokenSource.valueOf(parcel.readString());
        this.j = new Date(parcel.readLong());
        this.k = parcel.readString();
        this.l = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.e.getTime());
        parcel.writeStringList(new ArrayList(this.f));
        parcel.writeStringList(new ArrayList(this.g));
        parcel.writeString(this.h);
        parcel.writeString(this.i.name());
        parcel.writeLong(this.j.getTime());
        parcel.writeString(this.k);
        parcel.writeString(this.l);
    }
}