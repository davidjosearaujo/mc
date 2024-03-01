package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;

/* loaded from: classes.dex */
public final class UserAddressRequest extends zza implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    List<CountrySpecification> f486a;
    private final int b;

    UserAddressRequest() {
        this.b = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserAddressRequest(int i, List<CountrySpecification> list) {
        this.b = i;
        this.f486a = list;
    }

    public int a() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}