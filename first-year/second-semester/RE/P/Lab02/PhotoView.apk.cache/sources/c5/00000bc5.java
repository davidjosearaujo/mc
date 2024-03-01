package com.mbv.a.sdklibrary.b;

import android.text.TextUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: DateUtil.java */
/* loaded from: classes.dex */
public class d {
    public static long a(String str, String str2) {
        long time = new Date().getTime();
        if (!TextUtils.isEmpty(str)) {
            try {
                return new SimpleDateFormat(str2).parse(str).getTime();
            } catch (ParseException e) {
                e.printStackTrace();
                return time;
            }
        }
        return time;
    }
}