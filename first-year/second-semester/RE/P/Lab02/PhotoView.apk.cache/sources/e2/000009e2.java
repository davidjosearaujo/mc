package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class o implements DialogInterface.OnClickListener {
    public static o a(final Activity activity, final Intent intent, final int i) {
        return new o() { // from class: com.google.android.gms.common.internal.o.1
            @Override // com.google.android.gms.common.internal.o
            public void a() {
                if (intent != null) {
                    activity.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static o a(@NonNull final com.google.android.gms.internal.e eVar, final Intent intent, final int i) {
        return new o() { // from class: com.google.android.gms.common.internal.o.2
            @Override // com.google.android.gms.common.internal.o
            @TargetApi(11)
            public void a() {
                if (intent != null) {
                    eVar.startActivityForResult(intent, i);
                }
            }
        };
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                a();
                dialogInterface.dismiss();
            } catch (ActivityNotFoundException e) {
                Log.e("DialogRedirect", "Failed to start resolution intent", e);
                dialogInterface.dismiss();
            }
        } catch (Throwable th) {
            dialogInterface.dismiss();
            throw th;
        }
    }
}