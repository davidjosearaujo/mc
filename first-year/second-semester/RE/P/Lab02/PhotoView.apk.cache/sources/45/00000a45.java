package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class b implements Parcelable.Creator<UserAddress> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(UserAddress userAddress, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, userAddress.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, userAddress.f488a, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, userAddress.b, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, userAddress.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, userAddress.d, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, userAddress.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, userAddress.f, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, userAddress.g, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, userAddress.h, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 10, userAddress.i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 11, userAddress.j, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 12, userAddress.k, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 13, userAddress.l, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 14, userAddress.m);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 15, userAddress.n, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 16, userAddress.o, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserAddress createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        boolean z = false;
        String str13 = null;
        String str14 = null;
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
                    str2 = zzb.k(parcel, a2);
                    break;
                case 4:
                    str3 = zzb.k(parcel, a2);
                    break;
                case 5:
                    str4 = zzb.k(parcel, a2);
                    break;
                case 6:
                    str5 = zzb.k(parcel, a2);
                    break;
                case 7:
                    str6 = zzb.k(parcel, a2);
                    break;
                case 8:
                    str7 = zzb.k(parcel, a2);
                    break;
                case 9:
                    str8 = zzb.k(parcel, a2);
                    break;
                case 10:
                    str9 = zzb.k(parcel, a2);
                    break;
                case 11:
                    str10 = zzb.k(parcel, a2);
                    break;
                case 12:
                    str11 = zzb.k(parcel, a2);
                    break;
                case 13:
                    str12 = zzb.k(parcel, a2);
                    break;
                case 14:
                    z = zzb.c(parcel, a2);
                    break;
                case 15:
                    str13 = zzb.k(parcel, a2);
                    break;
                case 16:
                    str14 = zzb.k(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new UserAddress(i, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserAddress[] newArray(int i) {
        return new UserAddress[i];
    }
}