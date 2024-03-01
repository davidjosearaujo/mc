package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class FavaDiagnosticsEntity extends zza implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f463a;
    public final String b;
    public final int c;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.f463a = i;
        this.b = str;
        this.c = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}