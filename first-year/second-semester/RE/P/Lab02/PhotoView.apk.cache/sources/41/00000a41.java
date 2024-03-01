package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator<UserAddressRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(UserAddressRequest userAddressRequest, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, userAddressRequest.a());
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 2, userAddressRequest.f486a, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserAddressRequest createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    arrayList = zzb.c(parcel, a2, CountrySpecification.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new UserAddressRequest(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public UserAddressRequest[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}