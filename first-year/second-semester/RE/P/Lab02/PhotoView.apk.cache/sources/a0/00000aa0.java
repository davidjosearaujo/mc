package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.internal.zzack;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzach extends com.google.android.gms.common.internal.safeparcel.zza implements zzack.a<String, Integer> {
    public static final Parcelable.Creator<zzach> CREATOR = new n();

    /* renamed from: a  reason: collision with root package name */
    final int f527a;
    private final HashMap<String, Integer> b;
    private final SparseArray<String> c;
    private final ArrayList<zza> d;

    /* loaded from: classes.dex */
    public static final class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new o();

        /* renamed from: a  reason: collision with root package name */
        final int f528a;
        final String b;
        final int c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, String str, int i2) {
            this.f528a = i;
            this.b = str;
            this.c = i2;
        }

        zza(String str, int i) {
            this.f528a = 1;
            this.b = str;
            this.c = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            o.a(this, parcel, i);
        }
    }

    public zzach() {
        this.f527a = 1;
        this.b = new HashMap<>();
        this.c = new SparseArray<>();
        this.d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzach(int i, ArrayList<zza> arrayList) {
        this.f527a = i;
        this.b = new HashMap<>();
        this.c = new SparseArray<>();
        this.d = null;
        a(arrayList);
    }

    private void a(ArrayList<zza> arrayList) {
        Iterator<zza> it = arrayList.iterator();
        while (it.hasNext()) {
            zza next = it.next();
            a(next.b, next.c);
        }
    }

    public zzach a(String str, int i) {
        this.b.put(str, Integer.valueOf(i));
        this.c.put(i, str);
        return this;
    }

    @Override // com.google.android.gms.internal.zzack.a
    public String a(Integer num) {
        String str = this.c.get(num.intValue());
        return (str == null && this.b.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<zza> a() {
        ArrayList<zza> arrayList = new ArrayList<>();
        for (String str : this.b.keySet()) {
            arrayList.add(new zza(str, this.b.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        n.a(this, parcel, i);
    }
}