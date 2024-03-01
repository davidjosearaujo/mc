package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.R;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.l;
import com.google.android.gms.internal.zzaar;

/* loaded from: classes.dex */
public class b extends f {
    private static final b c = new b();

    /* renamed from: a  reason: collision with root package name */
    public static final int f404a = f.b;

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes.dex */
    public class a extends Handler {
        private final Context b;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.b = context.getApplicationContext();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int a2 = b.this.a(this.b);
                    if (b.this.a(a2)) {
                        b.this.a(this.b, a2);
                        return;
                    }
                    return;
                default:
                    Log.w("GoogleApiAvailability", new StringBuilder(50).append("Don't know how to handle this message: ").append(message.what).toString());
                    return;
            }
        }
    }

    b() {
    }

    public static b a() {
        return c;
    }

    @Override // com.google.android.gms.common.f
    public int a(Context context) {
        return super.a(context);
    }

    public Dialog a(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return a(activity, i, o.a(activity, b(activity, i, "d"), i2), onCancelListener);
    }

    public Dialog a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(n.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @TargetApi(14)
    Dialog a(Context context, int i, o oVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (l.c()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new AlertDialog.Builder(context, 5);
            }
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(n.c(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String e = n.e(context, i);
        if (e != null) {
            builder.setPositiveButton(e, oVar);
        }
        String a2 = n.a(context, i);
        if (a2 != null) {
            builder.setTitle(a2);
        }
        return builder.create();
    }

    @Override // com.google.android.gms.common.f
    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Override // com.google.android.gms.common.f
    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        return super.a(context, i, i2, str);
    }

    @Nullable
    public PendingIntent a(Context context, ConnectionResult connectionResult) {
        return connectionResult.a() ? connectionResult.d() : a(context, connectionResult.c(), 0);
    }

    @Nullable
    public zzaar a(Context context, zzaar.a aVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zzaar zzaarVar = new zzaar(aVar);
        context.registerReceiver(zzaarVar, intentFilter);
        zzaarVar.a(context);
        if (a(context, "com.google.android.gms")) {
            return zzaarVar;
        }
        aVar.a();
        zzaarVar.a();
        return null;
    }

    @TargetApi(11)
    void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.a(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else if (!l.a()) {
            throw new RuntimeException("This Activity does not support Fragments.");
        } else {
            com.google.android.gms.common.a.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    public void a(Context context, int i) {
        a(context, i, (String) null);
    }

    public void a(Context context, int i, String str) {
        a(context, i, str, a(context, i, 0, "n"));
    }

    @TargetApi(20)
    void a(Context context, int i, String str, PendingIntent pendingIntent) {
        Notification build;
        int i2;
        if (i == 18) {
            b(context);
        } else if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String b = n.b(context, i);
            String d = n.d(context, i);
            Resources resources = context.getResources();
            if (com.google.android.gms.common.util.g.b(context)) {
                com.google.android.gms.common.internal.c.a(l.g());
                build = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(b).setStyle(new Notification.BigTextStyle().bigText(d)).addAction(R.drawable.common_full_open_on_phone, resources.getString(R.string.common_open_on_phone), pendingIntent).build();
            } else {
                build = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(resources.getString(R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(pendingIntent).setContentTitle(b).setContentText(d).setLocalOnly(true).setStyle(new NotificationCompat.BigTextStyle().bigText(d)).build();
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                    h.f.set(false);
                    i2 = 10436;
                    break;
                default:
                    i2 = 39789;
                    break;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (str == null) {
                notificationManager.notify(i2, build);
            } else {
                notificationManager.notify(str, i2, build);
            }
        }
    }

    public void a(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent a2 = a(context, connectionResult);
        if (a2 != null) {
            a(context, connectionResult.c(), (String) null, GoogleApiActivity.a(context, a2, i));
        }
    }

    @Override // com.google.android.gms.common.f
    public final boolean a(int i) {
        return super.a(i);
    }

    public boolean a(Activity activity, @NonNull com.google.android.gms.internal.e eVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i, o.a(eVar, b(activity, i, "d"), i2), onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    @Override // com.google.android.gms.common.f
    @Nullable
    public Intent b(Context context, int i, @Nullable String str) {
        return super.b(context, i, str);
    }

    @Override // com.google.android.gms.common.f
    public final String b(int i) {
        return super.b(i);
    }

    void b(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000L);
    }

    public boolean b(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i, i2, onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }
}