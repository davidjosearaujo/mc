package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzack;
import com.google.android.gms.internal.zzaco;

/* loaded from: classes.dex */
public class q implements Parcelable.Creator<zzaco.zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaco.zzb zzbVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzbVar.f532a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzbVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) zzbVar.c, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco.zzb createFromParcel(Parcel parcel) {
        zzack.zza zzaVar = null;
        int b = zzb.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    str = zzb.k(parcel, a2);
                    break;
                case 3:
                    zzaVar = (zzack.zza) zzb.a(parcel, a2, zzack.zza.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaco.zzb(i, str, zzaVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco.zzb[] newArray(int i) {
        return new zzaco.zzb[i];
    }
}