package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class m implements Parcelable.Creator<zzacf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzacf zzacfVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzacfVar.f526a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) zzacfVar.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzacf createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        zzach zzachVar = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    zzachVar = (zzach) zzb.a(parcel, a2, zzach.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzacf(i, zzachVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzacf[] newArray(int i) {
        return new zzacf[i];
    }
}