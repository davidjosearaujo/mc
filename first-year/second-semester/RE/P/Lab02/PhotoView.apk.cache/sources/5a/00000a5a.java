package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.internal.ag;

/* loaded from: classes.dex */
public interface ah extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements ah {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.internal.ah$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0034a implements ah {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f496a;

            C0034a(IBinder iBinder) {
                this.f496a = iBinder;
            }

            @Override // com.google.android.gms.internal.ah
            public void a(int i) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    this.f496a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(int i, Account account, ag agVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(i);
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(agVar != null ? agVar.asBinder() : null);
                    this.f496a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(com.google.android.gms.common.internal.u uVar, int i, boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(uVar != null ? uVar.asBinder() : null);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    this.f496a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(zzad zzadVar, com.google.android.gms.common.internal.z zVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzadVar != null) {
                        obtain.writeInt(1);
                        zzadVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(zVar != null ? zVar.asBinder() : null);
                    this.f496a.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(zzd zzdVar, ag agVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzdVar != null) {
                        obtain.writeInt(1);
                        zzdVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(agVar != null ? agVar.asBinder() : null);
                    this.f496a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(ag agVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeStrongBinder(agVar != null ? agVar.asBinder() : null);
                    this.f496a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(zzaxs zzaxsVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzaxsVar != null) {
                        obtain.writeInt(1);
                        zzaxsVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f496a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(zzaxw zzaxwVar, ag agVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzaxwVar != null) {
                        obtain.writeInt(1);
                        zzaxwVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(agVar != null ? agVar.asBinder() : null);
                    this.f496a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(zzaxz zzaxzVar, ag agVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    if (zzaxzVar != null) {
                        obtain.writeInt(1);
                        zzaxzVar.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(agVar != null ? agVar.asBinder() : null);
                    this.f496a.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.ah
            public void a(boolean z) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
                    obtain.writeInt(z ? 1 : 0);
                    this.f496a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f496a;
            }
        }

        public static ah a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof ah)) ? new C0034a(iBinder) : (ah) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0 ? zzd.CREATOR.createFromParcel(parcel) : null, ag.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0 ? zzaxs.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0 ? zzad.CREATOR.createFromParcel(parcel) : null, z.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt(), parcel.readInt() != 0 ? (Account) Account.CREATOR.createFromParcel(parcel) : null, ag.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(u.a.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0 ? zzaxw.CREATOR.createFromParcel(parcel) : null, ag.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(ag.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
                    a(parcel.readInt() != 0 ? zzaxz.CREATOR.createFromParcel(parcel) : null, ag.a.a(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(int i);

    void a(int i, Account account, ag agVar);

    void a(com.google.android.gms.common.internal.u uVar, int i, boolean z);

    void a(zzad zzadVar, com.google.android.gms.common.internal.z zVar);

    void a(zzd zzdVar, ag agVar);

    void a(ag agVar);

    void a(zzaxs zzaxsVar);

    void a(zzaxw zzaxwVar, ag agVar);

    void a(zzaxz zzaxzVar, ag agVar);

    void a(boolean z);
}