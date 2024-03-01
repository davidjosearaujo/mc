package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class e implements Parcelable.Creator<ConnectionResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ConnectionResult connectionResult, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, connectionResult.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, connectionResult.c());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) connectionResult.d(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, connectionResult.e(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public ConnectionResult createFromParcel(Parcel parcel) {
        String k;
        PendingIntent pendingIntent;
        int i;
        int i2;
        String str = null;
        int i3 = 0;
        int b = zzb.b(parcel);
        PendingIntent pendingIntent2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    String str2 = str;
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = zzb.d(parcel, a2);
                    k = str2;
                    break;
                case 2:
                    i2 = i4;
                    PendingIntent pendingIntent3 = pendingIntent2;
                    i = zzb.d(parcel, a2);
                    k = str;
                    pendingIntent = pendingIntent3;
                    break;
                case 3:
                    i = i3;
                    i2 = i4;
                    String str3 = str;
                    pendingIntent = (PendingIntent) zzb.a(parcel, a2, PendingIntent.CREATOR);
                    k = str3;
                    break;
                case 4:
                    k = zzb.k(parcel, a2);
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = i4;
                    break;
                default:
                    zzb.b(parcel, a2);
                    k = str;
                    pendingIntent = pendingIntent2;
                    i = i3;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            i3 = i;
            pendingIntent2 = pendingIntent;
            str = k;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new ConnectionResult(i4, i3, pendingIntent2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public ConnectionResult[] newArray(int i) {
        return new ConnectionResult[i];
    }
}