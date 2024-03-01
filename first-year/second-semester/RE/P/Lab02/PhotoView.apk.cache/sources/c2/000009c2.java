package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.u;

/* loaded from: classes.dex */
public class a extends u.a {

    /* renamed from: a  reason: collision with root package name */
    int f428a;

    public static Account a(u uVar) {
        Account account = null;
        if (uVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = uVar.a();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    @Override // com.google.android.gms.common.internal.u
    public Account a() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.f428a) {
            if (!com.google.android.gms.common.h.a((Context) null, callingUid)) {
                throw new SecurityException("Caller is not GooglePlayServices");
            }
            this.f428a = callingUid;
        }
        return null;
    }

    public boolean equals(Object obj) {
        Account account = null;
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            return account.equals(null);
        }
        return false;
    }
}