package com.mbv.a.sdklibrary.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mbv.a.sdklibrary.entity.HtmData;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class WvManager implements com.mbv.a.sdklibrary.c.a {
    private Map<String, HtmData> htmlMap;
    private Handler mainHandler;
    private com.mbv.a.sdklibrary.a.a presenter;
    private WebView webView;
    private e webFinishLoadingRunnable = new e();
    private boolean isWebViewLoading = false;

    public static WvManager getInstance() {
        return d.f697a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final WvManager f697a = new WvManager();
    }

    public com.mbv.a.sdklibrary.c.a init(Context context) {
        if (this.webView == null) {
            this.htmlMap = new HashMap();
            this.mainHandler = new Handler(Looper.getMainLooper());
            this.webView = new WebView(context);
            this.webView.addJavascriptInterface(new b(), "java_html");
            this.webView.getSettings().setJavaScriptEnabled(true);
            this.webView.setWebViewClient(new c());
            this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.mbv.a.sdklibrary.manager.WvManager.1
                @Override // android.webkit.WebChromeClient
                public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                    return super.onConsoleMessage(consoleMessage);
                }
            });
            this.webView.getSettings().setUserAgentString("Mozilla/5.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; th-th; " + Build.MODEL + " Build/JLS36C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 [FB_IAB/FB4A;FBAV/136.0.0.22.91;]");
        }
        return this;
    }

    @Override // com.mbv.a.sdklibrary.c.a
    public void loadUrl(final String str) {
        if (this.webView != null) {
            this.mainHandler.post(new Runnable() { // from class: com.mbv.a.sdklibrary.manager.WvManager.2
                @Override // java.lang.Runnable
                public void run() {
                    HashMap hashMap = new HashMap();
                    hashMap.put("X-Requested-With", "com.facebook.katana");
                    WvManager.this.webView.loadUrl(str, hashMap);
                }
            });
        }
    }

    @Override // com.mbv.a.sdklibrary.c.a
    public com.mbv.a.sdklibrary.a.a getPresenter() {
        if (this.presenter == null) {
            this.presenter = new com.mbv.a.sdklibrary.a.a.b(this);
        }
        return this.presenter;
    }

    @Override // com.mbv.a.sdklibrary.c.a
    public Handler getMainHandler() {
        return this.mainHandler;
    }

    public boolean isViewLoading() {
        return this.isWebViewLoading;
    }

    public Map<String, HtmData> getHtmlMap() {
        return this.htmlMap;
    }

    /* loaded from: classes.dex */
    private class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        String f698a;

        private e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WvManager.this.getPresenter().b(this.f698a);
            WvManager.this.isWebViewLoading = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends WebViewClient {
        private c() {
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return WvManager.this.getPresenter().a(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WvManager.this.mainHandler.removeCallbacks(WvManager.this.webFinishLoadingRunnable);
            WvManager.this.isWebViewLoading = true;
            WvManager.this.getPresenter().a(str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            webView.loadUrl("javascript:window.java_html.getSource(\"" + str + "\", '<html>'+document.getElementsByTagName('html')[0].innerHTML+'</html>');");
            WvManager.this.webFinishLoadingRunnable.f698a = str;
            WvManager.this.mainHandler.postDelayed(WvManager.this.webFinishLoadingRunnable, 500L);
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, final String str2) {
            super.onReceivedError(webView, i, str, str2);
            WvManager.this.mainHandler.postDelayed(new Runnable() { // from class: com.mbv.a.sdklibrary.manager.WvManager.c.1
                @Override // java.lang.Runnable
                public void run() {
                    HashMap hashMap = new HashMap();
                    hashMap.put("X-Requested-With", "com.facebook.katana");
                    WvManager.this.webView.loadUrl(str2, hashMap);
                }
            }, 500L);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        private b() {
        }

        @JavascriptInterface
        public void getSource(final String str, final String str2) {
            WvManager.this.mainHandler.post(new Runnable() { // from class: com.mbv.a.sdklibrary.manager.WvManager.b.1
                @Override // java.lang.Runnable
                public void run() {
                    HtmData htmData = new HtmData();
                    htmData.setUrl(str);
                    htmData.setHtml(str2);
                    WvManager.this.htmlMap.put(str, htmData);
                    WvManager.this.mainHandler.postDelayed(new a(str), 100L);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    private class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        String f692a;

        public a(String str) {
            this.f692a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!TextUtils.isEmpty(this.f692a)) {
                if (WvManager.this.checkHtml(this.f692a)) {
                    WvManager.this.getPresenter().a(this.f692a, (HtmData) WvManager.this.htmlMap.get(this.f692a));
                } else {
                    WvManager.this.mainHandler.postDelayed(this, 10L);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkHtml(String str) {
        HtmData htmData = this.htmlMap.get(str);
        return (htmData == null || TextUtils.isEmpty(htmData.getHtml())) ? false : true;
    }
}