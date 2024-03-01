package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class zzawc extends zza implements Comparable<zzawc> {

    /* renamed from: a  reason: collision with root package name */
    final int f535a;
    public final String b;
    final long c;
    final boolean d;
    final double e;
    final String f;
    final byte[] g;
    public final int h;
    public final int i;
    public static final Parcelable.Creator<zzawc> CREATOR = new z();
    private static final Charset k = Charset.forName("UTF-8");
    public static final a j = new a();

    /* loaded from: classes.dex */
    public static class a implements Comparator<zzawc> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(zzawc zzawcVar, zzawc zzawcVar2) {
            return zzawcVar.i == zzawcVar2.i ? zzawcVar.b.compareTo(zzawcVar2.b) : zzawcVar.i - zzawcVar2.i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzawc(int i, String str, long j2, boolean z, double d, String str2, byte[] bArr, int i2, int i3) {
        this.f535a = i;
        this.b = str;
        this.c = j2;
        this.d = z;
        this.e = d;
        this.f = str2;
        this.g = bArr;
        this.h = i2;
        this.i = i3;
    }

    private static int a(byte b, byte b2) {
        return b - b2;
    }

    private static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    private static int a(long j2, long j3) {
        if (j2 < j3) {
            return -1;
        }
        return j2 == j3 ? 0 : 1;
    }

    private static int a(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    private static int a(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(zzawc zzawcVar) {
        int compareTo = this.b.compareTo(zzawcVar.b);
        if (compareTo != 0) {
            return compareTo;
        }
        int a2 = a(this.h, zzawcVar.h);
        if (a2 != 0) {
            return a2;
        }
        switch (this.h) {
            case 1:
                return a(this.c, zzawcVar.c);
            case 2:
                return a(this.d, zzawcVar.d);
            case 3:
                return Double.compare(this.e, zzawcVar.e);
            case 4:
                return a(this.f, zzawcVar.f);
            case 5:
                if (this.g != zzawcVar.g) {
                    if (this.g == null) {
                        return -1;
                    }
                    if (zzawcVar.g == null) {
                        return 1;
                    }
                    for (int i = 0; i < Math.min(this.g.length, zzawcVar.g.length); i++) {
                        int a3 = a(this.g[i], zzawcVar.g[i]);
                        if (a3 != 0) {
                            return a3;
                        }
                    }
                    return a(this.g.length, zzawcVar.g.length);
                }
                return 0;
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.h).toString());
        }
    }

    public String a(StringBuilder sb) {
        sb.append("Flag(");
        sb.append(this.f535a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        switch (this.h) {
            case 1:
                sb.append(this.c);
                break;
            case 2:
                sb.append(this.d);
                break;
            case 3:
                sb.append(this.e);
                break;
            case 4:
                sb.append("'");
                sb.append(this.f);
                sb.append("'");
                break;
            case 5:
                if (this.g != null) {
                    sb.append("'");
                    sb.append(new String(this.g, k));
                    sb.append("'");
                    break;
                } else {
                    sb.append("null");
                    break;
                }
            default:
                String str = this.b;
                throw new AssertionError(new StringBuilder(String.valueOf(str).length() + 27).append("Invalid type: ").append(str).append(", ").append(this.h).toString());
        }
        sb.append(", ");
        sb.append(this.h);
        sb.append(", ");
        sb.append(this.i);
        sb.append(")");
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzawc)) {
            return false;
        }
        zzawc zzawcVar = (zzawc) obj;
        if (this.f535a == zzawcVar.f535a && com.google.android.gms.common.internal.b.a(this.b, zzawcVar.b) && this.h == zzawcVar.h && this.i == zzawcVar.i) {
            switch (this.h) {
                case 1:
                    return this.c == zzawcVar.c;
                case 2:
                    return this.d == zzawcVar.d;
                case 3:
                    return this.e == zzawcVar.e;
                case 4:
                    return com.google.android.gms.common.internal.b.a(this.f, zzawcVar.f);
                case 5:
                    return Arrays.equals(this.g, zzawcVar.g);
                default:
                    throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.h).toString());
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        z.a(this, parcel, i);
    }
}