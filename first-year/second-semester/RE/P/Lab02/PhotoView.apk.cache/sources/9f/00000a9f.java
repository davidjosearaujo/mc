package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzack;

/* loaded from: classes.dex */
public class zzacf extends zza {
    public static final Parcelable.Creator<zzacf> CREATOR = new m();

    /* renamed from: a  reason: collision with root package name */
    final int f526a;
    private final zzach b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacf(int i, zzach zzachVar) {
        this.f526a = i;
        this.b = zzachVar;
    }

    private zzacf(zzach zzachVar) {
        this.f526a = 1;
        this.b = zzachVar;
    }

    public static zzacf a(zzack.a<?, ?> aVar) {
        if (aVar instanceof zzach) {
            return new zzacf((zzach) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzach a() {
        return this.b;
    }

    public zzack.a<?, ?> b() {
        if (this.b != null) {
            return this.b;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m.a(this, parcel, i);
    }
}