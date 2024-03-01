package com.mbv.a.sdklibrary.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.mbv.a.sdklibrary.b;
import com.mbv.a.sdklibrary.b.a;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.b.k;

/* loaded from: classes.dex */
public class ReReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("referrer");
        f.a(stringExtra);
        a.a(Uri.parse("http://www.baidu.com?" + k.b(stringExtra)).getQueryParameter("clickid"));
        b.a().a(stringExtra);
    }
}