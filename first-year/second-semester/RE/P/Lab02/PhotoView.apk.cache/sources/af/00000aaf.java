package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzaxw extends zza {
    public static final Parcelable.Creator<zzaxw> CREATOR = new ai();

    /* renamed from: a  reason: collision with root package name */
    final int f538a;
    private final Account b;
    private final Scope[] c;
    private final String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaxw(int i, Account account, Scope[] scopeArr, String str) {
        this.f538a = i;
        this.b = account;
        this.c = scopeArr;
        this.d = str;
    }

    public Account a() {
        return this.b;
    }

    public Scope[] b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ai.a(this, parcel, i);
    }
}