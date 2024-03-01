package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzack;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class zzacr extends zzacl {
    public static final Parcelable.Creator<zzacr> CREATOR = new t();

    /* renamed from: a  reason: collision with root package name */
    private final int f533a;
    private final Parcel b;
    private final int c = 2;
    private final zzaco d;
    private final String e;
    private int f;
    private int g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacr(int i, Parcel parcel, zzaco zzacoVar) {
        this.f533a = i;
        this.b = (Parcel) com.google.android.gms.common.internal.c.a(parcel);
        this.d = zzacoVar;
        if (this.d == null) {
            this.e = null;
        } else {
            this.e = this.d.c();
        }
        this.f = 2;
    }

    private static SparseArray<Map.Entry<String, zzack.zza<?, ?>>> a(Map<String, zzack.zza<?, ?>> map) {
        SparseArray<Map.Entry<String, zzack.zza<?, ?>>> sparseArray = new SparseArray<>();
        for (Map.Entry<String, zzack.zza<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().g(), entry);
        }
        return sparseArray;
    }

    public static HashMap<String, String> a(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private void a(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"").append(com.google.android.gms.common.util.j.a(obj.toString())).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.util.c.a((byte[]) obj)).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.util.c.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                com.google.android.gms.common.util.k.a(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(new StringBuilder(26).append("Unknown type = ").append(i).toString());
        }
    }

    private void a(StringBuilder sb, zzack.zza<?, ?> zzaVar, Parcel parcel, int i) {
        switch (zzaVar.d()) {
            case 0:
                a(sb, zzaVar, a(zzaVar, Integer.valueOf(zzb.d(parcel, i))));
                return;
            case 1:
                a(sb, zzaVar, a(zzaVar, zzb.g(parcel, i)));
                return;
            case 2:
                a(sb, zzaVar, a(zzaVar, Long.valueOf(zzb.f(parcel, i))));
                return;
            case 3:
                a(sb, zzaVar, a(zzaVar, Float.valueOf(zzb.h(parcel, i))));
                return;
            case 4:
                a(sb, zzaVar, a(zzaVar, Double.valueOf(zzb.i(parcel, i))));
                return;
            case 5:
                a(sb, zzaVar, a(zzaVar, zzb.j(parcel, i)));
                return;
            case 6:
                a(sb, zzaVar, a(zzaVar, Boolean.valueOf(zzb.c(parcel, i))));
                return;
            case 7:
                a(sb, zzaVar, a(zzaVar, zzb.k(parcel, i)));
                return;
            case 8:
            case 9:
                a(sb, zzaVar, a(zzaVar, zzb.n(parcel, i)));
                return;
            case 10:
                a(sb, zzaVar, a(zzaVar, a(zzb.m(parcel, i))));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(new StringBuilder(36).append("Unknown field out type = ").append(zzaVar.d()).toString());
        }
    }

    private void a(StringBuilder sb, zzack.zza<?, ?> zzaVar, Object obj) {
        if (zzaVar.c()) {
            a(sb, zzaVar, (ArrayList) obj);
        } else {
            a(sb, zzaVar.b(), obj);
        }
    }

    private void a(StringBuilder sb, zzack.zza<?, ?> zzaVar, ArrayList<?> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            a(sb, zzaVar.b(), arrayList.get(i));
        }
        sb.append("]");
    }

    private void a(StringBuilder sb, String str, zzack.zza<?, ?> zzaVar, Parcel parcel, int i) {
        sb.append("\"").append(str).append("\":");
        if (zzaVar.j()) {
            a(sb, zzaVar, parcel, i);
        } else {
            b(sb, zzaVar, parcel, i);
        }
    }

    private void a(StringBuilder sb, Map<String, zzack.zza<?, ?>> map, Parcel parcel) {
        SparseArray<Map.Entry<String, zzack.zza<?, ?>>> a2 = a(map);
        sb.append('{');
        int b = zzb.b(parcel);
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a3 = zzb.a(parcel);
            Map.Entry<String, zzack.zza<?, ?>> entry = a2.get(zzb.a(a3));
            if (entry != null) {
                if (z) {
                    sb.append(",");
                }
                a(sb, entry.getKey(), entry.getValue(), parcel, a3);
                z = true;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(b).toString(), parcel);
        }
        sb.append('}');
    }

    private void b(StringBuilder sb, zzack.zza<?, ?> zzaVar, Parcel parcel, int i) {
        if (zzaVar.e()) {
            sb.append("[");
            switch (zzaVar.d()) {
                case 0:
                    com.google.android.gms.common.util.b.a(sb, zzb.p(parcel, i));
                    break;
                case 1:
                    com.google.android.gms.common.util.b.a(sb, zzb.r(parcel, i));
                    break;
                case 2:
                    com.google.android.gms.common.util.b.a(sb, zzb.q(parcel, i));
                    break;
                case 3:
                    com.google.android.gms.common.util.b.a(sb, zzb.s(parcel, i));
                    break;
                case 4:
                    com.google.android.gms.common.util.b.a(sb, zzb.t(parcel, i));
                    break;
                case 5:
                    com.google.android.gms.common.util.b.a(sb, zzb.u(parcel, i));
                    break;
                case 6:
                    com.google.android.gms.common.util.b.a(sb, zzb.o(parcel, i));
                    break;
                case 7:
                    com.google.android.gms.common.util.b.a(sb, zzb.v(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] y = zzb.y(parcel, i);
                    int length = y.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            sb.append(",");
                        }
                        y[i2].setDataPosition(0);
                        a(sb, zzaVar.l(), y[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (zzaVar.d()) {
            case 0:
                sb.append(zzb.d(parcel, i));
                return;
            case 1:
                sb.append(zzb.g(parcel, i));
                return;
            case 2:
                sb.append(zzb.f(parcel, i));
                return;
            case 3:
                sb.append(zzb.h(parcel, i));
                return;
            case 4:
                sb.append(zzb.i(parcel, i));
                return;
            case 5:
                sb.append(zzb.j(parcel, i));
                return;
            case 6:
                sb.append(zzb.c(parcel, i));
                return;
            case 7:
                sb.append("\"").append(com.google.android.gms.common.util.j.a(zzb.k(parcel, i))).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.util.c.a(zzb.n(parcel, i))).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.util.c.b(zzb.n(parcel, i)));
                sb.append("\"");
                return;
            case 10:
                Bundle m = zzb.m(parcel, i);
                Set<String> keySet = m.keySet();
                keySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : keySet) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append("\"").append(str).append("\"");
                    sb.append(":");
                    sb.append("\"").append(com.google.android.gms.common.util.j.a(m.getString(str))).append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel x = zzb.x(parcel, i);
                x.setDataPosition(0);
                a(sb, zzaVar.l(), x);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    @Override // com.google.android.gms.internal.zzacl, com.google.android.gms.internal.zzack
    public Object a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.internal.zzack
    public Map<String, zzack.zza<?, ?>> a() {
        if (this.d == null) {
            return null;
        }
        return this.d.a(this.e);
    }

    public int b() {
        return this.f533a;
    }

    @Override // com.google.android.gms.internal.zzacl, com.google.android.gms.internal.zzack
    public boolean b(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Parcel c() {
        switch (this.f) {
            case 0:
                this.g = com.google.android.gms.common.internal.safeparcel.a.a(this.b);
                com.google.android.gms.common.internal.safeparcel.a.a(this.b, this.g);
                this.f = 2;
                break;
            case 1:
                com.google.android.gms.common.internal.safeparcel.a.a(this.b, this.g);
                this.f = 2;
                break;
        }
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaco d() {
        switch (this.c) {
            case 0:
                return null;
            case 1:
                return this.d;
            case 2:
                return this.d;
            default:
                throw new IllegalStateException(new StringBuilder(34).append("Invalid creation type: ").append(this.c).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzack
    public String toString() {
        com.google.android.gms.common.internal.c.a(this.d, "Cannot convert to JSON on client side.");
        Parcel c = c();
        c.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.d.a(this.e), c);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        t.a(this, parcel, i);
    }
}