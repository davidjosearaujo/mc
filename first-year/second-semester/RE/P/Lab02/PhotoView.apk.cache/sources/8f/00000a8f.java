package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzaco;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class r implements Parcelable.Creator<zzaco> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaco zzacoVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzacoVar.f530a);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 2, zzacoVar.b(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzacoVar.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco createFromParcel(Parcel parcel) {
        String str = null;
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
                    arrayList = zzb.c(parcel, a2, zzaco.zza.CREATOR);
                    break;
                case 3:
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
        return new zzaco(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaco[] newArray(int i) {
        return new zzaco[i];
    }
}