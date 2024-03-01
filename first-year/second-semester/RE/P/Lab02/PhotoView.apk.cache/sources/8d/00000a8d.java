package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzack;

/* loaded from: classes.dex */
public class p implements Parcelable.Creator<zzack.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzack.zza zzaVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaVar.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzaVar.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzaVar.c());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzaVar.d());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, zzaVar.e());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, zzaVar.f(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, zzaVar.g());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, zzaVar.i(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, (Parcelable) zzaVar.k(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzack.zza createFromParcel(Parcel parcel) {
        zzacf zzacfVar = null;
        int i = 0;
        int b = zzb.b(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i4 = zzb.d(parcel, a2);
                    break;
                case 2:
                    i3 = zzb.d(parcel, a2);
                    break;
                case 3:
                    z2 = zzb.c(parcel, a2);
                    break;
                case 4:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 5:
                    z = zzb.c(parcel, a2);
                    break;
                case 6:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 7:
                    i = zzb.d(parcel, a2);
                    break;
                case 8:
                    str = zzb.k(parcel, a2);
                    break;
                case 9:
                    zzacfVar = (zzacf) zzb.a(parcel, a2, zzacf.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzack.zza(i4, i3, z2, i2, z, str2, i, str, zzacfVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzack.zza[] newArray(int i) {
        return new zzack.zza[i];
    }
}