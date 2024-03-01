package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class p implements Parcelable.Creator<zzj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzj zzjVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzjVar.f462a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, zzjVar.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzjVar.c);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzjVar.d, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, zzjVar.e, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, (Parcelable[]) zzjVar.f, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, zzjVar.g, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, (Parcelable) zzjVar.h, i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, zzjVar.i);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzj createFromParcel(Parcel parcel) {
        int i = 0;
        Account account = null;
        int b = zzb.b(parcel);
        long j = 0;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i3 = zzb.d(parcel, a2);
                    break;
                case 2:
                    i2 = zzb.d(parcel, a2);
                    break;
                case 3:
                    i = zzb.d(parcel, a2);
                    break;
                case 4:
                    str = zzb.k(parcel, a2);
                    break;
                case 5:
                    iBinder = zzb.l(parcel, a2);
                    break;
                case 6:
                    scopeArr = (Scope[]) zzb.b(parcel, a2, Scope.CREATOR);
                    break;
                case 7:
                    bundle = zzb.m(parcel, a2);
                    break;
                case 8:
                    account = (Account) zzb.a(parcel, a2, Account.CREATOR);
                    break;
                case 9:
                    j = zzb.f(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzj(i3, i2, i, str, iBinder, scopeArr, bundle, account, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzj[] newArray(int i) {
        return new zzj[i];
    }
}