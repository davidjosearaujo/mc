package com.mbv.a.sdklibrary.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.v4.app.NotificationCompat;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.receiver.Alarmreceiver;

/* loaded from: classes.dex */
public class SdkService extends Service {
    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!f.t()) {
            com.mbv.a.sdklibrary.a.a(this);
        }
        Intent intent2 = new Intent(this, Alarmreceiver.class);
        intent2.setAction("com.mbv.a.restart_action");
        ((AlarmManager) getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime() + 60000, PendingIntent.getBroadcast(this, 0, intent2, 0));
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        com.mbv.a.sdklibrary.a.b();
        super.onDestroy();
    }
}