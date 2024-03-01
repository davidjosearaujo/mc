package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.GraphRequest;
import com.facebook.common.R;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: WebDialog.java */
/* loaded from: classes.dex */
public class ad extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private static final int f162a = R.style.com_facebook_activity_theme;
    private static volatile int m;
    private String b;
    private String c;
    private c d;
    private WebView e;
    private ProgressDialog f;
    private ImageView g;
    private FrameLayout h;
    private d i;
    private boolean j;
    private boolean k;
    private boolean l;
    private WindowManager.LayoutParams n;

    /* compiled from: WebDialog.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(Bundle bundle, FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null && m == 0) {
                    a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    public static ad a(Context context, String str, Bundle bundle, int i, c cVar) {
        a(context);
        return new ad(context, str, bundle, i, cVar);
    }

    public static int a() {
        ac.a();
        return m;
    }

    public static void a(int i) {
        if (i == 0) {
            i = f162a;
        }
        m = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ad(Context context, String str) {
        this(context, str, a());
    }

    private ad(Context context, String str, int i) {
        super(context, i == 0 ? a() : i);
        this.c = "fbconnect://success";
        this.j = false;
        this.k = false;
        this.l = false;
        this.b = str;
    }

    private ad(Context context, String str, Bundle bundle, int i, c cVar) {
        super(context, i == 0 ? a() : i);
        this.c = "fbconnect://success";
        this.j = false;
        this.k = false;
        this.l = false;
        bundle = bundle == null ? new Bundle() : bundle;
        bundle.putString("redirect_uri", "fbconnect://success");
        bundle.putString("display", "touch");
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", com.facebook.d.h()));
        this.d = cVar;
        if (str.equals("share") && bundle.containsKey("media")) {
            this.i = new d(str, bundle);
        } else {
            this.b = ab.a(z.a(), com.facebook.d.g() + "/dialog/" + str, bundle).toString();
        }
    }

    public void setOnCompleteListener(c cVar) {
        this.d = cVar;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            cancel();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.e != null) {
            this.e.stopLoading();
        }
        if (!this.k && this.f != null && this.f.isShowing()) {
            this.f.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (this.i != null && this.i.getStatus() == AsyncTask.Status.PENDING) {
            this.i.execute(new Void[0]);
            this.f.show();
            return;
        }
        e();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        if (this.i != null) {
            this.i.cancel(true);
            this.f.dismiss();
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.k = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.k = false;
        if (ab.d(getContext()) && this.n != null && this.n.token == null) {
            this.n.token = getOwnerActivity().getWindow().getAttributes().token;
            ab.b("FacebookSDK.WebDialog", "Set token on onAttachedToWindow(): " + this.n.token);
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        if (layoutParams.token == null) {
            this.n = layoutParams;
        }
        super.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f = new ProgressDialog(getContext());
        this.f.requestWindowFeature(1);
        this.f.setMessage(getContext().getString(R.string.com_facebook_loading));
        this.f.setCanceledOnTouchOutside(false);
        this.f.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.ad.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                ad.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.h = new FrameLayout(getContext());
        e();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        f();
        if (this.b != null) {
            b((this.g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
        this.h.addView(this.g, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        this.c = str;
    }

    protected Bundle a(String str) {
        Uri parse = Uri.parse(str);
        Bundle c2 = ab.c(parse.getQuery());
        c2.putAll(ab.c(parse.getFragment()));
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WebView d() {
        return this.e;
    }

    public void e() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }

    private int a(int i, float f, int i2, int i3) {
        double d2 = 0.5d;
        int i4 = (int) (i / f);
        if (i4 <= i2) {
            d2 = 1.0d;
        } else if (i4 < i3) {
            d2 = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (d2 * i);
    }

    protected void a(Bundle bundle) {
        if (this.d != null && !this.j) {
            this.j = true;
            this.d.a(bundle, null);
            dismiss();
        }
    }

    protected void a(Throwable th) {
        FacebookException facebookException;
        if (this.d != null && !this.j) {
            this.j = true;
            if (th instanceof FacebookException) {
                facebookException = (FacebookException) th;
            } else {
                facebookException = new FacebookException(th);
            }
            this.d.a(null, facebookException);
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.d != null && !this.j) {
            a(new FacebookOperationCanceledException());
        }
    }

    private void f() {
        this.g = new ImageView(getContext());
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.ad.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ad.this.cancel();
            }
        });
        this.g.setImageDrawable(getContext().getResources().getDrawable(R.drawable.com_facebook_close));
        this.g.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.e = new WebView(getContext()) { // from class: com.facebook.internal.ad.3
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z) {
                try {
                    super.onWindowFocusChanged(z);
                } catch (NullPointerException e) {
                }
            }
        };
        this.e.setVerticalScrollBarEnabled(false);
        this.e.setHorizontalScrollBarEnabled(false);
        this.e.setWebViewClient(new b());
        this.e.getSettings().setJavaScriptEnabled(true);
        this.e.loadUrl(this.b);
        this.e.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.e.setVisibility(4);
        this.e.getSettings().setSavePassword(false);
        this.e.getSettings().setSaveFormData(false);
        this.e.setFocusable(true);
        this.e.setFocusableInTouchMode(true);
        this.e.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.ad.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.e);
        linearLayout.setBackgroundColor(-872415232);
        this.h.addView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebDialog.java */
    /* loaded from: classes.dex */
    public class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            int i;
            ab.b("FacebookSDK.WebDialog", "Redirect URL: " + str);
            if (str.startsWith(ad.this.c)) {
                Bundle a2 = ad.this.a(str);
                String string = a2.getString("error");
                if (string == null) {
                    string = a2.getString("error_type");
                }
                String string2 = a2.getString("error_msg");
                if (string2 == null) {
                    string2 = a2.getString("error_message");
                }
                if (string2 == null) {
                    string2 = a2.getString("error_description");
                }
                String string3 = a2.getString("error_code");
                if (ab.a(string3)) {
                    i = -1;
                } else {
                    try {
                        i = Integer.parseInt(string3);
                    } catch (NumberFormatException e) {
                        i = -1;
                    }
                }
                if (ab.a(string) && ab.a(string2) && i == -1) {
                    ad.this.a(a2);
                } else if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                    ad.this.cancel();
                } else if (i == 4201) {
                    ad.this.cancel();
                } else {
                    ad.this.a(new FacebookServiceException(new FacebookRequestError(i, string, string2), string2));
                }
                return true;
            } else if (str.startsWith("fbconnect://cancel")) {
                ad.this.cancel();
                return true;
            } else if (str.contains("touch")) {
                return false;
            } else {
                try {
                    ad.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    return true;
                } catch (ActivityNotFoundException e2) {
                    return false;
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            ad.this.a(new FacebookDialogException(str, i, str2));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            ad.this.a(new FacebookDialogException(null, -11, null));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            ab.b("FacebookSDK.WebDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
            if (!ad.this.k) {
                ad.this.f.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (!ad.this.k) {
                ad.this.f.dismiss();
            }
            ad.this.h.setBackgroundColor(0);
            ad.this.e.setVisibility(0);
            ad.this.g.setVisibility(0);
            ad.this.l = true;
        }
    }

    /* compiled from: WebDialog.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private Context f167a;
        private String b;
        private String c;
        private int d;
        private c e;
        private Bundle f;
        private AccessToken g;

        public a(Context context, String str, Bundle bundle) {
            this.g = AccessToken.a();
            if (this.g == null) {
                String a2 = ab.a(context);
                if (a2 != null) {
                    this.b = a2;
                } else {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            a(context, str, bundle);
        }

        public a(Context context, String str, String str2, Bundle bundle) {
            str = str == null ? ab.a(context) : str;
            ac.a(str, "applicationId");
            this.b = str;
            a(context, str2, bundle);
        }

        public a a(c cVar) {
            this.e = cVar;
            return this;
        }

        public ad a() {
            if (this.g != null) {
                this.f.putString("app_id", this.g.h());
                this.f.putString("access_token", this.g.b());
            } else {
                this.f.putString("app_id", this.b);
            }
            return ad.a(this.f167a, this.c, this.f, this.d, this.e);
        }

        public String b() {
            return this.b;
        }

        public Context c() {
            return this.f167a;
        }

        public int d() {
            return this.d;
        }

        public Bundle e() {
            return this.f;
        }

        public c f() {
            return this.e;
        }

        private void a(Context context, String str, Bundle bundle) {
            this.f167a = context;
            this.c = str;
            if (bundle != null) {
                this.f = bundle;
            } else {
                this.f = new Bundle();
            }
        }
    }

    /* compiled from: WebDialog.java */
    /* loaded from: classes.dex */
    private class d extends AsyncTask<Void, Void, String[]> {
        private String b;
        private Bundle c;
        private Exception[] d;

        d(String str, Bundle bundle) {
            this.b = str;
            this.c = bundle;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public String[] doInBackground(Void... voidArr) {
            String[] stringArray = this.c.getStringArray("media");
            final String[] strArr = new String[stringArray.length];
            this.d = new Exception[stringArray.length];
            final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
            ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
            AccessToken a2 = AccessToken.a();
            for (final int i = 0; i < stringArray.length; i++) {
                try {
                    if (isCancelled()) {
                        Iterator it = concurrentLinkedQueue.iterator();
                        while (it.hasNext()) {
                            ((AsyncTask) it.next()).cancel(true);
                        }
                        return null;
                    }
                    Uri parse = Uri.parse(stringArray[i]);
                    if (ab.b(parse)) {
                        strArr[i] = parse.toString();
                        countDownLatch.countDown();
                    } else {
                        concurrentLinkedQueue.add(com.facebook.share.internal.k.a(a2, parse, new GraphRequest.b() { // from class: com.facebook.internal.ad.d.1
                            @Override // com.facebook.GraphRequest.b
                            public void a(com.facebook.g gVar) {
                                FacebookRequestError a3;
                                try {
                                    a3 = gVar.a();
                                } catch (Exception e) {
                                    d.this.d[i] = e;
                                }
                                if (a3 != null) {
                                    String e2 = a3.e();
                                    if (e2 == null) {
                                        e2 = "Error staging photo.";
                                    }
                                    throw new FacebookGraphResponseException(gVar, e2);
                                }
                                JSONObject b = gVar.b();
                                if (b == null) {
                                    throw new FacebookException("Error staging photo.");
                                }
                                String optString = b.optString("uri");
                                if (optString == null) {
                                    throw new FacebookException("Error staging photo.");
                                }
                                strArr[i] = optString;
                                countDownLatch.countDown();
                            }
                        }).j());
                    }
                } catch (Exception e) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((AsyncTask) it2.next()).cancel(true);
                    }
                    return null;
                }
            }
            countDownLatch.await();
            return strArr;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(String[] strArr) {
            Exception[] excArr;
            ad.this.f.dismiss();
            for (Exception exc : this.d) {
                if (exc != null) {
                    ad.this.a(exc);
                    return;
                }
            }
            if (strArr == null) {
                ad.this.a(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            List asList = Arrays.asList(strArr);
            if (asList.contains(null)) {
                ad.this.a(new FacebookException("Failed to stage photos for web dialog"));
                return;
            }
            ab.a(this.c, "media", new JSONArray((Collection) asList));
            ad.this.b = ab.a(z.a(), com.facebook.d.g() + "/dialog/" + this.b, this.c).toString();
            ad.this.b((ad.this.g.getDrawable().getIntrinsicWidth() / 2) + 1);
        }
    }
}