package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzach;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class n implements Parcelable.Creator<zzach> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzach zzachVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzachVar.f527a);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 2, zzachVar.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzach createFromParcel(Parcel parcel) {
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
                    arrayList = zzb.c(parcel, a2, zzach.zza.CREATOR);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzach(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzach[] newArray(int i) {
        return new zzach[i];
    }
}