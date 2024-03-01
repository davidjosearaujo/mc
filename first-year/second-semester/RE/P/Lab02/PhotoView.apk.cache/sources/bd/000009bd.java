package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;

/* loaded from: classes.dex */
public class b implements Parcelable.Creator<WebImage> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(WebImage webImage, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, webImage.f423a);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, (Parcelable) webImage.a(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, webImage.b());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, webImage.c());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WebImage createFromParcel(Parcel parcel) {
        int d;
        int i;
        Uri uri;
        int i2;
        int i3 = 0;
        int b = zzb.b(parcel);
        Uri uri2 = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < b) {
            int a2 = zzb.a(parcel);
            switch (zzb.a(a2)) {
                case 1:
                    int i6 = i3;
                    i = i4;
                    uri = uri2;
                    i2 = zzb.d(parcel, a2);
                    d = i6;
                    break;
                case 2:
                    i2 = i5;
                    int i7 = i4;
                    uri = (Uri) zzb.a(parcel, a2, Uri.CREATOR);
                    d = i3;
                    i = i7;
                    break;
                case 3:
                    uri = uri2;
                    i2 = i5;
                    int i8 = i3;
                    i = zzb.d(parcel, a2);
                    d = i8;
                    break;
                case 4:
                    d = zzb.d(parcel, a2);
                    i = i4;
                    uri = uri2;
                    i2 = i5;
                    break;
                default:
                    zzb.b(parcel, a2);
                    d = i3;
                    i = i4;
                    uri = uri2;
                    i2 = i5;
                    break;
            }
            i5 = i2;
            uri2 = uri;
            i4 = i;
            i3 = d;
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        return new WebImage(i5, uri2, i4, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}