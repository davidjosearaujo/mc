package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.login.LoginClient;

/* loaded from: classes.dex */
public class LoginFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private String f246a;
    private LoginClient b;
    private LoginClient.Request c;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            this.b = (LoginClient) bundle.getParcelable("loginClient");
            this.b.a(this);
        } else {
            this.b = a();
        }
        this.b.setOnCompletedListener(new LoginClient.b() { // from class: com.facebook.login.LoginFragment.1
            @Override // com.facebook.login.LoginClient.b
            public void a(LoginClient.Result result) {
                LoginFragment.this.a(result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a(activity);
            Intent intent = activity.getIntent();
            if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
                this.c = (LoginClient.Request) bundleExtra.getParcelable("request");
            }
        }
    }

    protected LoginClient a() {
        return new LoginClient(this);
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.b.f();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(com.facebook.common.R.layout.com_facebook_login_fragment, viewGroup, false);
        final View findViewById = inflate.findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        this.b.a(new LoginClient.a() { // from class: com.facebook.login.LoginFragment.2
            @Override // com.facebook.login.LoginClient.a
            public void a() {
                findViewById.setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.a
            public void b() {
                findViewById.setVisibility(8);
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LoginClient.Result result) {
        this.c = null;
        int i = result.f244a == LoginClient.Result.Code.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f246a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
            return;
        }
        this.b.a(this.c);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        View findViewById = getView() == null ? null : getView().findViewById(com.facebook.common.R.id.com_facebook_login_fragment_progress_bar);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.b.a(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("loginClient", this.b);
    }

    private void a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f246a = callingActivity.getPackageName();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoginClient b() {
        return this.b;
    }
}