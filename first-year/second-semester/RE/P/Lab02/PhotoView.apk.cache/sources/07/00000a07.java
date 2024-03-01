package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

@Deprecated
/* loaded from: classes.dex */
public class zzan extends zza {
    public static final Parcelable.Creator<zzan> CREATOR = new i();

    /* renamed from: a  reason: collision with root package name */
    final int f460a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(int i) {
        this.f460a = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}