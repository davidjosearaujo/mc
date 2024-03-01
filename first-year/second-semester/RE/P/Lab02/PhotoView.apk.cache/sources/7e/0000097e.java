package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    protected int f397a = 0;

    public static PendingIntent a(Context context, PendingIntent pendingIntent, int i) {
        return a(context, pendingIntent, i, true);
    }

    public static PendingIntent a(Context context, PendingIntent pendingIntent, int i, boolean z) {
        return PendingIntent.getActivity(context, 0, b(context, pendingIntent, i, z), 134217728);
    }

    private void a() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
        } else if (pendingIntent == null) {
            com.google.android.gms.common.b.a().b(this, num.intValue(), 2, this);
            this.f397a = 1;
        } else {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.f397a = 1;
            } catch (IntentSender.SendIntentException e) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                finish();
            }
        }
    }

    private void a(int i, com.google.android.gms.internal.c cVar) {
        switch (i) {
            case -1:
                cVar.a();
                return;
            case 0:
                cVar.b(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                return;
            default:
                return;
        }
    }

    public static Intent b(Context context, PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", z);
        return intent;
    }

    protected void a(int i) {
        setResult(i);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f397a = 0;
            a(i2);
            if (booleanExtra) {
                a(i2, com.google.android.gms.internal.c.a(this));
            }
        } else if (i == 2) {
            this.f397a = 0;
            a(i2);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f397a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f397a = bundle.getInt("resolution");
        }
        if (this.f397a != 1) {
            a();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f397a);
        super.onSaveInstanceState(bundle);
    }
}