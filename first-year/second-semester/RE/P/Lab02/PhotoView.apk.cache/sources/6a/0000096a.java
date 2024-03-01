package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInOptions extends zza implements a.InterfaceC0018a.c, ReflectedParcelable {
    final int e;
    private final ArrayList<Scope> f;
    private Account g;
    private boolean h;
    private final boolean i;
    private final boolean j;
    private String k;
    private String l;

    /* renamed from: a  reason: collision with root package name */
    public static final Scope f386a = new Scope("profile");
    public static final Scope b = new Scope(NotificationCompat.CATEGORY_EMAIL);
    public static final Scope c = new Scope("openid");
    public static final GoogleSignInOptions d = new a().a().b().c();
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR = new b();
    private static Comparator<Scope> m = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInOptions.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Scope scope, Scope scope2) {
            return scope.a().compareTo(scope2.a());
        }
    };

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set<Scope> f387a = new HashSet();
        private boolean b;
        private boolean c;
        private boolean d;
        private String e;
        private Account f;
        private String g;

        public a a() {
            this.f387a.add(GoogleSignInOptions.c);
            return this;
        }

        public a b() {
            this.f387a.add(GoogleSignInOptions.f386a);
            return this;
        }

        public GoogleSignInOptions c() {
            if (this.d && (this.f == null || !this.f387a.isEmpty())) {
                a();
            }
            return new GoogleSignInOptions(this.f387a, this.f, this.d, this.b, this.c, this.e, this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this.e = i;
        this.f = arrayList;
        this.g = account;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = str;
        this.l = str2;
    }

    private GoogleSignInOptions(Set<Scope> set, Account account, boolean z, boolean z2, boolean z3, String str, String str2) {
        this(2, new ArrayList(set), account, z, z2, z3, str, str2);
    }

    @Nullable
    public static GoogleSignInOptions a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(hashSet, !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null));
    }

    public ArrayList<Scope> a() {
        return new ArrayList<>(this.f);
    }

    public Account b() {
        return this.g;
    }

    public boolean c() {
        return this.h;
    }

    public boolean d() {
        return this.i;
    }

    public boolean e() {
        return this.j;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f.size() == googleSignInOptions.a().size() && this.f.containsAll(googleSignInOptions.a())) {
                if (this.g == null) {
                    if (googleSignInOptions.b() != null) {
                        return false;
                    }
                } else if (!this.g.equals(googleSignInOptions.b())) {
                    return false;
                }
                if (TextUtils.isEmpty(this.k)) {
                    if (!TextUtils.isEmpty(googleSignInOptions.f())) {
                        return false;
                    }
                } else if (!this.k.equals(googleSignInOptions.f())) {
                    return false;
                }
                if (this.j == googleSignInOptions.e() && this.h == googleSignInOptions.c()) {
                    return this.i == googleSignInOptions.d();
                }
                return false;
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public String f() {
        return this.k;
    }

    public String g() {
        return this.l;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        Iterator<Scope> it = this.f.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        Collections.sort(arrayList);
        return new com.google.android.gms.auth.api.signin.a.a().a(arrayList).a(this.g).a(this.k).a(this.j).a(this.h).a(this.i).a();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}