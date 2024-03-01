package com.facebook.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.appevents.AppEventsLogger;

/* loaded from: classes.dex */
public class BoltsMeasurementEventListener extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static BoltsMeasurementEventListener f147a;
    private Context b;

    private BoltsMeasurementEventListener(Context context) {
        this.b = context.getApplicationContext();
    }

    private void a() {
        LocalBroadcastManager.getInstance(this.b).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
    }

    private void b() {
        LocalBroadcastManager.getInstance(this.b).unregisterReceiver(this);
    }

    public static BoltsMeasurementEventListener a(Context context) {
        if (f147a != null) {
            return f147a;
        }
        f147a = new BoltsMeasurementEventListener(context);
        f147a.a();
        return f147a;
    }

    protected void finalize() {
        try {
            b();
        } finally {
            super.finalize();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AppEventsLogger b = AppEventsLogger.b(context);
        String str = "bf_" + intent.getStringExtra("event_name");
        Bundle bundleExtra = intent.getBundleExtra("event_args");
        Bundle bundle = new Bundle();
        for (String str2 : bundleExtra.keySet()) {
            bundle.putString(str2.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String) bundleExtra.get(str2));
        }
        b.a(str, bundle);
    }
}