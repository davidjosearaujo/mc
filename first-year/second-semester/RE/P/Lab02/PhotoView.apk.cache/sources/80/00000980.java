package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;

/* loaded from: classes.dex */
public final class Status extends com.google.android.gms.common.internal.safeparcel.zza implements f, ReflectedParcelable {
    final int h;
    private final int i;
    private final String j;
    private final PendingIntent k;

    /* renamed from: a  reason: collision with root package name */
    public static final Status f399a = new Status(0);
    public static final Status b = new Status(14);
    public static final Status c = new Status(8);
    public static final Status d = new Status(15);
    public static final Status e = new Status(16);
    public static final Status f = new Status(17);
    public static final Status g = new Status(18);
    public static final Parcelable.Creator<Status> CREATOR = new j();

    public Status(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.h = i;
        this.i = i2;
        this.j = str;
        this.k = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    @Override // com.google.android.gms.common.api.f
    public Status a() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingIntent b() {
        return this.k;
    }

    @Nullable
    public String c() {
        return this.j;
    }

    public int d() {
        return this.i;
    }

    public String e() {
        return this.j != null ? this.j : b.a(this.i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Status) {
            Status status = (Status) obj;
            return this.h == status.h && this.i == status.i && com.google.android.gms.common.internal.b.a(this.j, status.j) && com.google.android.gms.common.internal.b.a(this.k, status.k);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.b.a(Integer.valueOf(this.h), Integer.valueOf(this.i), this.j, this.k);
    }

    public String toString() {
        return com.google.android.gms.common.internal.b.a(this).a("statusCode", e()).a("resolution", this.k).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        j.a(this, parcel, i);
    }
}