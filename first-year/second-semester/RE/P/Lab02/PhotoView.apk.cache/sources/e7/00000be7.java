package com.mbv.a.sdklibrary.net;

import android.text.TextUtils;
import com.mbv.a.sdklibrary.b.k;
import java.util.Map;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes.dex */
public class AsyncHttpGet extends BaseRequest {
    private static final long serialVersionUID = 2;
    private String extraString;
    private HttpUriRequest request;

    public static void get(String str, Map<String, String> map, b bVar) {
        a.a().a(new AsyncHttpGet(str, map, null, bVar));
    }

    public static AsyncHttpGet get(String str, Map<String, String> map, String str2, b bVar) {
        AsyncHttpGet asyncHttpGet = new AsyncHttpGet(str, map, str2, bVar);
        a.a().a(asyncHttpGet);
        return asyncHttpGet;
    }

    public AsyncHttpGet(String str, Map<String, String> map, String str2, b bVar) {
        this.url = str;
        this.httpCallback = bVar;
        this.extraString = str2;
        setRetryCount(-1);
        if (map != null) {
            for (String str3 : map.keySet()) {
                addValue(str3, map.get(str3));
            }
        }
    }

    @Override // com.mbv.a.sdklibrary.net.BaseRequest
    public HttpUriRequest makeHttpRequest() {
        if (this.request == null) {
            if (this.parameter != null && this.parameter.size() > 0) {
                StringBuilder sb = new StringBuilder();
                for (String str : this.parameter.keySet()) {
                    if (sb.length() != 0) {
                        sb.append("&");
                    }
                    sb.append(k.a(str));
                    sb.append("=");
                    sb.append(k.a(this.parameter.get(str)));
                }
                this.url += "?" + sb.toString();
                if (!TextUtils.isEmpty(this.extraString)) {
                    this.url += "&" + this.extraString;
                }
            } else if (!TextUtils.isEmpty(this.extraString)) {
                this.url += "?" + this.extraString;
            }
            this.request = new HttpGet(this.url);
        }
        return this.request;
    }
}