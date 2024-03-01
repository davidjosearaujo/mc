package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.zzaf;

/* loaded from: classes.dex */
public class al implements Parcelable.Creator<zzayb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzayb zzaybVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaybVar.f540a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) zzaybVar.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) zzaybVar.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzayb createFromParcel(Parcel parcel) {
        zzaf zzafVar;
        ConnectionResult connectionResult;
        int i;
        zzaf zzafVar2 = null;
        int b = zzb.b(parcel);
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    zzaf zzafVar3 = zzafVar2;
                    connectionResult = connectionResult2;
                    i = zzb.d(parcel, a2);
                    zzafVar = zzafVar3;
                    break;
                case 2:
                    ConnectionResult connectionResult3 = (ConnectionResult) zzb.a(parcel, a2, ConnectionResult.CREATOR);
                    i = i2;
                    zzafVar = zzafVar2;
                    connectionResult = connectionResult3;
                    break;
                case 3:
                    zzafVar = (zzaf) zzb.a(parcel, a2, zzaf.CREATOR);
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
                default:
                    zzb.b(parcel, a2);
                    zzafVar = zzafVar2;
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
            }
            i2 = i;
            connectionResult2 = connectionResult;
            zzafVar2 = zzafVar;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzayb(i2, connectionResult2, zzafVar2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzayb[] newArray(int i) {
        return new zzayb[i];
    }
}