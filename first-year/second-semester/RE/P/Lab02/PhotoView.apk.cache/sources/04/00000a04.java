package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.u;

/* loaded from: classes.dex */
public class zzaf extends zza {
    public static final Parcelable.Creator<zzaf> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f458a;
    IBinder b;
    private ConnectionResult c;
    private boolean d;
    private boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i, IBinder iBinder, ConnectionResult connectionResult, boolean z, boolean z2) {
        this.f458a = i;
        this.b = iBinder;
        this.c = connectionResult;
        this.d = z;
        this.e = z2;
    }

    public u a() {
        return u.a.a(this.b);
    }

    public ConnectionResult b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzaf) {
            zzaf zzafVar = (zzaf) obj;
            return this.c.equals(zzafVar.c) && a().equals(zzafVar.a());
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}