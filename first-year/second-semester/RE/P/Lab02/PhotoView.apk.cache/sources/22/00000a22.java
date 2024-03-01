package com.google.android.gms.dynamic;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: com.google.android.gms.dynamic.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0027a extends Binder implements a {

        /* renamed from: com.google.android.gms.dynamic.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0028a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f475a;

            C0028a(IBinder iBinder) {
                this.f475a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f475a;
            }
        }

        public AbstractBinderC0027a() {
            attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0028a(iBinder) : (a) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            switch (i) {
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }
}