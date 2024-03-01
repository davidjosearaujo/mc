package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class zzawa extends zza implements Comparable<zzawa> {
    public static final Parcelable.Creator<zzawa> CREATOR = new y();

    /* renamed from: a  reason: collision with root package name */
    final int f534a;
    public final int b;
    public final zzawc[] c;
    public final String[] d;
    public final Map<String, zzawc> e = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzawa(int i, int i2, zzawc[] zzawcVarArr, String[] strArr) {
        this.f534a = i;
        this.b = i2;
        this.c = zzawcVarArr;
        for (zzawc zzawcVar : zzawcVarArr) {
            this.e.put(zzawcVar.b, zzawcVar);
        }
        this.d = strArr;
        if (this.d != null) {
            Arrays.sort(this.d);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(zzawa zzawaVar) {
        return this.b - zzawaVar.b;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzawa)) {
            return false;
        }
        zzawa zzawaVar = (zzawa) obj;
        return this.f534a == zzawaVar.f534a && this.b == zzawaVar.b && com.google.android.gms.common.internal.b.a(this.e, zzawaVar.e) && Arrays.equals(this.d, zzawaVar.d);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.f534a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        sb.append("(");
        for (zzawc zzawcVar : this.e.values()) {
            sb.append(zzawcVar);
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.d != null) {
            for (String str : this.d) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        y.a(this, parcel, i);
    }
}