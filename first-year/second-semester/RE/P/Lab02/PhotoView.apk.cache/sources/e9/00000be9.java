package com.mbv.a.sdklibrary.net;

import android.os.Build;
import android.text.TextUtils;
import com.mbv.a.sdklibrary.b.f;
import com.mbv.a.sdklibrary.b.h;
import com.mbv.a.sdklibrary.manager.JniManager;
import java.io.ByteArrayOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.TreeMap;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class BaseRequest implements Serializable, Runnable {
    private static final long serialVersionUID = 1;
    protected b httpCallback;
    private DefaultHttpClient httpClient;
    private Object tag;
    HttpUriRequest request = null;
    protected String url = null;
    protected int connectTimeout = 60000;
    protected int readTimeout = 60000;
    public TreeMap<String, String> parameter = new TreeMap<>(new Comparator<String>() { // from class: com.mbv.a.sdklibrary.net.BaseRequest.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    });
    private int retryCount = 0;

    public abstract HttpUriRequest makeHttpRequest();

    public Object getTag() {
        return this.tag;
    }

    public void setTag(Object obj) {
        this.tag = obj;
    }

    public void addValue(String str, String str2) {
        if (str != null && str.length() > 0) {
            this.parameter.put(str, "" + str2);
        }
    }

    private DefaultHttpClient a() {
        if (this.httpClient == null) {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 5000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 15000);
            this.httpClient = new DefaultHttpClient(basicHttpParams);
        }
        return this.httpClient;
    }

    public void setRetryCount(int i) {
        this.retryCount = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            HttpUriRequest makeHttpRequest = makeHttpRequest();
            initHeaders(makeHttpRequest);
            makeHttpRequest.getParams().setParameter("http.connection.timeout", Integer.valueOf(this.connectTimeout));
            makeHttpRequest.getParams().setParameter("http.socket.timeout", Integer.valueOf(this.readTimeout));
            HttpResponse execute = a().execute(makeHttpRequest);
            int statusCode = execute.getStatusLine().getStatusCode();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            execute.getEntity().writeTo(byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            if (statusCode == 200) {
                this.httpCallback.a(this, null, byteArray);
            } else if (this.retryCount == 0) {
                this.httpCallback.a(this, new RuntimeException("statusCode == " + statusCode + ", " + new String(byteArray).substring(byteArray.length <= 1000 ? byteArray.length : 1000)), null);
            } else {
                if (this.retryCount > 0) {
                    this.retryCount--;
                }
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                a.a().a(this);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            if (this.retryCount == 0) {
                this.httpCallback.a(this, e2, null);
                return;
            }
            if (this.retryCount > 0) {
                this.retryCount--;
            }
            try {
                Thread.sleep(3000L);
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            }
            a.a().a(this);
        }
    }

    protected void setConnectTimeout(int i) {
        this.connectTimeout = i;
    }

    protected void setReadTimeout(int i) {
        this.readTimeout = i;
    }

    public HttpUriRequest getRequest() {
        return this.request;
    }

    public void initHeaders(HttpUriRequest httpUriRequest) {
        if (httpUriRequest != null) {
            httpUriRequest.addHeader("games-model", Build.MODEL);
            httpUriRequest.addHeader("games-imei", f.c());
            httpUriRequest.addHeader("games-mac", f.d());
            httpUriRequest.addHeader("games-androidId", f.e());
            httpUriRequest.addHeader("games-appVersionCode", f.h() + "");
            httpUriRequest.addHeader("games-appVersionName", f.i());
            httpUriRequest.addHeader("games-sysVersionCode", Build.VERSION.SDK_INT + "");
            httpUriRequest.addHeader("games-sysVersionName", Build.VERSION.RELEASE);
            httpUriRequest.addHeader("games-language", f.j());
            httpUriRequest.addHeader("games-netType", f.k());
            httpUriRequest.addHeader("games-packageName", f.f());
            httpUriRequest.addHeader("games-phoneNumber", f.o());
            httpUriRequest.addHeader("games-countryCode", f.p());
            httpUriRequest.addHeader("games-customerId", f.q());
            httpUriRequest.addHeader("games-phoneMNC", f.r());
            httpUriRequest.addHeader("games-platform", "android");
            httpUriRequest.addHeader("games-api_version", "2");
            String b = com.mbv.a.sdklibrary.b.a.b();
            if (TextUtils.isEmpty(b)) {
                b = f.s();
            }
            httpUriRequest.addHeader("referrer", b);
        }
    }

    public JSONObject makeSignature(String str) {
        String str2;
        try {
            int size = this.parameter.containsKey(str) ? this.parameter.size() - 1 : this.parameter.size();
            JSONObject jSONObject = new JSONObject();
            String str3 = "";
            if (size > 0) {
                for (String str4 : this.parameter.keySet()) {
                    if (str4.equals(str)) {
                        str2 = str3;
                    } else {
                        String trim = this.parameter.get(str4).trim();
                        jSONObject.put(str4, "" + trim);
                        str2 = str3 + trim;
                    }
                    str3 = str2;
                }
                jSONObject.put(str, h.a(str3 + JniManager.nativeEncrytionkeyhash()));
                return jSONObject;
            }
        } catch (Exception e) {
        }
        return null;
    }
}