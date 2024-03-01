package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public interface ag extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements ag {

        /* renamed from: com.google.android.gms.internal.ag$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0033a implements ag {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f495a;

            C0033a(IBinder iBinder) {
                this.f495a = iBinder;
            }

            @Override // com.google.android.gms.internal.ag
            public void a(ConnectionResult connectionResult, zzaxp zzaxpVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
                    if (connectionResult != null) {
                        obtain.writeInt(1);
                        connectionResult.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (zzaxpVar != null) {
                        obtain.writeInt(1);
                        zzaxpVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f495a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ag
            public void a(Status status) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f495a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ag
            public void a(Status status, GoogleSignInAccount googleSignInAccount) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (googleSignInAccount != null) {
                        obtain.writeInt(1);
                        googleSignInAccount.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f495a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ag
            public void a(zzayb zzaybVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
                    if (zzaybVar != null) {
                        obtain.writeInt(1);
                        zzaybVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f495a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f495a;
            }

            @Override // com.google.android.gms.internal.ag
            public void b(Status status) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f495a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        }

        public static ag a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ag)) ? new C0033a(iBinder) : (ag) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 3:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                    a(parcel.readInt() != 0 ? ConnectionResult.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? zzaxp.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                    a(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                    b(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                    a(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? GoogleSignInAccount.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
                    a(parcel.readInt() != 0 ? zzayb.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.signin.internal.ISignInCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(ConnectionResult connectionResult, zzaxp zzaxpVar);

    void a(Status status);

    void a(Status status, GoogleSignInAccount googleSignInAccount);

    void a(zzayb zzaybVar);

    void b(Status status);
}