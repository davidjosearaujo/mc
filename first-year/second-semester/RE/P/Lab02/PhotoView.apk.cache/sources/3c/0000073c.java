package com.facebook.a.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import com.facebook.d;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.l;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.b;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: DeviceRequestsHelper.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static HashMap<String, NsdManager.RegistrationListener> f98a = new HashMap<>();

    public static String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", Build.DEVICE);
            jSONObject.put("model", Build.MODEL);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    public static boolean a(String str) {
        if (b()) {
            return d(str);
        }
        return false;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 16 && l.a(d.j()).g().contains(SmartLoginOption.Enabled);
    }

    public static Bitmap b(String str) {
        EnumMap enumMap = new EnumMap(EncodeHintType.class);
        enumMap.put((EnumMap) EncodeHintType.MARGIN, (EncodeHintType) 2);
        try {
            b a2 = new com.google.zxing.b().a(str, BarcodeFormat.QR_CODE, 200, 200, enumMap);
            int c = a2.c();
            int b = a2.b();
            int[] iArr = new int[c * b];
            for (int i = 0; i < c; i++) {
                int i2 = i * b;
                for (int i3 = 0; i3 < b; i3++) {
                    iArr[i2 + i3] = a2.a(i3, i) ? ViewCompat.MEASURED_STATE_MASK : -1;
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(b, c, Bitmap.Config.ARGB_8888);
            try {
                createBitmap.setPixels(iArr, 0, b, 0, 0, b, c);
                return createBitmap;
            } catch (WriterException e) {
                return createBitmap;
            }
        } catch (WriterException e2) {
            return null;
        }
    }

    public static void c(String str) {
        e(str);
    }

    @TargetApi(16)
    private static boolean d(final String str) {
        if (!f98a.containsKey(str)) {
            final String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", "android", d.h().replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.a.a.a.1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    if (!format.equals(nsdServiceInfo2.getServiceName())) {
                        a.c(str);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                    a.c(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                }
            };
            f98a.put(str, registrationListener);
            ((NsdManager) d.f().getSystemService("servicediscovery")).registerService(nsdServiceInfo, 1, registrationListener);
        }
        return true;
    }

    @TargetApi(16)
    private static void e(String str) {
        NsdManager.RegistrationListener registrationListener = f98a.get(str);
        if (registrationListener != null) {
            ((NsdManager) d.f().getSystemService("servicediscovery")).unregisterService(registrationListener);
            f98a.remove(str);
        }
    }
}