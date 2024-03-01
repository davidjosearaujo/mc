package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzach;

/* loaded from: classes.dex */
public class o implements Parcelable.Creator<zzach.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzach.zza zzaVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaVar.f528a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzaVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzaVar.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzach.zza createFromParcel(Parcel parcel) {
        int i = 0;
        int b = zzb.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 2:
                    str = zzb.k(parcel, a2);
                    break;
                case 3:
                    i = zzb.d(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzach.zza(i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzach.zza[] newArray(int i) {
        return new zzach.zza[i];
    }
}