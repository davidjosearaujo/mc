package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator<BitmapTeleporter> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, bitmapTeleporter.f408a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) bitmapTeleporter.b, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, bitmapTeleporter.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public BitmapTeleporter createFromParcel(Parcel parcel) {
        int d;
        ParcelFileDescriptor parcelFileDescriptor;
        int i;
        int i2 = 0;
        int b = zzb.b(parcel);
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    int i4 = i2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = zzb.d(parcel, a2);
                    d = i4;
                    break;
                case 2:
                    ParcelFileDescriptor parcelFileDescriptor3 = (ParcelFileDescriptor) zzb.a(parcel, a2, ParcelFileDescriptor.CREATOR);
                    i = i3;
                    d = i2;
                    parcelFileDescriptor = parcelFileDescriptor3;
                    break;
                case 3:
                    d = zzb.d(parcel, a2);
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i3;
                    break;
                default:
                    zzb.b(parcel, a2);
                    d = i2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i3;
                    break;
            }
            i3 = i;
            parcelFileDescriptor2 = parcelFileDescriptor;
            i2 = d;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new BitmapTeleporter(i3, parcelFileDescriptor2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}