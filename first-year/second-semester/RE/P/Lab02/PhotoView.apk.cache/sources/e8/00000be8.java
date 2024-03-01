package com.mbv.a.sdklibrary.net;

import com.mbv.a.sdklibrary.b.e;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Map;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;

/* loaded from: classes.dex */
public class AsyncHttpPost extends BaseRequest {
    private static final long serialVersionUID = 2;

    public static void post(String str, Map<String, String> map, b bVar) {
        a.a().a(new AsyncHttpPost(str, map, bVar));
    }

    public AsyncHttpPost(String str, Map<String, String> map, b bVar) {
        this.url = str;
        setRetryCount(-1);
        this.httpCallback = bVar;
        if (map != null) {
            for (String str2 : map.keySet()) {
                addValue(str2, map.get(str2));
            }
        }
    }

    @Override // com.mbv.a.sdklibrary.net.BaseRequest
    public HttpUriRequest makeHttpRequest() {
        HttpPost httpPost = new HttpPost(this.url);
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(new BasicNameValuePair("sign", e.a(makeSignature("sign").toString())));
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return httpPost;
    }
}