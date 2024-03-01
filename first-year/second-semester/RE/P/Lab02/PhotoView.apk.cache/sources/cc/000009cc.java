package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class e implements Parcelable.Creator<zzaf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaf zzafVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzafVar.f458a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzafVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) zzafVar.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzafVar.c());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, zzafVar.d());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaf createFromParcel(Parcel parcel) {
        ConnectionResult connectionResult = null;
        boolean z = false;
        int b = zzb.b(parcel);
        boolean z2 = false;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    iBinder = zzb.l(parcel, a2);
                    break;
                case 3:
                    connectionResult = (ConnectionResult) zzb.a(parcel, a2, ConnectionResult.CREATOR);
                    break;
                case 4:
                    z2 = zzb.c(parcel, a2);
                    break;
                case 5:
                    z = zzb.c(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaf(i, iBinder, connectionResult, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaf[] newArray(int i) {
        return new zzaf[i];
    }
}