package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class t implements Parcelable.Creator<zzacr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzacr zzacrVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzacrVar.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzacrVar.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) zzacrVar.d(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzacr createFromParcel(Parcel parcel) {
        zzaco zzacoVar = null;
        int b = zzb.b(parcel);
        int i = 0;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    parcel2 = zzb.x(parcel, a2);
                    break;
                case 3:
                    zzacoVar = (zzaco) zzb.a(parcel, a2, zzaco.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzacr(i, parcel2, zzacoVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzacr[] newArray(int i) {
        return new zzacr[i];
    }
}