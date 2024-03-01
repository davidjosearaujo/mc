package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.FacebookException;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: AttributionIdentifiers.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f174a = b.class.getCanonicalName();
    private static b g;
    private String b;
    private String c;
    private String d;
    private boolean e;
    private long f;

    private static b b(Context context) {
        b c = c(context);
        if (c == null) {
            b d = d(context);
            if (d == null) {
                return new b();
            }
            return d;
        }
        return c;
    }

    private static b c(Context context) {
        Object a2;
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new FacebookException("getAndroidId cannot be called on the main thread.");
            }
            Method a3 = ab.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (a3 == null) {
                return null;
            }
            Object a4 = ab.a((Object) null, a3, context);
            if ((a4 instanceof Integer) && ((Integer) a4).intValue() == 0) {
                Method a5 = ab.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class);
                if (a5 != null && (a2 = ab.a((Object) null, a5, context)) != null) {
                    Method a6 = ab.a(a2.getClass(), "getId", new Class[0]);
                    Method a7 = ab.a(a2.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                    if (a6 == null || a7 == null) {
                        return null;
                    }
                    b bVar = new b();
                    bVar.c = (String) ab.a(a2, a6, new Object[0]);
                    bVar.e = ((Boolean) ab.a(a2, a7, new Object[0])).booleanValue();
                    return bVar;
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            ab.a("android_id", e);
            return null;
        }
    }

    private static b d(Context context) {
        ServiceConnectionC0012b serviceConnectionC0012b = new ServiceConnectionC0012b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, serviceConnectionC0012b, 1)) {
                a aVar = new a(serviceConnectionC0012b.a());
                b bVar = new b();
                bVar.c = aVar.a();
                bVar.e = aVar.b();
                return bVar;
            }
        } catch (Exception e) {
            ab.a("android_id", e);
        } finally {
            context.unbindService(serviceConnectionC0012b);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fe  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.internal.b a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.b.a(android.content.Context):com.facebook.internal.b");
    }

    private static b a(b bVar) {
        bVar.f = System.currentTimeMillis();
        g = bVar;
        return bVar;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    @Nullable
    private static String e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AttributionIdentifiers.java */
    /* renamed from: com.facebook.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class ServiceConnectionC0012b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private AtomicBoolean f176a;
        private final BlockingQueue<IBinder> b;

        private ServiceConnectionC0012b() {
            this.f176a = new AtomicBoolean(false);
            this.b = new LinkedBlockingDeque();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.b.put(iBinder);
                } catch (InterruptedException e) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        public IBinder a() {
            if (this.f176a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.b.take();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AttributionIdentifiers.java */
    /* loaded from: classes.dex */
    public static final class a implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f175a;

        a(IBinder iBinder) {
            this.f175a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f175a;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f175a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public boolean b() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.f175a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}