package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class f implements Parcelable.Creator<zzah> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzah zzahVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzahVar.f459a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzahVar.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzahVar.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, (Parcelable[]) zzahVar.c(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzah createFromParcel(Parcel parcel) {
        int i = 0;
        int b = zzb.b(parcel);
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i3 = zzb.d(parcel, a2);
                    break;
                case 2:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 3:
                    i = zzb.d(parcel, a2);
                    break;
                case 4:
                    scopeArr = (Scope[]) zzb.b(parcel, a2, Scope.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzah(i3, i2, i, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzah[] newArray(int i) {
        return new zzah[i];
    }
}