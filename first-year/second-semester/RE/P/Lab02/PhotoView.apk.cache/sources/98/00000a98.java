package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class y implements Parcelable.Creator<zzawa> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzawa zzawaVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzawaVar.f534a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzawaVar.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable[]) zzawaVar.c, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzawaVar.d, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzawa createFromParcel(Parcel parcel) {
        String[] v;
        zzawc[] zzawcVarArr;
        int i;
        int i2;
        String[] strArr = null;
        int i3 = 0;
        int b = zzb.b(parcel);
        zzawc[] zzawcVarArr2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    String[] strArr2 = strArr;
                    zzawcVarArr = zzawcVarArr2;
                    i = i3;
                    i2 = zzb.d(parcel, a2);
                    v = strArr2;
                    break;
                case 2:
                    i2 = i4;
                    zzawc[] zzawcVarArr3 = zzawcVarArr2;
                    i = zzb.d(parcel, a2);
                    v = strArr;
                    zzawcVarArr = zzawcVarArr3;
                    break;
                case 3:
                    i = i3;
                    i2 = i4;
                    String[] strArr3 = strArr;
                    zzawcVarArr = (zzawc[]) zzb.b(parcel, a2, zzawc.CREATOR);
                    v = strArr3;
                    break;
                case 4:
                    v = zzb.v(parcel, a2);
                    zzawcVarArr = zzawcVarArr2;
                    i = i3;
                    i2 = i4;
                    break;
                default:
                    zzb.b(parcel, a2);
                    v = strArr;
                    zzawcVarArr = zzawcVarArr2;
                    i = i3;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            i3 = i;
            zzawcVarArr2 = zzawcVarArr;
            strArr = v;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzawa(i4, i3, zzawcVarArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzawa[] newArray(int i) {
        return new zzawa[i];
    }
}