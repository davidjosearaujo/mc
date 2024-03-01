package com.mbv.a.sdklibrary.b;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/* compiled from: UrlUtil.java */
/* loaded from: classes.dex */
public class k {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~").replace("#", "%23");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public static String b(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }
}