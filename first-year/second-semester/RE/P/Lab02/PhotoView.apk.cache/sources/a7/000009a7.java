package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class b implements Parcelable.Creator<DataHolder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(DataHolder dataHolder, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, dataHolder.b(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable[]) dataHolder.c(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, dataHolder.d());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, dataHolder.e(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, dataHolder.f409a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public DataHolder createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int b = zzb.b(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    strArr = zzb.v(parcel, a2);
                    break;
                case 2:
                    cursorWindowArr = (CursorWindow[]) zzb.b(parcel, a2, CursorWindow.CREATOR);
                    break;
                case 3:
                    i = zzb.d(parcel, a2);
                    break;
                case 4:
                    bundle = zzb.m(parcel, a2);
                    break;
                case 1000:
                    i2 = zzb.d(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.a();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}