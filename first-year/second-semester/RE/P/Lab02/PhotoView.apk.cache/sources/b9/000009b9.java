package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.Locale;

/* loaded from: classes.dex */
public final class WebImage extends zza {
    public static final Parcelable.Creator<WebImage> CREATOR = new b();

    /* renamed from: a  reason: collision with root package name */
    final int f423a;
    private final Uri b;
    private final int c;
    private final int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f423a = i;
        this.b = uri;
        this.c = i2;
        this.d = i3;
    }

    public Uri a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return com.google.android.gms.common.internal.b.a(this.b, webImage.b) && this.c == webImage.c && this.d == webImage.d;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.b.a(this.b, Integer.valueOf(this.c), Integer.valueOf(this.d));
    }

    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.c), Integer.valueOf(this.d), this.b.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}