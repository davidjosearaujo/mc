package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.EnvironmentCompat;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class PlaceReport extends zza implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f541a;
    private final String b;
    private final String c;
    private final String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceReport(int i, String str, String str2, String str3) {
        this.f541a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PlaceReport) {
            PlaceReport placeReport = (PlaceReport) obj;
            return b.a(this.b, placeReport.b) && b.a(this.c, placeReport.c) && b.a(this.d, placeReport.d);
        }
        return false;
    }

    public int hashCode() {
        return b.a(this.b, this.c, this.d);
    }

    public String toString() {
        b.a a2 = b.a(this);
        a2.a("placeId", this.b);
        a2.a("tag", this.c);
        if (!EnvironmentCompat.MEDIA_UNKNOWN.equals(this.d)) {
            a2.a("source", this.d);
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}