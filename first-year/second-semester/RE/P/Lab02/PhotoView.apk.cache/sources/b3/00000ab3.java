package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator<PlaceReport> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(PlaceReport placeReport, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, placeReport.f541a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, placeReport.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, placeReport.b(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, placeReport.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public PlaceReport createFromParcel(Parcel parcel) {
        String str = null;
        int b = zzb.b(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    str3 = zzb.k(parcel, a2);
                    break;
                case 3:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 4:
                    str = zzb.k(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new PlaceReport(i, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public PlaceReport[] newArray(int i) {
        return new PlaceReport[i];
    }
}