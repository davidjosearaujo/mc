package com.mbv.a.sdklibrary.a.a;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.mbv.a.sdklibrary.b.c;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.b.k;
import com.mbv.a.sdklibrary.entity.HtmData;
import com.mbv.a.sdklibrary.entity.JsData;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Queue;

/* compiled from: OneClickPresenterImpl.java */
/* loaded from: classes.dex */
public class b implements com.mbv.a.sdklibrary.a.a {

    /* renamed from: a  reason: collision with root package name */
    private com.mbv.a.sdklibrary.c.a f674a;
    private JsData c;
    private String g;
    private String h;
    private String j;
    private HtmData k;
    private boolean e = false;
    private String f = null;
    private Runnable i = new Runnable() { // from class: com.mbv.a.sdklibrary.a.a.b.3
        @Override // java.lang.Runnable
        public void run() {
            b.this.e = false;
            b.this.c = null;
            b.this.f = null;
            b.this.a();
        }
    };
    private com.mbv.a.sdklibrary.service.a d = com.mbv.a.sdklibrary.manager.a.a();
    private Queue<JsData> b = new ArrayDeque();

    public b(com.mbv.a.sdklibrary.c.a aVar) {
        this.f674a = aVar;
    }

    @Override // com.mbv.a.sdklibrary.a.a
    public void a(ArrayList<JsData> arrayList) {
        this.b.addAll(arrayList);
        this.f674a.getMainHandler().post(new Runnable() { // from class: com.mbv.a.sdklibrary.a.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.c == null && this.b.size() > 0) {
            this.c = this.b.poll();
            if (b(this.c)) {
                if (this.c != null && this.c.getUrl_link() != null) {
                    c(this.c.getUrl_link());
                    return;
                }
                this.c = null;
                a();
                return;
            }
            this.c = null;
            a();
            return;
        }
        if (this.b.size() == 0) {
        }
    }

    private void c(String str) {
        String s;
        if (!str.contains("mb_subid")) {
            str = str + "&mb_subid=";
        }
        String str2 = str + f.c() + "&aff_sub=" + f.f();
        String str3 = "";
        String str4 = "";
        String str5 = "";
        if (!TextUtils.isEmpty(f.s())) {
            Uri parse = Uri.parse("http://www.baidu.com?" + k.b(s));
            str3 = parse.getQueryParameter("utm_source");
            str4 = parse.getQueryParameter("utm_campaign");
            str5 = parse.getQueryParameter("adpkey_subchannel");
        }
        String str6 = ((str2 + "&utm_source=" + str3) + "&utm_campaign=" + str4) + "&adpkey_subchannel=" + str5;
        this.g = str6;
        this.f674a.loadUrl(str6);
    }

    private void a(JsData jsData) {
        c.a().getSharedPreferences("offer_status", 0).edit().putBoolean(b() + "-" + jsData.getUrl_link(), false).commit();
    }

    private boolean b(JsData jsData) {
        return c.a().getSharedPreferences("offer_status", 0).getBoolean(b() + "-" + jsData.getUrl_link(), true);
    }

    private String b() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    @Override // com.mbv.a.sdklibrary.a.a
    public boolean a(WebView webView, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("Referer", this.f == null ? str : this.f);
        hashMap.put("X-Requested-With", "com.facebook.katana");
        webView.loadUrl(str, hashMap);
        this.f = str;
        return true;
    }

    @Override // com.mbv.a.sdklibrary.a.a
    public void a(String str) {
        if (this.d != null && this.c != null && !str.equals(this.h)) {
            this.h = str;
            this.d.a(this.g, str, this.e ? 3 : 2);
        }
        if (this.e && this.c != null) {
            a(this.c);
        }
        this.f674a.getMainHandler().removeCallbacks(this.i);
    }

    @Override // com.mbv.a.sdklibrary.a.a
    public void b(final String str) {
        this.f674a.getMainHandler().postDelayed(this.i, 15000L);
        if (!TextUtils.isEmpty(str)) {
            this.f674a.getMainHandler().postDelayed(new Runnable() { // from class: com.mbv.a.sdklibrary.a.a.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!str.equals(b.this.j) || b.this.d == null) {
                        b.this.f674a.getMainHandler().postDelayed(this, 100L);
                    } else if (b.this.c != null) {
                        b.this.d.a(b.this.c.getUrl_link() + f.c(), str, b.this.k.getHtml());
                        if (!TextUtils.isEmpty(b.this.c.getLink_js())) {
                            b.this.e = true;
                            b.this.f674a.loadUrl("javascript:" + b.this.c.getLink_js());
                        }
                    }
                }
            }, 500L);
        }
    }

    @Override // com.mbv.a.sdklibrary.a.a
    public void a(String str, HtmData htmData) {
        this.j = str;
        this.k = htmData;
    }
}