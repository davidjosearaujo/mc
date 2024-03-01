package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzah extends zza {
    public static final Parcelable.Creator<zzah> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    final int f459a;
    private final int b;
    private final int c;
    @Deprecated
    private final Scope[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(int i, int i2, int i3, Scope[] scopeArr) {
        this.f459a = i;
        this.b = i2;
        this.c = i3;
        this.d = scopeArr;
    }

    public zzah(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, null);
    }

    public int a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    @Deprecated
    public Scope[] c() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        f.a(this, parcel, i);
    }
}