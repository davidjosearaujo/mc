package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface z extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements z {

        /* renamed from: com.google.android.gms.common.internal.z$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0026a implements z {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f456a;

            C0026a(IBinder iBinder) {
                this.f456a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.z
            public void a(zzaf zzafVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    if (zzafVar != null) {
                        obtain.writeInt(1);
                        zzafVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f456a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f456a;
            }
        }

        public static z a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof z)) ? new C0026a(iBinder) : (z) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    a(parcel.readInt() != 0 ? zzaf.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(zzaf zzafVar);
}