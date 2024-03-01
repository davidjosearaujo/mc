package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.internal.ad;

/* loaded from: classes.dex */
public class FacebookDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f150a;

    public void a(Dialog dialog) {
        this.f150a = dialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        ad a2;
        super.onCreate(bundle);
        if (this.f150a == null) {
            FragmentActivity activity = getActivity();
            Bundle d = w.d(activity.getIntent());
            if (!d.getBoolean("is_fallback", false)) {
                String string = d.getString("action");
                Bundle bundle2 = d.getBundle("params");
                if (ab.a(string)) {
                    ab.b("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                }
                a2 = new ad.a(activity, string, bundle2).a(new ad.c() { // from class: com.facebook.internal.FacebookDialogFragment.1
                    @Override // com.facebook.internal.ad.c
                    public void a(Bundle bundle3, FacebookException facebookException) {
                        FacebookDialogFragment.this.a(bundle3, facebookException);
                    }
                }).a();
            } else {
                String string2 = d.getString("url");
                if (ab.a(string2)) {
                    ab.b("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                }
                a2 = j.a(activity, string2, String.format("fb%s://bridge/", com.facebook.d.j()));
                a2.setOnCompleteListener(new ad.c() { // from class: com.facebook.internal.FacebookDialogFragment.2
                    @Override // com.facebook.internal.ad.c
                    public void a(Bundle bundle3, FacebookException facebookException) {
                        FacebookDialogFragment.this.a(bundle3);
                    }
                });
            }
            this.f150a = a2;
        }
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f150a == null) {
            a((Bundle) null, (FacebookException) null);
            setShowsDialog(false);
        }
        return this.f150a;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f150a instanceof ad) {
            ((ad) this.f150a).e();
        }
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if ((this.f150a instanceof ad) && isResumed()) {
            ((ad) this.f150a).e();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle, FacebookException facebookException) {
        FragmentActivity activity = getActivity();
        activity.setResult(facebookException == null ? -1 : 0, w.a(activity.getIntent(), bundle, facebookException));
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }
}