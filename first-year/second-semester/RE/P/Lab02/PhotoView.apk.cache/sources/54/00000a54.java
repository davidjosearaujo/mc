package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class ad implements Parcelable.Creator<zzaxp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaxp zzaxpVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaxpVar.f536a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzaxpVar.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) zzaxpVar.c(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxp createFromParcel(Parcel parcel) {
        int i = 0;
        int b = zzb.b(parcel);
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 2:
                    i = zzb.d(parcel, a2);
                    break;
                case 3:
                    intent = (Intent) zzb.a(parcel, a2, Intent.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaxp(i2, i, intent);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxp[] newArray(int i) {
        return new zzaxp[i];
    }
}