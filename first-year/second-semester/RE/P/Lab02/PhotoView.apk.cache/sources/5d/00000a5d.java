package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class ai implements Parcelable.Creator<zzaxw> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzaxw zzaxwVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzaxwVar.f538a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) zzaxwVar.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable[]) zzaxwVar.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, zzaxwVar.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxw createFromParcel(Parcel parcel) {
        String k;
        Scope[] scopeArr;
        Account account;
        int i;
        String str = null;
        int b = zzb.b(parcel);
        int i2 = 0;
        Scope[] scopeArr2 = null;
        Account account2 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    String str2 = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = zzb.d(parcel, a2);
                    k = str2;
                    break;
                case 2:
                    i = i2;
                    Scope[] scopeArr3 = scopeArr2;
                    account = (Account) zzb.a(parcel, a2, Account.CREATOR);
                    k = str;
                    scopeArr = scopeArr3;
                    break;
                case 3:
                    account = account2;
                    i = i2;
                    String str3 = str;
                    scopeArr = (Scope[]) zzb.b(parcel, a2, Scope.CREATOR);
                    k = str3;
                    break;
                case 4:
                    k = zzb.k(parcel, a2);
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
                default:
                    zzb.b(parcel, a2);
                    k = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
            }
            i2 = i;
            account2 = account;
            scopeArr2 = scopeArr;
            str = k;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzaxw(i2, account2, scopeArr2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzaxw[] newArray(int i) {
        return new zzaxw[i];
    }
}