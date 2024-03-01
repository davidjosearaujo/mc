package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f521a;

    public u(Context context) {
        this.f521a = context;
    }

    public ApplicationInfo a(String str, int i) {
        return this.f521a.getPackageManager().getApplicationInfo(str, i);
    }

    public CharSequence a(String str) {
        return this.f521a.getPackageManager().getApplicationLabel(this.f521a.getPackageManager().getApplicationInfo(str, 0));
    }

    @TargetApi(19)
    public boolean a(int i, String str) {
        if (com.google.android.gms.common.util.l.f()) {
            try {
                ((AppOpsManager) this.f521a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.f521a.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (String str2 : packagesForUid) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public PackageInfo b(String str, int i) {
        return this.f521a.getPackageManager().getPackageInfo(str, i);
    }
}