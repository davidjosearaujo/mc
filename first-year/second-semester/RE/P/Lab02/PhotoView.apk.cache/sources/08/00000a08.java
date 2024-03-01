package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzd extends zza {
    public static final Parcelable.Creator<zzd> CREATOR = new k();

    /* renamed from: a  reason: collision with root package name */
    final int f461a;
    final IBinder b;
    final Scope[] c;
    Integer d;
    Integer e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2) {
        this.f461a = i;
        this.b = iBinder;
        this.c = scopeArr;
        this.d = num;
        this.e = num2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.a(this, parcel, i);
    }
}