package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator<CountrySpecification> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(CountrySpecification countrySpecification, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, countrySpecification.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, countrySpecification.f487a, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public CountrySpecification createFromParcel(Parcel parcel) {
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
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new CountrySpecification(i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public CountrySpecification[] newArray(int i) {
        return new CountrySpecification[i];
    }
}