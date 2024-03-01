package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: classes.dex */
public class zzad extends zza {
    public static final Parcelable.Creator<zzad> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f457a;
    private final Account b;
    private final int c;
    private final GoogleSignInAccount d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f457a = i;
        this.b = account;
        this.c = i2;
        this.d = googleSignInAccount;
    }

    public zzad(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public Account a() {
        return this.b;
    }

    public int b() {
        return this.c;
    }

    @Nullable
    public GoogleSignInAccount c() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        d.a(this, parcel, i);
    }
}