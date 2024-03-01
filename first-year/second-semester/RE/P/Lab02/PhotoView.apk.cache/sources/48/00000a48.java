package com.google.android.gms.iid;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: com.google.android.gms.iid.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0031a extends Binder implements a {

        /* renamed from: com.google.android.gms.iid.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0032a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f490a;

            C0032a(IBinder iBinder) {
                this.f490a = iBinder;
            }

            @Override // com.google.android.gms.iid.a
            public void a(Message message) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
                    if (message != null) {
                        obtain.writeInt(1);
                        message.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f490a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f490a;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0032a(iBinder) : (a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.iid.IMessengerCompat");
                    a(parcel.readInt() != 0 ? (Message) Message.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.iid.IMessengerCompat");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(Message message);
}