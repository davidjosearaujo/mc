package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class CountrySpecification extends zza implements ReflectedParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    String f487a;
    private final int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CountrySpecification(int i, String str) {
        this.b = i;
        this.f487a = str;
    }

    public int a() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}