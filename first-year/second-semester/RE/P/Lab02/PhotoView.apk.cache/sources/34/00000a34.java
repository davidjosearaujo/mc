package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.flags.impl.a;
import com.google.android.gms.internal.w;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends w.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f479a = false;
    private SharedPreferences b;

    @Override // com.google.android.gms.internal.w
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.f479a ? z : a.C0030a.a(this.b, str, Boolean.valueOf(z)).booleanValue();
    }

    @Override // com.google.android.gms.internal.w
    public int getIntFlagValue(String str, int i, int i2) {
        return !this.f479a ? i : a.b.a(this.b, str, Integer.valueOf(i)).intValue();
    }

    @Override // com.google.android.gms.internal.w
    public long getLongFlagValue(String str, long j, int i) {
        return !this.f479a ? j : a.c.a(this.b, str, Long.valueOf(j)).longValue();
    }

    @Override // com.google.android.gms.internal.w
    public String getStringFlagValue(String str, String str2, int i) {
        return !this.f479a ? str2 : a.d.a(this.b, str, str2);
    }

    @Override // com.google.android.gms.internal.w
    public void init(com.google.android.gms.dynamic.a aVar) {
        Context context = (Context) com.google.android.gms.dynamic.b.a(aVar);
        if (this.f479a) {
            return;
        }
        try {
            this.b = b.a(context.createPackageContext("com.google.android.gms", 0));
            this.f479a = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}