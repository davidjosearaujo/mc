package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzad;

/* loaded from: classes.dex */
public class zzaxz extends zza {
    public static final Parcelable.Creator<zzaxz> CREATOR = new ak();

    /* renamed from: a  reason: collision with root package name */
    final int f539a;
    final zzad b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxz(int i, zzad zzadVar) {
        this.f539a = i;
        this.b = zzadVar;
    }

    public zzaxz(zzad zzadVar) {
        this(1, zzadVar);
    }

    public zzad a() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ak.a(this, parcel, i);
    }
}