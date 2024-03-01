package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzaxp extends zza implements com.google.android.gms.common.api.f {
    public static final Parcelable.Creator<zzaxp> CREATOR = new ad();

    /* renamed from: a  reason: collision with root package name */
    final int f536a;
    private int b;
    private Intent c;

    public zzaxp() {
        this(0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxp(int i, int i2, Intent intent) {
        this.f536a = i;
        this.b = i2;
        this.c = intent;
    }

    public zzaxp(int i, Intent intent) {
        this(2, i, intent);
    }

    @Override // com.google.android.gms.common.api.f
    public Status a() {
        return this.b == 0 ? Status.f399a : Status.e;
    }

    public int b() {
        return this.b;
    }

    public Intent c() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ad.a(this, parcel, i);
    }
}