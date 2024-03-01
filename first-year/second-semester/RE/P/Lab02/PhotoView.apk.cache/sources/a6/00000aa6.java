package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzack;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class zzaco extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaco> CREATOR = new r();

    /* renamed from: a  reason: collision with root package name */
    final int f530a;
    private final HashMap<String, Map<String, zzack.zza<?, ?>>> b;
    private final ArrayList<zza> c = null;
    private final String d;

    /* loaded from: classes.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new s();

        /* renamed from: a  reason: collision with root package name */
        final int f531a;
        final String b;
        final ArrayList<zzb> c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, String str, ArrayList<zzb> arrayList) {
            this.f531a = i;
            this.b = str;
            this.c = arrayList;
        }

        zza(String str, Map<String, zzack.zza<?, ?>> map) {
            this.f531a = 1;
            this.b = str;
            this.c = a(map);
        }

        private static ArrayList<zzb> a(Map<String, zzack.zza<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<zzb> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new zzb(str, map.get(str)));
            }
            return arrayList;
        }

        HashMap<String, zzack.zza<?, ?>> a() {
            HashMap<String, zzack.zza<?, ?>> hashMap = new HashMap<>();
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                zzb zzbVar = this.c.get(i);
                hashMap.put(zzbVar.b, zzbVar.c);
            }
            return hashMap;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            s.a(this, parcel, i);
        }
    }

    /* loaded from: classes.dex */
    public static class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zzb> CREATOR = new q();

        /* renamed from: a  reason: collision with root package name */
        final int f532a;
        final String b;
        final zzack.zza<?, ?> c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(int i, String str, zzack.zza<?, ?> zzaVar) {
            this.f532a = i;
            this.b = str;
            this.c = zzaVar;
        }

        zzb(String str, zzack.zza<?, ?> zzaVar) {
            this.f532a = 1;
            this.b = str;
            this.c = zzaVar;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            q.a(this, parcel, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaco(int i, ArrayList<zza> arrayList, String str) {
        this.f530a = i;
        this.b = a(arrayList);
        this.d = (String) com.google.android.gms.common.internal.c.a(str);
        a();
    }

    private static HashMap<String, Map<String, zzack.zza<?, ?>>> a(ArrayList<zza> arrayList) {
        HashMap<String, Map<String, zzack.zza<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zza zzaVar = arrayList.get(i);
            hashMap.put(zzaVar.b, zzaVar.a());
        }
        return hashMap;
    }

    public Map<String, zzack.zza<?, ?>> a(String str) {
        return this.b.get(str);
    }

    public void a() {
        for (String str : this.b.keySet()) {
            Map<String, zzack.zza<?, ?>> map = this.b.get(str);
            for (String str2 : map.keySet()) {
                map.get(str2).a(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<zza> b() {
        ArrayList<zza> arrayList = new ArrayList<>();
        for (String str : this.b.keySet()) {
            arrayList.add(new zza(str, this.b.get(str)));
        }
        return arrayList;
    }

    public String c() {
        return this.d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.b.keySet()) {
            sb.append(str).append(":\n");
            Map<String, zzack.zza<?, ?>> map = this.b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        r.a(this, parcel, i);
    }
}