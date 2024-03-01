package com.mbv.a.sdklibrary.b;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: MD5.java */
/* loaded from: classes.dex */
public class h {
    public static String a(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String to encript cannot be null or zero length");
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            for (int i = 0; i < digest.length; i++) {
                if ((digest[i] & 255) < 16) {
                    stringBuffer.append("0" + Integer.toHexString(digest[i] & 255));
                } else {
                    stringBuffer.append(Integer.toHexString(digest[i] & 255));
                }
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("" + e);
        }
    }
}