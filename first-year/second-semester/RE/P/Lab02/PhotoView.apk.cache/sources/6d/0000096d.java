package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, googleSignInAccount.b);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, googleSignInAccount.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, googleSignInAccount.b(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, googleSignInAccount.c(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, googleSignInAccount.d(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, (Parcelable) googleSignInAccount.g(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, googleSignInAccount.h(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, googleSignInAccount.i());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 9, googleSignInAccount.j(), false);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, 10, googleSignInAccount.c, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 11, googleSignInAccount.e(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 12, googleSignInAccount.f(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public GoogleSignInAccount createFromParcel(Parcel parcel) {
        int b = zzb.b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    i = zzb.d(parcel, a2);
                    break;
                case 2:
                    str = zzb.k(parcel, a2);
                    break;
                case 3:
                    str2 = zzb.k(parcel, a2);
                    break;
                case 4:
                    str3 = zzb.k(parcel, a2);
                    break;
                case 5:
                    str4 = zzb.k(parcel, a2);
                    break;
                case 6:
                    uri = (Uri) zzb.a(parcel, a2, Uri.CREATOR);
                    break;
                case 7:
                    str5 = zzb.k(parcel, a2);
                    break;
                case 8:
                    j = zzb.f(parcel, a2);
                    break;
                case 9:
                    str6 = zzb.k(parcel, a2);
                    break;
                case 10:
                    arrayList = zzb.c(parcel, a2, Scope.CREATOR);
                    break;
                case 11:
                    str7 = zzb.k(parcel, a2);
                    break;
                case 12:
                    str8 = zzb.k(parcel, a2);
                    break;
                default:
                    zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}