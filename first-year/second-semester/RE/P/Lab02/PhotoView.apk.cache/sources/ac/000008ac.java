package com.facebook.share.internal;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.common.R;
import com.facebook.internal.ac;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceShareDialogFragment extends DialogFragment {
    private static ScheduledThreadPoolExecutor f;

    /* renamed from: a  reason: collision with root package name */
    private ProgressBar f280a;
    private TextView b;
    private Dialog c;
    private volatile RequestState d;
    private volatile ScheduledFuture e;
    private ShareContent g;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            a(requestState);
        }
        return onCreateView;
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.c = new Dialog(getActivity(), R.style.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f280a = (ProgressBar) inflate.findViewById(R.id.progress_bar);
        this.b = (TextView) inflate.findViewById(R.id.confirmation_code);
        ((Button) inflate.findViewById(R.id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceShareDialogFragment.this.c.dismiss();
            }
        });
        ((TextView) inflate.findViewById(R.id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(R.string.com_facebook_device_auth_instructions)));
        this.c.setContentView(inflate);
        c();
        return this.c;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.e != null) {
            this.e.cancel(true);
        }
        a(-1, new Intent());
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.d != null) {
            bundle.putParcelable("request_state", this.d);
        }
    }

    private void a(int i, Intent intent) {
        if (this.d != null) {
            com.facebook.a.a.a.c(this.d.a());
        }
        FacebookRequestError facebookRequestError = (FacebookRequestError) intent.getParcelableExtra("error");
        if (facebookRequestError != null) {
            Toast.makeText(getContext(), facebookRequestError.e(), 0).show();
        }
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    private void a() {
        if (isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    public void a(ShareContent shareContent) {
        this.g = shareContent;
    }

    private Bundle b() {
        ShareContent shareContent = this.g;
        if (shareContent == null) {
            return null;
        }
        if (shareContent instanceof ShareLinkContent) {
            return l.a((ShareLinkContent) shareContent);
        }
        if (shareContent instanceof ShareOpenGraphContent) {
            return l.a((ShareOpenGraphContent) shareContent);
        }
        return null;
    }

    private void c() {
        Bundle b = b();
        if (b == null || b.size() == 0) {
            a(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        b.putString("access_token", ac.b() + "|" + ac.c());
        b.putString("device_info", com.facebook.a.a.a.a());
        new GraphRequest(null, "device/share", b, HttpMethod.POST, new GraphRequest.b() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.2
            @Override // com.facebook.GraphRequest.b
            public void a(com.facebook.g gVar) {
                FacebookRequestError a2 = gVar.a();
                if (a2 != null) {
                    DeviceShareDialogFragment.this.a(a2);
                    return;
                }
                JSONObject b2 = gVar.b();
                RequestState requestState = new RequestState();
                try {
                    requestState.a(b2.getString("user_code"));
                    requestState.a(b2.getLong("expires_in"));
                    DeviceShareDialogFragment.this.a(requestState);
                } catch (JSONException e) {
                    DeviceShareDialogFragment.this.a(new FacebookRequestError(0, "", "Malformed server response"));
                }
            }
        }).j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FacebookRequestError facebookRequestError) {
        a();
        Intent intent = new Intent();
        intent.putExtra("error", facebookRequestError);
        a(-1, intent);
    }

    private static synchronized ScheduledThreadPoolExecutor d() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            if (f == null) {
                f = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = f;
        }
        return scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestState requestState) {
        this.d = requestState;
        this.b.setText(requestState.a());
        this.b.setVisibility(0);
        this.f280a.setVisibility(8);
        this.e = d().schedule(new Runnable() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.3
            @Override // java.lang.Runnable
            public void run() {
                DeviceShareDialogFragment.this.c.dismiss();
            }
        }, requestState.b(), TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.RequestState.1
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
        private String f284a;
        private long b;

        RequestState() {
        }

        public String a() {
            return this.f284a;
        }

        public void a(String str) {
            this.f284a = str;
        }

        public long b() {
            return this.b;
        }

        public void a(long j) {
            this.b = j;
        }

        protected RequestState(Parcel parcel) {
            this.f284a = parcel.readString();
            this.b = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f284a);
            parcel.writeLong(this.b);
        }
    }
}