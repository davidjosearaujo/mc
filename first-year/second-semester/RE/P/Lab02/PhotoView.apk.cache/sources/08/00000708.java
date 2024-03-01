package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

/* loaded from: classes.dex */
public class CustomTabActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public static final String f75a = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";
    public static final String b = CustomTabActivity.class.getSimpleName() + ".action_destroy";
    private BroadcastReceiver c;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f75a);
        intent.putExtra(CustomTabMainActivity.c, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == 0) {
            Intent intent2 = new Intent(f75a);
            intent2.putExtra(CustomTabMainActivity.c, getIntent().getDataString());
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
            this.c = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent3) {
                    CustomTabActivity.this.finish();
                }
            };
            LocalBroadcastManager.getInstance(this).registerReceiver(this.c, new IntentFilter(b));
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.c);
        super.onDestroy();
    }
}