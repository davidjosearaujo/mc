package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* loaded from: classes.dex */
public final class Scope extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    final int f398a;
    private final String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Scope(int i, String str) {
        com.google.android.gms.common.internal.c.a(str, (Object) "scopeUri must not be null or empty");
        this.f398a = i;
        this.b = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public String a() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.b.equals(((Scope) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}