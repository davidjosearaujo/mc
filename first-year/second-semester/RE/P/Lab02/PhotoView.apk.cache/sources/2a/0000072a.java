package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator() { // from class: com.facebook.Profile.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f96a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final Uri f;

    public static Profile a() {
        return j.a().b();
    }

    public static void a(Profile profile) {
        j.a().a(profile);
    }

    public static void b() {
        AccessToken a2 = AccessToken.a();
        if (a2 == null) {
            a(null);
        } else {
            ab.a(a2.b(), new ab.a() { // from class: com.facebook.Profile.1
                @Override // com.facebook.internal.ab.a
                public void a(JSONObject jSONObject) {
                    String optString = jSONObject.optString("id");
                    if (optString != null) {
                        String optString2 = jSONObject.optString("link");
                        Profile.a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
                    }
                }

                @Override // com.facebook.internal.ab.a
                public void a(FacebookException facebookException) {
                }
            });
        }
    }

    public Profile(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri) {
        ac.a(str, "id");
        this.f96a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = uri;
    }

    public String c() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Profile) {
            Profile profile = (Profile) obj;
            if (this.f96a.equals(profile.f96a) && this.b == null) {
                return profile.b == null;
            } else if (this.b.equals(profile.b) && this.c == null) {
                return profile.c == null;
            } else if (this.c.equals(profile.c) && this.d == null) {
                return profile.d == null;
            } else if (this.d.equals(profile.d) && this.e == null) {
                return profile.e == null;
            } else if (this.e.equals(profile.e) && this.f == null) {
                return profile.f == null;
            } else {
                return this.f.equals(profile.f);
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f96a.hashCode() + 527;
        if (this.b != null) {
            hashCode = (hashCode * 31) + this.b.hashCode();
        }
        if (this.c != null) {
            hashCode = (hashCode * 31) + this.c.hashCode();
        }
        if (this.d != null) {
            hashCode = (hashCode * 31) + this.d.hashCode();
        }
        if (this.e != null) {
            hashCode = (hashCode * 31) + this.e.hashCode();
        }
        if (this.f != null) {
            return (hashCode * 31) + this.f.hashCode();
        }
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f96a);
            jSONObject.put("first_name", this.b);
            jSONObject.put("middle_name", this.c);
            jSONObject.put("last_name", this.d);
            jSONObject.put("name", this.e);
            if (this.f != null) {
                jSONObject.put("link_uri", this.f.toString());
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Profile(JSONObject jSONObject) {
        this.f96a = jSONObject.optString("id", null);
        this.b = jSONObject.optString("first_name", null);
        this.c = jSONObject.optString("middle_name", null);
        this.d = jSONObject.optString("last_name", null);
        this.e = jSONObject.optString("name", null);
        String optString = jSONObject.optString("link_uri", null);
        this.f = optString != null ? Uri.parse(optString) : null;
    }

    private Profile(Parcel parcel) {
        this.f96a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        String readString = parcel.readString();
        this.f = readString == null ? null : Uri.parse(readString);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f96a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f == null ? null : this.f.toString());
    }
}