package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

/* loaded from: classes.dex */
public class CustomTabMainActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final String f77a = CustomTabMainActivity.class.getSimpleName() + ".extra_params";
    public static final String b = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";
    public static final String c = CustomTabMainActivity.class.getSimpleName() + ".extra_url";
    public static final String d = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";
    private boolean e = true;
    private BroadcastReceiver f;

    public static final String a() {
        return "fb" + d.j() + "://authorize";
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (CustomTabActivity.f75a.equals(getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle == null) {
            Bundle bundleExtra = getIntent().getBundleExtra(f77a);
            new com.facebook.internal.d("oauth", bundleExtra).a(this, getIntent().getStringExtra(b));
            this.e = false;
            this.f = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.d);
                    intent2.putExtra(CustomTabMainActivity.c, intent.getStringExtra(CustomTabMainActivity.c));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            LocalBroadcastManager.getInstance(this).registerReceiver(this.f, new IntentFilter(CustomTabActivity.f75a));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (d.equals(intent.getAction())) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(CustomTabActivity.b));
            a(-1, intent);
        } else if (CustomTabActivity.f75a.equals(intent.getAction())) {
            a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.e) {
            a(0, null);
        }
        this.e = true;
    }

    private void a(int i, Intent intent) {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.f);
        if (intent != null) {
            setResult(i, intent);
        } else {
            setResult(i);
        }
        finish();
    }
}