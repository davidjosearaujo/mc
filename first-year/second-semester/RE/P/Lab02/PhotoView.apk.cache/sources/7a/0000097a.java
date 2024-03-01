package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;

/* loaded from: classes.dex */
public class SupportErrorDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f395a = null;
    private DialogInterface.OnCancelListener b = null;

    public static SupportErrorDialogFragment a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.c.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f395a = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.b = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.b != null) {
            this.b.onCancel(dialogInterface);
        }
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f395a == null) {
            setShowsDialog(false);
        }
        return this.f395a;
    }

    @Override // android.support.v4.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}