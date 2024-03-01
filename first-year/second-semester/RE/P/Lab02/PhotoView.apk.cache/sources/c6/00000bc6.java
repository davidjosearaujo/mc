package com.mbv.a.sdklibrary.b;

import android.util.Base64;
import com.mbv.a.sdklibrary.manager.JniManager;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Encryption.java */
/* loaded from: classes.dex */
public class e {
    public static String a(String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(JniManager.nativeEncrytionkey().getBytes(), "DESede");
        Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        cipher.init(1, secretKeySpec);
        return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 0);
    }

    public static String b(String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(JniManager.nativeEncrytionkey().getBytes(), "DESede");
        Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        cipher.init(2, secretKeySpec);
        return new String(cipher.doFinal(Base64.decode(str, 0)), "UTF-8");
    }
}