package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.zzaar;

/* loaded from: classes.dex */
public abstract class aq extends d implements DialogInterface.OnCancelListener {
    protected boolean b;
    protected boolean c;
    protected final com.google.android.gms.common.b d;
    private ConnectionResult e;
    private int f;
    private final Handler g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            if (aq.this.b) {
                if (aq.this.e.a()) {
                    aq.this.f511a.startActivityForResult(GoogleApiActivity.b(aq.this.e(), aq.this.e.d(), aq.this.f, false), 1);
                } else if (aq.this.d.a(aq.this.e.c())) {
                    aq.this.d.a(aq.this.e(), aq.this.f511a, aq.this.e.c(), 2, aq.this);
                } else if (aq.this.e.c() != 18) {
                    aq.this.a(aq.this.e, aq.this.f);
                } else {
                    final Dialog a2 = aq.this.d.a(aq.this.e(), aq.this);
                    aq.this.d.a(aq.this.e().getApplicationContext(), new zzaar.a() { // from class: com.google.android.gms.internal.aq.a.1
                        @Override // com.google.android.gms.internal.zzaar.a
                        public void a() {
                            aq.this.g();
                            if (a2.isShowing()) {
                                a2.dismiss();
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.d
    public void a() {
        super.a();
        this.b = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.d
    public void a(int i, int i2, Intent intent) {
        switch (i) {
            case 1:
                if (i2 != -1) {
                    if (i2 == 0) {
                        this.e = new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null);
                    }
                    r0 = false;
                    break;
                }
                break;
            case 2:
                int a2 = this.d.a(e());
                r0 = a2 == 0;
                if (this.e.c() == 18 && a2 == 18) {
                    return;
                }
                break;
            default:
                r0 = false;
                break;
        }
        if (r0) {
            g();
        } else {
            a(this.e, this.f);
        }
    }

    @Override // com.google.android.gms.internal.d
    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.c = bundle.getBoolean("resolving_error", false);
            if (this.c) {
                this.f = bundle.getInt("failed_client_id", -1);
                this.e = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    protected abstract void a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.internal.d
    public void b() {
        super.b();
        this.b = false;
    }

    @Override // com.google.android.gms.internal.d
    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putBoolean("resolving_error", this.c);
        if (this.c) {
            bundle.putInt("failed_client_id", this.f);
            bundle.putInt("failed_status", this.e.c());
            bundle.putParcelable("failed_resolution", this.e.d());
        }
    }

    public void b(ConnectionResult connectionResult, int i) {
        if (this.c) {
            return;
        }
        this.c = true;
        this.f = i;
        this.e = connectionResult;
        this.g.post(new a());
    }

    protected abstract void c();

    protected void g() {
        this.f = -1;
        this.c = false;
        this.e = null;
        c();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), this.f);
        g();
    }
}