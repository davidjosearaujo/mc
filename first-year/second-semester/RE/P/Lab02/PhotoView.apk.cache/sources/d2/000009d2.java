package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class k implements Parcelable.Creator<zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzd zzdVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzdVar.f461a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzdVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable[]) zzdVar.c, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzdVar.d, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, zzdVar.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzd createFromParcel(Parcel parcel) {
        Integer num = null;
        int b = zzb.b(parcel);
        int i = 0;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
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
                    scopeArr = (Scope[]) zzb.b(parcel, a2, Scope.CREATOR);
                    break;
                case 4:
                    num2 = zzb.e(parcel, a2);
                    break;
                case 5:
                    num = zzb.e(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzd(i, iBinder, scopeArr, num2, num);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzd[] newArray(int i) {
        return new zzd[i];
    }
}