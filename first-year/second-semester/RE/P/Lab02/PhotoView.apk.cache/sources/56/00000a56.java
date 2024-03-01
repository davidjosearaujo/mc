package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class af implements Parcelable.Creator<zzaxs> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaxs zzaxsVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaxsVar.f537a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzaxsVar.b);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 3, zzaxsVar.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxs createFromParcel(Parcel parcel) {
        boolean z = false;
        int b = zzb.b(parcel);
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    z = zzb.c(parcel, a2);
                    break;
                case 3:
                    arrayList = zzb.c(parcel, a2, Scope.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaxs(i, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxs[] newArray(int i) {
        return new zzaxs[i];
    }
}