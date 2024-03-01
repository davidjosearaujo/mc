package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.zzad;

/* loaded from: classes.dex */
public class ak implements Parcelable.Creator<zzaxz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaxz zzaxzVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaxzVar.f539a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) zzaxzVar.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxz createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        zzad zzadVar = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    zzadVar = (zzad) zzb.a(parcel, a2, zzad.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaxz(i, zzadVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxz[] newArray(int i) {
        return new zzaxz[i];
    }
}