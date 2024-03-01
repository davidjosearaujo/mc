package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.iid.a;

/* loaded from: classes.dex */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new Parcelable.Creator<MessengerCompat>() { // from class: com.google.android.gms.iid.MessengerCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                return new MessengerCompat(readStrongBinder);
            }
            return null;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MessengerCompat[] newArray(int i) {
            return new MessengerCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    Messenger f489a;
    a b;

    public MessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f489a = new Messenger(iBinder);
        } else {
            this.b = a.AbstractBinderC0031a.a(iBinder);
        }
    }

    public IBinder a() {
        return this.f489a != null ? this.f489a.getBinder() : this.b.asBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((MessengerCompat) obj).a());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f489a != null) {
            parcel.writeStrongBinder(this.f489a.getBinder());
        } else {
            parcel.writeStrongBinder(this.b.asBinder());
        }
    }
}