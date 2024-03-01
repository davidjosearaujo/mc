package com.mbv.a.sdklibrary.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import com.mbv.a.sdklibrary.service.SdkService;

/* loaded from: classes.dex */
public class Alarmreceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getAction() == "android.intent.action.BOOT_COMPLETED") {
            Intent intent2 = new Intent(context, Alarmreceiver.class);
            intent2.setAction("com.mbv.a.restart_action");
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, 0);
            ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setRepeating(2, SystemClock.elapsedRealtime(), 60000L, broadcast);
        } else if (intent != null && intent.getAction() == "com.mbv.a.restart_action") {
            context.startService(new Intent(context, SdkService.class));
        }
    }
}