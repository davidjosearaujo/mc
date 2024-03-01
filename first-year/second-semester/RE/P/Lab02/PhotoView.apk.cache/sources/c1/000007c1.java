package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.support.v4.app.NotificationCompat;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: Utility.java */
/* loaded from: classes.dex */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private static int f158a = 0;
    private static long b = -1;
    private static long c = -1;
    private static long d = -1;
    private static String e = "";
    private static String f = "";
    private static String g = "NoCarrier";

    /* compiled from: Utility.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(FacebookException facebookException);

        void a(JSONObject jSONObject);
    }

    /* compiled from: Utility.java */
    /* loaded from: classes.dex */
    public interface b<T, K> {
        K a(T t);
    }

    public static <T> boolean a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    public static String a(String str, String str2) {
        return a(str) ? str2 : str;
    }

    public static <T> Collection<T> a(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    public static String b(String str) {
        return c("MD5", str);
    }

    public static String a(byte[] bArr) {
        return a("SHA-1", bArr);
    }

    private static String c(String str, String str2) {
        return a(str, str2.getBytes());
    }

    private static String a(String str, byte[] bArr) {
        try {
            return a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e2) {
            return null;
        }
    }

    private static String a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : digest) {
            sb.append(Integer.toHexString((b2 >> 4) & 15));
            sb.append(Integer.toHexString((b2 >> 0) & 15));
        }
        return sb.toString();
    }

    public static Uri a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    public static Bundle c(String str) {
        Bundle bundle = new Bundle();
        if (!a(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e2) {
                    a("FacebookSDK", (Exception) e2);
                }
            }
        }
        return bundle;
    }

    public static void a(Bundle bundle, String str, String str2) {
        if (!a(str2)) {
            bundle.putString(str, str2);
        }
    }

    public static void a(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            a(bundle, str, uri.toString());
        }
    }

    public static boolean a(Bundle bundle, String str, Object obj) {
        if (obj == null) {
            bundle.remove(str);
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, obj.toString());
        } else if (obj instanceof JSONObject) {
            bundle.putString(str, obj.toString());
        } else {
            return false;
        }
        return true;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static String a(Context context) {
        ac.a(context, "context");
        com.facebook.d.a(context);
        return com.facebook.d.j();
    }

    public static Object a(JSONObject jSONObject, String str, String str2) {
        Object opt = jSONObject.opt(str);
        Object nextValue = (opt == null || !(opt instanceof String)) ? opt : new JSONTokener((String) opt).nextValue();
        if (nextValue == null || (nextValue instanceof JSONObject) || (nextValue instanceof JSONArray)) {
            return nextValue;
        }
        if (str2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, nextValue);
            return jSONObject2;
        }
        throw new FacebookException("Got an unexpected non-JSON object.");
    }

    public static String a(InputStream inputStream) {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
            } catch (Throwable th) {
                th = th;
                inputStreamReader = null;
                bufferedInputStream2 = bufferedInputStream;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[2048];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read != -1) {
                    sb.append(cArr, 0, read);
                } else {
                    String sb2 = sb.toString();
                    a((Closeable) bufferedInputStream);
                    a(inputStreamReader);
                    return sb2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream;
            a((Closeable) bufferedInputStream2);
            a(inputStreamReader);
            throw th;
        }
    }

    public static int a(InputStream inputStream, OutputStream outputStream) {
        BufferedInputStream bufferedInputStream;
        int i = 0;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th) {
            th = th;
            bufferedInputStream = null;
        }
        try {
            byte[] bArr = new byte[8192];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i += read;
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return i;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    private static void a(Context context, String str) {
        String[] split;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            String[] split2 = cookie.split(";");
            for (String str2 : split2) {
                if (str2.split("=").length > 0) {
                    cookieManager.setCookie(str, split[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                }
            }
            cookieManager.removeExpiredCookie();
        }
    }

    public static void b(Context context) {
        a(context, "facebook.com");
        a(context, ".facebook.com");
        a(context, "https://facebook.com");
        a(context, "https://.facebook.com");
    }

    public static void a(String str, Exception exc) {
        if (com.facebook.d.b() && str != null && exc != null) {
            Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
        }
    }

    public static void b(String str, String str2) {
        if (com.facebook.d.b() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (com.facebook.d.b() && !a(str)) {
            Log.d(str, str2, th);
        }
    }

    public static <T> boolean a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        }
        return t.equals(t2);
    }

    public static String a(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optString(str, "") : "";
    }

    public static JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    public static JSONArray c(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    public static void a(File file) {
        File[] listFiles;
        if (file.exists()) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    a(file2);
                }
            }
            file.delete();
        }
    }

    public static <T> List<T> b(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static List<String> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static Set<String> b(JSONArray jSONArray) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.getString(i));
        }
        return hashSet;
    }

    public static void a(JSONObject jSONObject, com.facebook.internal.b bVar, String str, boolean z) {
        if (bVar != null && bVar.a() != null) {
            jSONObject.put("attribution", bVar.a());
        }
        if (bVar != null && bVar.b() != null) {
            jSONObject.put("advertiser_id", bVar.b());
            jSONObject.put("advertiser_tracking_enabled", !bVar.d());
        }
        if (bVar != null && bVar.c() != null) {
            jSONObject.put("installer_package", bVar.c());
        }
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", z ? false : true);
    }

    public static void a(JSONObject jSONObject, Context context) {
        Locale locale;
        int i;
        int i2;
        int i3;
        int i4;
        double d2;
        int i5;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        f(context);
        String packageName = context.getPackageName();
        int i6 = -1;
        String str = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            i6 = packageInfo.versionCode;
            str = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e2) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i6);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e3) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
        jSONArray.put(e);
        jSONArray.put(g);
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                d2 = 0.0d;
                i3 = 0;
                i4 = 0;
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                int i7 = displayMetrics.widthPixels;
                try {
                    i5 = displayMetrics.heightPixels;
                } catch (Exception e4) {
                    i = 0;
                    i2 = i7;
                }
                try {
                    d2 = displayMetrics.density;
                    i3 = i5;
                    i4 = i7;
                } catch (Exception e5) {
                    i = i5;
                    i2 = i7;
                    i3 = i;
                    i4 = i2;
                    d2 = 0.0d;
                    jSONArray.put(i4);
                    jSONArray.put(i3);
                    jSONArray.put(String.format("%.2f", Double.valueOf(d2)));
                    jSONArray.put(a());
                    jSONArray.put(c);
                    jSONArray.put(d);
                    jSONArray.put(f);
                    jSONObject.put("extinfo", jSONArray.toString());
                }
            }
        } catch (Exception e6) {
            i = 0;
            i2 = 0;
        }
        jSONArray.put(i4);
        jSONArray.put(i3);
        jSONArray.put(String.format("%.2f", Double.valueOf(d2)));
        jSONArray.put(a());
        jSONArray.put(c);
        jSONArray.put(d);
        jSONArray.put(f);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            return null;
        }
    }

    public static String c(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return context.getClass().getSimpleName();
    }

    public static <T, K> List<K> a(List<T> list, b<T, K> bVar) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            K a2 = bVar.a(t);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.size() != 0) {
            return arrayList;
        }
        return null;
    }

    public static String a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    public static boolean b(Uri uri) {
        return uri != null && ("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme()));
    }

    public static boolean c(Uri uri) {
        return uri != null && "content".equalsIgnoreCase(uri.getScheme());
    }

    public static boolean d(Uri uri) {
        return uri != null && "file".equalsIgnoreCase(uri.getScheme());
    }

    public static long e(Uri uri) {
        Cursor cursor;
        try {
            cursor = com.facebook.d.f().getContentResolver().query(uri, null, null, null, null);
            try {
                int columnIndex = cursor.getColumnIndex("_size");
                cursor.moveToFirst();
                long j = cursor.getLong(columnIndex);
                if (cursor != null) {
                    cursor.close();
                }
                return j;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static Date a(Bundle bundle, String str, Date date) {
        long parseLong;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Long) obj).longValue();
        } else if (!(obj instanceof String)) {
            return null;
        } else {
            try {
                parseLong = Long.parseLong((String) obj);
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((parseLong * 1000) + date.getTime());
    }

    public static void a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public static Map<String, String> a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    public static boolean a(AccessToken accessToken) {
        if (accessToken != null) {
            return accessToken.equals(AccessToken.a());
        }
        return false;
    }

    public static void a(final String str, final a aVar) {
        JSONObject a2 = y.a(str);
        if (a2 != null) {
            aVar.a(a2);
            return;
        }
        GraphRequest.b bVar = new GraphRequest.b() { // from class: com.facebook.internal.ab.1
            @Override // com.facebook.GraphRequest.b
            public void a(com.facebook.g gVar) {
                if (gVar.a() != null) {
                    a.this.a(gVar.a().g());
                    return;
                }
                y.a(str, gVar.b());
                a.this.a(gVar.b());
            }
        };
        GraphRequest e2 = e(str);
        e2.a(bVar);
        e2.j();
    }

    public static JSONObject d(String str) {
        JSONObject a2 = y.a(str);
        if (a2 == null) {
            com.facebook.g i = e(str).i();
            if (i.a() != null) {
                return null;
            }
            return i.b();
        }
        return a2;
    }

    private static GraphRequest e(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, HttpMethod.GET, null);
    }

    private static int a() {
        if (f158a > 0) {
            return f158a;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.ab.2
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return Pattern.matches("cpu[0-9]+", str);
                }
            });
            if (listFiles != null) {
                f158a = listFiles.length;
            }
        } catch (Exception e2) {
        }
        if (f158a <= 0) {
            f158a = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f158a;
    }

    private static void f(Context context) {
        if (b == -1 || System.currentTimeMillis() - b >= 1800000) {
            b = System.currentTimeMillis();
            b();
            g(context);
            e();
            d();
        }
    }

    private static void b() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            e = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            f = timeZone.getID();
        } catch (Exception e2) {
        }
    }

    private static void g(Context context) {
        if (g.equals("NoCarrier")) {
            try {
                g = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e2) {
            }
        }
    }

    private static boolean c() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static void d() {
        try {
            if (c()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                d = statFs.getBlockSize() * statFs.getAvailableBlocks();
            }
            d = a(d);
        } catch (Exception e2) {
        }
    }

    private static void e() {
        try {
            if (c()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                c = statFs.getBlockSize() * statFs.getBlockCount();
            }
            c = a(c);
        } catch (Exception e2) {
        }
    }

    private static long a(double d2) {
        return Math.round(d2 / 1.073741824E9d);
    }

    /* compiled from: Utility.java */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        List<String> f160a;
        List<String> b;

        public c(List<String> list, List<String> list2) {
            this.f160a = list;
            this.b = list2;
        }

        public List<String> a() {
            return this.f160a;
        }

        public List<String> b() {
            return this.b;
        }
    }

    public static c a(JSONObject jSONObject) {
        String optString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (optString2 != null && !optString2.equals("installed") && (optString = optJSONObject.optString(NotificationCompat.CATEGORY_STATUS)) != null) {
                if (optString.equals("granted")) {
                    arrayList.add(optString2);
                } else if (optString.equals("declined")) {
                    arrayList2.add(optString2);
                }
            }
        }
        return new c(arrayList, arrayList2);
    }

    public static String a(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }

    public static boolean d(Context context) {
        return e(context);
    }

    public static boolean e(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
        return autofillManager != null && autofillManager.isAutofillSupported() && autofillManager.isEnabled();
    }
}