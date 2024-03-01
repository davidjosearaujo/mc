package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.g;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.internal.l;
import com.facebook.login.LoginClient;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceAuthDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBar f230a;
    private TextView b;
    private TextView c;
    private DeviceAuthMethodHandler d;
    private volatile com.facebook.e f;
    private volatile ScheduledFuture g;
    private volatile RequestState h;
    private Dialog i;
    private AtomicBoolean e = new AtomicBoolean();
    private boolean j = false;
    private boolean k = false;
    private LoginClient.Request l = null;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.d = (DeviceAuthMethodHandler) ((LoginFragment) ((FacebookActivity) getActivity()).b()).b().g();
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            a(requestState);
        }
        return onCreateView;
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.i = new Dialog(getActivity(), com.facebook.common.R.style.com_facebook_auth_dialog);
        this.i.setContentView(a(com.facebook.a.a.a.b() && !this.k));
        return this.i;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.j) {
            d();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.h != null) {
            bundle.putParcelable("request_state", this.h);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.j = true;
        this.e.set(true);
        super.onDestroy();
        if (this.f != null) {
            this.f.cancel(true);
        }
        if (this.g != null) {
            this.g.cancel(true);
        }
    }

    public void a(LoginClient.Request request) {
        this.l = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.a()));
        String g = request.g();
        if (g != null) {
            bundle.putString("redirect_uri", g);
        }
        bundle.putString("access_token", ac.b() + "|" + ac.c());
        bundle.putString("device_info", com.facebook.a.a.a.a());
        new GraphRequest(null, "device/login", bundle, HttpMethod.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.1
            @Override // com.facebook.GraphRequest.b
            public void a(g gVar) {
                if (!DeviceAuthDialog.this.j) {
                    if (gVar.a() != null) {
                        DeviceAuthDialog.this.a(gVar.a().g());
                        return;
                    }
                    JSONObject b = gVar.b();
                    RequestState requestState = new RequestState();
                    try {
                        requestState.a(b.getString("user_code"));
                        requestState.b(b.getString("code"));
                        requestState.a(b.getLong("interval"));
                        DeviceAuthDialog.this.a(requestState);
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new FacebookException(e));
                    }
                }
            }
        }).j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestState requestState) {
        this.h = requestState;
        this.b.setText(requestState.b());
        this.c.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(getResources(), com.facebook.a.a.a.b(requestState.a())), (Drawable) null, (Drawable) null);
        this.b.setVisibility(0);
        this.f230a.setVisibility(8);
        if (!this.k && com.facebook.a.a.a.a(requestState.b())) {
            AppEventsLogger.b(getContext()).a("fb_smart_login_service", (Double) null, (Bundle) null);
        }
        if (requestState.e()) {
            b();
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View a(boolean z) {
        View inflate;
        LayoutInflater layoutInflater = getActivity().getLayoutInflater();
        if (z) {
            inflate = layoutInflater.inflate(com.facebook.common.R.layout.com_facebook_smart_device_dialog_fragment, (ViewGroup) null);
        } else {
            inflate = layoutInflater.inflate(com.facebook.common.R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        }
        this.f230a = (ProgressBar) inflate.findViewById(com.facebook.common.R.id.progress_bar);
        this.b = (TextView) inflate.findViewById(com.facebook.common.R.id.confirmation_code);
        ((Button) inflate.findViewById(com.facebook.common.R.id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceAuthDialog.this.d();
            }
        });
        this.c = (TextView) inflate.findViewById(com.facebook.common.R.id.com_facebook_device_auth_instructions);
        this.c.setText(Html.fromHtml(getString(com.facebook.common.R.string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.h.b(new Date().getTime());
        this.f = c().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.g = DeviceAuthMethodHandler.c().schedule(new Runnable() { // from class: com.facebook.login.DeviceAuthDialog.3
            @Override // java.lang.Runnable
            public void run() {
                DeviceAuthDialog.this.a();
            }
        }, this.h.d(), TimeUnit.SECONDS);
    }

    private GraphRequest c() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.h.c());
        return new GraphRequest(null, "device/login_status", bundle, HttpMethod.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.4
            @Override // com.facebook.GraphRequest.b
            public void a(g gVar) {
                if (!DeviceAuthDialog.this.e.get()) {
                    FacebookRequestError a2 = gVar.a();
                    if (a2 != null) {
                        switch (a2.c()) {
                            case 1349152:
                            case 1349173:
                                DeviceAuthDialog.this.d();
                                return;
                            case 1349172:
                            case 1349174:
                                DeviceAuthDialog.this.b();
                                return;
                            default:
                                DeviceAuthDialog.this.a(gVar.a().g());
                                return;
                        }
                    }
                    try {
                        DeviceAuthDialog.this.a(gVar.b().getString("access_token"));
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new FacebookException(e));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final ab.c cVar, final String str2, String str3) {
        String string = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_title);
        String string2 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_continue_as);
        String string3 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.a(str, cVar, str2);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.i.setContentView(DeviceAuthDialog.this.a(false));
                DeviceAuthDialog.this.a(DeviceAuthDialog.this.l);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        new GraphRequest(new AccessToken(str, com.facebook.d.j(), "0", null, null, null, null, null), "me", bundle, HttpMethod.GET, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.7
            @Override // com.facebook.GraphRequest.b
            public void a(g gVar) {
                if (!DeviceAuthDialog.this.e.get()) {
                    if (gVar.a() != null) {
                        DeviceAuthDialog.this.a(gVar.a().g());
                        return;
                    }
                    try {
                        JSONObject b = gVar.b();
                        String string = b.getString("id");
                        ab.c a2 = ab.a(b);
                        String string2 = b.getString("name");
                        com.facebook.a.a.a.c(DeviceAuthDialog.this.h.b());
                        if (!l.a(com.facebook.d.j()).g().contains(SmartLoginOption.RequireConfirm) || DeviceAuthDialog.this.k) {
                            DeviceAuthDialog.this.a(string, a2, str);
                            return;
                        }
                        DeviceAuthDialog.this.k = true;
                        DeviceAuthDialog.this.a(string, a2, str, string2);
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new FacebookException(e));
                    }
                }
            }
        }).j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, ab.c cVar, String str2) {
        this.d.a(str2, com.facebook.d.j(), str, cVar.a(), cVar.b(), AccessTokenSource.DEVICE_AUTH, null, null);
        this.i.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FacebookException facebookException) {
        if (this.e.compareAndSet(false, true)) {
            if (this.h != null) {
                com.facebook.a.a.a.c(this.h.b());
            }
            this.d.a(facebookException);
            this.i.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.e.compareAndSet(false, true)) {
            if (this.h != null) {
                com.facebook.a.a.a.c(this.h.b());
            }
            if (this.d != null) {
                this.d.b_();
            }
            this.i.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog.RequestState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private String f238a;
        private String b;
        private String c;
        private long d;
        private long e;

        RequestState() {
        }

        public String a() {
            return this.f238a;
        }

        public String b() {
            return this.b;
        }

        public void a(String str) {
            this.b = str;
            this.f238a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
        }

        public String c() {
            return this.c;
        }

        public void b(String str) {
            this.c = str;
        }

        public long d() {
            return this.d;
        }

        public void a(long j) {
            this.d = j;
        }

        public void b(long j) {
            this.e = j;
        }

        protected RequestState(Parcel parcel) {
            this.b = parcel.readString();
            this.c = parcel.readString();
            this.d = parcel.readLong();
            this.e = parcel.readLong();
        }

        public boolean e() {
            return this.e != 0 && (new Date().getTime() - this.e) - (this.d * 1000) < 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.b);
            parcel.writeString(this.c);
            parcel.writeLong(this.d);
            parcel.writeLong(this.e);
        }
    }
}