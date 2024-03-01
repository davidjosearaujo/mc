package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class d implements Parcelable.Creator<zzad> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzad zzadVar, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, zzadVar.f457a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) zzadVar.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, zzadVar.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, (Parcelable) zzadVar.c(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzad createFromParcel(Parcel parcel) {
        GoogleSignInAccount googleSignInAccount;
        int i;
        Account account;
        int i2;
        GoogleSignInAccount googleSignInAccount2 = null;
        int i3 = 0;
        int b = zzb.b(parcel);
        Account account2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    GoogleSignInAccount googleSignInAccount3 = googleSignInAccount2;
                    i = i3;
                    account = account2;
                    i2 = zzb.d(parcel, a2);
                    googleSignInAccount = googleSignInAccount3;
                    break;
                case 2:
                    i2 = i4;
                    int i5 = i3;
                    account = (Account) zzb.a(parcel, a2, Account.CREATOR);
                    googleSignInAccount = googleSignInAccount2;
                    i = i5;
                    break;
                case 3:
                    account = account2;
                    i2 = i4;
                    GoogleSignInAccount googleSignInAccount4 = googleSignInAccount2;
                    i = zzb.d(parcel, a2);
                    googleSignInAccount = googleSignInAccount4;
                    break;
                case 4:
                    googleSignInAccount = (GoogleSignInAccount) zzb.a(parcel, a2, GoogleSignInAccount.CREATOR);
                    i = i3;
                    account = account2;
                    i2 = i4;
                    break;
                default:
                    zzb.b(parcel, a2);
                    googleSignInAccount = googleSignInAccount2;
                    i = i3;
                    account = account2;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            account2 = account;
            i3 = i;
            googleSignInAccount2 = googleSignInAccount;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new zzad(i4, account2, i3, googleSignInAccount2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public zzad[] newArray(int i) {
        return new zzad[i];
    }
}