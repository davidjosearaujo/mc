package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class i implements Parcelable.Creator<Scope> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Scope scope, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, scope.f398a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, scope.a(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Scope createFromParcel(Parcel parcel) {
        int b = com.google.android.gms.common.internal.safeparcel.zzb.b(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a2 = com.google.android.gms.common.internal.safeparcel.zzb.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.a(a2)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.d(parcel, a2);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.k(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.b(parcel, a2);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new Scope(i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public Scope[] newArray(int i) {
        return new Scope[i];
    }
}