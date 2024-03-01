package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.dynamic.zzg;

/* loaded from: classes.dex */
public final class g extends zzg<aa> {

    /* renamed from: a  reason: collision with root package name */
    private static final g f432a = new g();

    private g() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int i2) {
        return f432a.b(context, i, i2);
    }

    private View b(Context context, int i, int i2) {
        try {
            zzah zzahVar = new zzah(i, i2, null);
            return (View) com.google.android.gms.dynamic.b.a(a(context).a(com.google.android.gms.dynamic.b.a(context), zzahVar));
        } catch (Exception e) {
            throw new zzg.zza(new StringBuilder(64).append("Could not get button with size ").append(i).append(" and color ").append(i2).toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.zzg
    /* renamed from: a */
    public aa b(IBinder iBinder) {
        return aa.a.a(iBinder);
    }
}