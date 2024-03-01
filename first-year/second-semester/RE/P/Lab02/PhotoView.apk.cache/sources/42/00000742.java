package com.facebook.appevents;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.ab;
import com.facebook.internal.u;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppEvent implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f100a = new HashSet<>();
    private static final long serialVersionUID = 1;
    private final String checksum;
    private final boolean isImplicit;
    private final JSONObject jsonObject;
    private final String name;

    public AppEvent(String str, String str2, Double d, Bundle bundle, boolean z, @Nullable UUID uuid) {
        this.jsonObject = a(str, str2, d, bundle, z, uuid);
        this.isImplicit = z;
        this.name = str2;
        this.checksum = a();
    }

    public String getName() {
        return this.name;
    }

    private AppEvent(String str, boolean z, String str2) {
        this.jsonObject = new JSONObject(str);
        this.isImplicit = z;
        this.name = this.jsonObject.optString("_eventName");
        this.checksum = str2;
    }

    public boolean getIsImplicit() {
        return this.isImplicit;
    }

    public JSONObject getJSONObject() {
        return this.jsonObject;
    }

    public boolean isChecksumValid() {
        if (this.checksum == null) {
            return true;
        }
        return a().equals(this.checksum);
    }

    private static void a(String str) {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            if (str == null) {
                str = "<None Provided>";
            }
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str, 40));
        }
        synchronized (f100a) {
            contains = f100a.contains(str);
        }
        if (!contains) {
            if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                synchronized (f100a) {
                    f100a.add(str);
                }
                return;
            }
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
    }

    private static JSONObject a(String str, String str2, Double d, Bundle bundle, boolean z, @Nullable UUID uuid) {
        a(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_eventName", str2);
        jSONObject.put("_eventName_md5", b(str2));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (z) {
            jSONObject.put("_implicitlyLogged", "1");
        }
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                a(str3);
                Object obj = bundle.get(str3);
                if (!(obj instanceof String) && !(obj instanceof Number)) {
                    throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str3));
                }
                jSONObject.put(str3, obj.toString());
            }
        }
        if (!z) {
            u.a(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* loaded from: classes.dex */
    static class SerializationProxyV1 implements Serializable {
        private static final long serialVersionUID = -2488473066578201069L;
        private final boolean isImplicit;
        private final String jsonString;

        private Object readResolve() {
            return new AppEvent(this.jsonString, this.isImplicit, null);
        }
    }

    /* loaded from: classes.dex */
    static class SerializationProxyV2 implements Serializable {
        private static final long serialVersionUID = 20160803001L;
        private final String checksum;
        private final boolean isImplicit;
        private final String jsonString;

        private SerializationProxyV2(String str, boolean z, String str2) {
            this.jsonString = str;
            this.isImplicit = z;
            this.checksum = str2;
        }

        private Object readResolve() {
            return new AppEvent(this.jsonString, this.isImplicit, this.checksum);
        }
    }

    private Object writeReplace() {
        return new SerializationProxyV2(this.jsonObject.toString(), this.isImplicit, this.checksum);
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.jsonObject.optString("_eventName"), Boolean.valueOf(this.isImplicit), this.jsonObject.toString());
    }

    private String a() {
        if (Build.VERSION.SDK_INT > 19) {
            return b(this.jsonObject.toString());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.jsonObject.keys();
        while (keys.hasNext()) {
            arrayList.add(keys.next());
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            sb.append(str).append(" = ").append(this.jsonObject.optString(str)).append('\n');
        }
        return b(sb.toString());
    }

    private static String b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            return a(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            ab.a("Failed to generate checksum: ", (Exception) e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            ab.a("Failed to generate checksum: ", (Exception) e2);
            return "0";
        }
    }

    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i])));
        }
        return stringBuffer.toString();
    }
}