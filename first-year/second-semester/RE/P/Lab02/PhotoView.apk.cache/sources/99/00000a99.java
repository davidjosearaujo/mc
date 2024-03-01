package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class z implements Parcelable.Creator<zzawc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzawc zzawcVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzawcVar.f535a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzawcVar.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzawcVar.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzawcVar.d);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, zzawcVar.e);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, zzawcVar.f, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, zzawcVar.g, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, zzawcVar.h);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, zzawcVar.i);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzawc createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int i = 0;
        int b = zzb.b(parcel);
        long j = 0;
        double d = 0.0d;
        int i2 = 0;
        String str = null;
        boolean z = false;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i3 = zzb.d(parcel, a2);
                    break;
                case 2:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 3:
                    j = zzb.f(parcel, a2);
                    break;
                case 4:
                    z = zzb.c(parcel, a2);
                    break;
                case 5:
                    d = zzb.i(parcel, a2);
                    break;
                case 6:
                    str = zzb.k(parcel, a2);
                    break;
                case 7:
                    bArr = zzb.n(parcel, a2);
                    break;
                case 8:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 9:
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
        return new zzawc(i3, str2, j, z, d, str, bArr, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzawc[] newArray(int i) {
        return new zzawc[i];
    }
}