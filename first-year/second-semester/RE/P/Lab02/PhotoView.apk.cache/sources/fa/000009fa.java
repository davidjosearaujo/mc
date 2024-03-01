package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface x extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements x {

        /* renamed from: com.google.android.gms.common.internal.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0024a implements x {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f454a;

            C0024a(IBinder iBinder) {
                this.f454a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.x
            public void a(int i, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsCallbacks");
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f454a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.x
            public void a(int i, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsCallbacks");
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f454a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f454a;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
        }

        public static x a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof x)) ? new C0024a(iBinder) : (x) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                    a(parcel.readInt(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
                    a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(int i, Bundle bundle);

    void a(int i, IBinder iBinder, Bundle bundle);
}