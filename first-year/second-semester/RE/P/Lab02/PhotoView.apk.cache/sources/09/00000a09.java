package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.u;
import java.util.Collection;

/* loaded from: classes.dex */
public class zzj extends zza {
    public static final Parcelable.Creator<zzj> CREATOR = new p();

    /* renamed from: a  reason: collision with root package name */
    final int f462a;
    final int b;
    int c;
    String d;
    IBinder e;
    Scope[] f;
    Bundle g;
    Account h;
    long i;

    public zzj(int i) {
        this.f462a = 3;
        this.c = com.google.android.gms.common.f.b;
        this.b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, long j) {
        this.f462a = i;
        this.b = i2;
        this.c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.d = "com.google.android.gms";
        } else {
            this.d = str;
        }
        if (i < 2) {
            this.h = a(iBinder);
        } else {
            this.e = iBinder;
            this.h = account;
        }
        this.f = scopeArr;
        this.g = bundle;
        this.i = j;
    }

    private Account a(IBinder iBinder) {
        if (iBinder != null) {
            return a.a(u.a.a(iBinder));
        }
        return null;
    }

    public zzj a(Account account) {
        this.h = account;
        return this;
    }

    public zzj a(Bundle bundle) {
        this.g = bundle;
        return this;
    }

    public zzj a(u uVar) {
        if (uVar != null) {
            this.e = uVar.asBinder();
        }
        return this;
    }

    public zzj a(String str) {
        this.d = str;
        return this;
    }

    public zzj a(Collection<Scope> collection) {
        this.f = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        p.a(this, parcel, i);
    }
}