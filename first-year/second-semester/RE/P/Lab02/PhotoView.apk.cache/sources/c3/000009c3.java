package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.a;

/* loaded from: classes.dex */
public interface aa extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements aa {

        /* renamed from: com.google.android.gms.common.internal.aa$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0022a implements aa {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f429a;

            C0022a(IBinder iBinder) {
                this.f429a = iBinder;
            }

            @Override // com.google.android.gms.common.internal.aa
            public com.google.android.gms.dynamic.a a(com.google.android.gms.dynamic.a aVar, int i, int i2) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.f429a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return a.AbstractBinderC0027a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.aa
            public com.google.android.gms.dynamic.a a(com.google.android.gms.dynamic.a aVar, zzah zzahVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ISignInButtonCreator");
                    obtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (zzahVar != null) {
                        obtain.writeInt(1);
                        zzahVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f429a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return a.AbstractBinderC0027a.a(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f429a;
            }
        }

        public static aa a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof aa)) ? new C0022a(iBinder) : (aa) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    com.google.android.gms.dynamic.a a2 = a(a.AbstractBinderC0027a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a2 != null ? a2.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
                    com.google.android.gms.dynamic.a a3 = a(a.AbstractBinderC0027a.a(parcel.readStrongBinder()), parcel.readInt() != 0 ? zzah.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(a3 != null ? a3.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    com.google.android.gms.dynamic.a a(com.google.android.gms.dynamic.a aVar, int i, int i2);

    com.google.android.gms.dynamic.a a(com.google.android.gms.dynamic.a aVar, zzah zzahVar);
}