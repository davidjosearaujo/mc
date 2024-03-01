package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class j implements Parcelable.Creator<Status> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Status status, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, status.d());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, status.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) status.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, status.h);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Status createFromParcel(Parcel parcel) {
        PendingIntent pendingIntent = null;
        int i = 0;
        int b = com.google.android.gms.common.internal.safeparcel.zzb.b(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = com.google.android.gms.common.internal.safeparcel.zzb.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.a(a2)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.d(parcel, a2);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.k(parcel, a2);
                    break;
                case 3:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zzb.a(parcel, a2, PendingIntent.CREATOR);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.d(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new Status(i2, i, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Status[] newArray(int i) {
        return new Status[i];
    }
}