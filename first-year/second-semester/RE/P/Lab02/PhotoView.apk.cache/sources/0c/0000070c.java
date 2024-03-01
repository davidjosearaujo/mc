package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.util.Log;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.w;
import com.facebook.login.LoginFragment;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    public static String f79a = "PassThrough";
    private static String b = "SingleFragment";
    private static final String c = FacebookActivity.class.getName();
    private Fragment d;

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!d.a()) {
            Log.d(c, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            d.a(getApplicationContext());
        }
        setContentView(com.facebook.common.R.layout.com_facebook_activity_layout);
        if (f79a.equals(intent.getAction())) {
            c();
        } else {
            this.d = a();
        }
    }

    protected Fragment a() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(b);
        if (findFragmentByTag == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
                facebookDialogFragment.setRetainInstance(true);
                facebookDialogFragment.show(supportFragmentManager, b);
                return facebookDialogFragment;
            } else if ("DeviceShareDialogFragment".equals(intent.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.a((ShareContent) intent.getParcelableExtra("content"));
                deviceShareDialogFragment.show(supportFragmentManager, b);
                return deviceShareDialogFragment;
            } else {
                LoginFragment loginFragment = new LoginFragment();
                loginFragment.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(com.facebook.common.R.id.com_facebook_fragment_container, loginFragment, b).commit();
                return loginFragment;
            }
        }
        return findFragmentByTag;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.d != null) {
            this.d.onConfigurationChanged(configuration);
        }
    }

    public Fragment b() {
        return this.d;
    }

    private void c() {
        setResult(0, w.a(getIntent(), (Bundle) null, w.a(w.d(getIntent()))));
        finish();
    }
}