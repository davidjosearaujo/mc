package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzaco;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class s implements Parcelable.Creator<zzaco.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaco.zza zzaVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaVar.f531a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzaVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 3, zzaVar.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco.zza createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
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
                    arrayList = zzb.c(parcel, a2, zzaco.zzb.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaco.zza(i, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco.zza[] newArray(int i) {
        return new zzaco.zza[i];
    }
}