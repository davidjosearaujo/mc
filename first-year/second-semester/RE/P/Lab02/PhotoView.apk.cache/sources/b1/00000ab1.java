package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaf;

/* loaded from: classes.dex */
public class zzayb extends zza {
    public static final Parcelable.Creator<zzayb> CREATOR = new al();

    /* renamed from: a  reason: collision with root package name */
    final int f540a;
    private final ConnectionResult b;
    private final zzaf c;

    public zzayb(int i) {
        this(new ConnectionResult(i, null), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayb(int i, ConnectionResult connectionResult, zzaf zzafVar) {
        this.f540a = i;
        this.b = connectionResult;
        this.c = zzafVar;
    }

    public zzayb(ConnectionResult connectionResult, zzaf zzafVar) {
        this(1, connectionResult, zzafVar);
    }

    public ConnectionResult a() {
        return this.b;
    }

    public zzaf b() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        al.a(this, parcel, i);
    }
}