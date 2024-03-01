package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.List;

/* loaded from: classes.dex */
public class zzaxs extends zza {
    public static final Parcelable.Creator<zzaxs> CREATOR = new af();

    /* renamed from: a  reason: collision with root package name */
    final int f537a;
    final boolean b;
    final List<Scope> c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxs(int i, boolean z, List<Scope> list) {
        this.f537a = i;
        this.b = z;
        this.c = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        af.a(this, parcel, i);
    }
}