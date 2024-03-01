package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class zzb {

    /* loaded from: classes.dex */
    public static class zza extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public zza(java.lang.String r5, android.os.Parcel r6) {
            /*
                r4 = this;
                int r0 = r6.dataPosition()
                int r1 = r6.dataSize()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = java.lang.String.valueOf(r5)
                int r3 = r3.length()
                int r3 = r3 + 41
                r2.<init>(r3)
                java.lang.StringBuilder r2 = r2.append(r5)
                java.lang.String r3 = " Parcel: pos="
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.StringBuilder r0 = r2.append(r0)
                java.lang.String r2 = " size="
                java.lang.StringBuilder r0 = r0.append(r2)
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r4.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.zzb.zza.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    public static int a(int i) {
        return 65535 & i;
    }

    public static int a(Parcel parcel) {
        return parcel.readInt();
    }

    public static int a(Parcel parcel, int i) {
        return (i & SupportMenu.CATEGORY_MASK) != -65536 ? (i >> 16) & SupportMenu.USER_MASK : parcel.readInt();
    }

    public static <T extends Parcelable> T a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(a2 + dataPosition);
        return createFromParcel;
    }

    private static void a(Parcel parcel, int i, int i2) {
        int a2 = a(parcel, i);
        if (a2 != i2) {
            String valueOf = String.valueOf(Integer.toHexString(a2));
            throw new zza(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected size ").append(i2).append(" got ").append(a2).append(" (0x").append(valueOf).append(")").toString(), parcel);
        }
    }

    private static void a(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String valueOf = String.valueOf(Integer.toHexString(i2));
            throw new zza(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected size ").append(i3).append(" got ").append(i2).append(" (0x").append(valueOf).append(")").toString(), parcel);
        }
    }

    public static int b(Parcel parcel) {
        int a2 = a(parcel);
        int a3 = a(parcel, a2);
        int dataPosition = parcel.dataPosition();
        if (a(a2) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(a2));
            throw new zza(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = dataPosition + a3;
        if (i < dataPosition || i > parcel.dataSize()) {
            throw new zza(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(i).toString(), parcel);
        }
        return i;
    }

    public static void b(Parcel parcel, int i) {
        parcel.setDataPosition(a(parcel, i) + parcel.dataPosition());
    }

    public static <T> T[] b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(a2 + dataPosition);
        return tArr;
    }

    public static <T> ArrayList<T> c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(a2 + dataPosition);
        return createTypedArrayList;
    }

    public static boolean c(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int d(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer e(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        if (a2 == 0) {
            return null;
        }
        a(parcel, i, a2, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long f(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readLong();
    }

    public static BigInteger g(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(a2 + dataPosition);
        return new BigInteger(createByteArray);
    }

    public static float h(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readFloat();
    }

    public static double i(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readDouble();
    }

    public static BigDecimal j(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(a2 + dataPosition);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static String k(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(a2 + dataPosition);
        return readString;
    }

    public static IBinder l(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(a2 + dataPosition);
        return readStrongBinder;
    }

    public static Bundle m(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(a2 + dataPosition);
        return readBundle;
    }

    public static byte[] n(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createByteArray;
    }

    public static boolean[] o(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createBooleanArray;
    }

    public static int[] p(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createIntArray;
    }

    public static long[] q(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createLongArray;
    }

    public static BigInteger[] r(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + a2);
        return bigIntegerArr;
    }

    public static float[] s(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createFloatArray;
    }

    public static double[] t(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createDoubleArray;
    }

    public static BigDecimal[] u(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + a2);
        return bigDecimalArr;
    }

    public static String[] v(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(a2 + dataPosition);
        return createStringArray;
    }

    public static ArrayList<String> w(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(a2 + dataPosition);
        return createStringArrayList;
    }

    public static Parcel x(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, a2);
        parcel.setDataPosition(a2 + dataPosition);
        return obtain;
    }

    public static Parcel[] y(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i2] = obtain;
                parcel.setDataPosition(readInt2 + dataPosition2);
            } else {
                parcelArr[i2] = null;
            }
        }
        parcel.setDataPosition(dataPosition + a2);
        return parcelArr;
    }
}