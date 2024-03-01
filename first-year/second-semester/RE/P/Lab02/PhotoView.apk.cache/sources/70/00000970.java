package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b implements Parcelable.Creator<GoogleSignInOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GoogleSignInOptions googleSignInOptions, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, googleSignInOptions.e);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 2, googleSignInOptions.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, (Parcelable) googleSignInOptions.b(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, googleSignInOptions.c());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, googleSignInOptions.d());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, googleSignInOptions.e());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, googleSignInOptions.f(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, googleSignInOptions.g(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public GoogleSignInOptions createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int b = zzb.b(parcel);
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    arrayList = zzb.c(parcel, a2, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) zzb.a(parcel, a2, Account.CREATOR);
                    break;
                case 4:
                    z3 = zzb.c(parcel, a2);
                    break;
                case 5:
                    z2 = zzb.c(parcel, a2);
                    break;
                case 6:
                    z = zzb.c(parcel, a2);
                    break;
                case 7:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 8:
                    str = zzb.k(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new GoogleSignInOptions(i, arrayList, account, z3, z2, z, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}