package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e implements Parcelable.Creator<WakeLockEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(WakeLockEvent wakeLockEvent, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, wakeLockEvent.f464a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, wakeLockEvent.a());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, wakeLockEvent.e(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, wakeLockEvent.h());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, wakeLockEvent.i(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, wakeLockEvent.k());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 10, wakeLockEvent.f(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 11, wakeLockEvent.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 12, wakeLockEvent.j(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 13, wakeLockEvent.m(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 14, wakeLockEvent.l());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 15, wakeLockEvent.n());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 16, wakeLockEvent.o());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 17, wakeLockEvent.g(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WakeLockEvent createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        ArrayList<String> arrayList = null;
        String str2 = null;
        long j2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = 0.0f;
        long j3 = 0;
        String str5 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    j = zzb.f(parcel, a2);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    zzb.b(parcel, a2);
                    break;
                case 4:
                    str = zzb.k(parcel, a2);
                    break;
                case 5:
                    i3 = zzb.d(parcel, a2);
                    break;
                case 6:
                    arrayList = zzb.w(parcel, a2);
                    break;
                case 8:
                    j2 = zzb.f(parcel, a2);
                    break;
                case 10:
                    str3 = zzb.k(parcel, a2);
                    break;
                case 11:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 12:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 13:
                    str4 = zzb.k(parcel, a2);
                    break;
                case 14:
                    i4 = zzb.d(parcel, a2);
                    break;
                case 15:
                    f = zzb.h(parcel, a2);
                    break;
                case 16:
                    j3 = zzb.f(parcel, a2);
                    break;
                case 17:
                    str5 = zzb.k(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}