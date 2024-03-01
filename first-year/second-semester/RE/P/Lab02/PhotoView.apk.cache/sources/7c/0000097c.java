package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;

@TargetApi(11)
/* loaded from: classes.dex */
public class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f396a = null;
    private DialogInterface.OnCancelListener b = null;

    public static a a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        a aVar = new a();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.c.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        aVar.f396a = dialog2;
        if (onCancelListener != null) {
            aVar.b = onCancelListener;
        }
        return aVar;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.b != null) {
            this.b.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f396a == null) {
            setShowsDialog(false);
        }
        return this.f396a;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}