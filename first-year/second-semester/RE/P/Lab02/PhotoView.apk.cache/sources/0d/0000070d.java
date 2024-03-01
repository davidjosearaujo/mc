package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.w;

/* loaded from: classes.dex */
public class FacebookBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        String stringExtra2 = intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION");
        if (stringExtra != null && stringExtra2 != null) {
            Bundle extras = intent.getExtras();
            if (w.e(intent)) {
                b(stringExtra, stringExtra2, extras);
            } else {
                a(stringExtra, stringExtra2, extras);
            }
        }
    }

    protected void a(String str, String str2, Bundle bundle) {
    }

    protected void b(String str, String str2, Bundle bundle) {
    }
}