package com.mbv.a.sdklibrary.b;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: ClickIdUtil.java */
/* loaded from: classes.dex */
public class a {
    public static void a(String str) {
        SharedPreferences sharedPreferences = c.a().getSharedPreferences("click_id", 0);
        if (TextUtils.isEmpty(sharedPreferences.getString("click_id", ""))) {
            sharedPreferences.edit().putString("click_id", str).commit();
        }
    }

    public static String a() {
        String b = b();
        return !TextUtils.isEmpty(b) ? b : c.a().getSharedPreferences("click_id", 0).getString("click_id", "");
    }

    public static String b() {
        try {
            Enumeration<? extends ZipEntry> entries = new ZipFile(c.a().getApplicationInfo().sourceDir).entries();
            while (entries.hasMoreElements()) {
                String name = entries.nextElement().getName();
                if (name.startsWith("META-INF/r_")) {
                    return name.substring(11, name.length());
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }
}