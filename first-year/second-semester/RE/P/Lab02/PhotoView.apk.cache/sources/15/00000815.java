package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.login.DefaultAudience;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: NativeProtocol.java */
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final String f218a = w.class.getName();
    private static final List<e> b = e();
    private static final List<e> c = f();
    private static final Map<String, List<e>> d = g();
    private static final AtomicBoolean e = new AtomicBoolean(false);
    private static final List<Integer> f = Arrays.asList(20170417, 20160327, 20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private TreeSet<Integer> f219a;

        protected abstract String a();

        protected abstract String b();

        private e() {
        }

        public TreeSet<Integer> c() {
            if (this.f219a == null) {
                a(false);
            }
            return this.f219a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0005, code lost:
            if (r1.f219a == null) goto L3;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public synchronized void a(boolean r2) {
            /*
                r1 = this;
                monitor-enter(r1)
                if (r2 != 0) goto L7
                java.util.TreeSet<java.lang.Integer> r0 = r1.f219a     // Catch: java.lang.Throwable -> Lf
                if (r0 != 0) goto Ld
            L7:
                java.util.TreeSet r0 = com.facebook.internal.w.a(r1)     // Catch: java.lang.Throwable -> Lf
                r1.f219a = r0     // Catch: java.lang.Throwable -> Lf
            Ld:
                monitor-exit(r1)
                return
            Lf:
                r0 = move-exception
                monitor-exit(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.w.e.a(boolean):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static class c extends e {
        private c() {
            super();
        }

        @Override // com.facebook.internal.w.e
        protected String a() {
            return "com.facebook.katana";
        }

        @Override // com.facebook.internal.w.e
        protected String b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static class d extends e {
        private d() {
            super();
        }

        @Override // com.facebook.internal.w.e
        protected String a() {
            return "com.facebook.orca";
        }

        @Override // com.facebook.internal.w.e
        protected String b() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static class g extends e {
        private g() {
            super();
        }

        @Override // com.facebook.internal.w.e
        protected String a() {
            return "com.facebook.wakizashi";
        }

        @Override // com.facebook.internal.w.e
        protected String b() {
            return "com.facebook.katana.ProxyAuth";
        }
    }

    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    private static class b extends e {
        private b() {
            super();
        }

        @Override // com.facebook.internal.w.e
        protected String a() {
            return "com.facebook.lite";
        }

        @Override // com.facebook.internal.w.e
        protected String b() {
            return "com.facebook.lite.platform.LoginGDPDialogActivity";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static class a extends e {
        private a() {
            super();
        }

        @Override // com.facebook.internal.w.e
        protected String a() {
            return "com.facebook.arstudio.player";
        }

        @Override // com.facebook.internal.w.e
        protected String b() {
            return null;
        }
    }

    private static List<e> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c());
        arrayList.add(new g());
        return arrayList;
    }

    private static List<e> f() {
        ArrayList arrayList = new ArrayList(e());
        arrayList.add(0, new a());
        return arrayList;
    }

    private static Map<String, List<e>> g() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new d());
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", b);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", b);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", b);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", b);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.CAMERA_EFFECT", c);
        return hashMap;
    }

    static Intent a(Context context, Intent intent, e eVar) {
        ResolveInfo resolveActivity;
        if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !i.a(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    static Intent b(Context context, Intent intent, e eVar) {
        ResolveInfo resolveService;
        if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null || !i.a(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    public static Intent a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        b bVar = new b();
        return a(context, a(bVar, str, collection, str2, z, z2, defaultAudience, str3), bVar);
    }

    private static Intent a(e eVar, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        String b2 = eVar.b();
        if (b2 == null) {
            return null;
        }
        Intent putExtra = new Intent().setClassName(eVar.a(), b2).putExtra("client_id", str);
        putExtra.putExtra("facebook_sdk_version", com.facebook.d.h());
        if (!ab.a(collection)) {
            putExtra.putExtra("scope", TextUtils.join(",", collection));
        }
        if (!ab.a(str2)) {
            putExtra.putExtra("e2e", str2);
        }
        putExtra.putExtra("state", str3);
        putExtra.putExtra("response_type", "token,signed_request");
        putExtra.putExtra("return_scopes", "true");
        if (z2) {
            putExtra.putExtra("default_audience", defaultAudience.getNativeProtocolAudience());
        }
        putExtra.putExtra("legacy_override", com.facebook.d.g());
        putExtra.putExtra("auth_type", "rerequest");
        return putExtra;
    }

    public static Intent b(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, DefaultAudience defaultAudience, String str3) {
        for (e eVar : b) {
            Intent a2 = a(context, a(eVar, str, collection, str2, z, z2, defaultAudience, str3), eVar);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    public static final int a() {
        return f.get(0).intValue();
    }

    public static boolean a(int i) {
        return f.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    public static Intent a(Context context, String str, String str2, f fVar, Bundle bundle) {
        e eVar;
        Intent a2;
        if (fVar == null || (eVar = fVar.f220a) == null || (a2 = a(context, new Intent().setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage(eVar.a()).addCategory("android.intent.category.DEFAULT"), eVar)) == null) {
            return null;
        }
        a(a2, str, str2, fVar.b, bundle);
        return a2;
    }

    public static void a(Intent intent, String str, String str2, int i, Bundle bundle) {
        String j = com.facebook.d.j();
        String k = com.facebook.d.k();
        intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", str2).putExtra("com.facebook.platform.extra.APPLICATION_ID", j);
        if (a(i)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", str);
            ab.a(bundle2, "app_name", k);
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle == null) {
                bundle = new Bundle();
            }
            intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", bundle);
            return;
        }
        intent.putExtra("com.facebook.platform.protocol.CALL_ID", str);
        if (!ab.a(k)) {
            intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", k);
        }
        intent.putExtras(bundle);
    }

    public static Intent a(Intent intent, Bundle bundle, FacebookException facebookException) {
        UUID b2 = b(intent);
        if (b2 == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", a(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", b2.toString());
        if (facebookException != null) {
            bundle2.putBundle("error", a(facebookException));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
        if (bundle != null) {
            intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            return intent2;
        }
        return intent2;
    }

    public static Intent a(Context context) {
        for (e eVar : b) {
            Intent b2 = b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(eVar.a()).addCategory("android.intent.category.DEFAULT"), eVar);
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    public static int a(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    public static UUID b(Intent intent) {
        String stringExtra;
        if (intent == null) {
            return null;
        }
        if (a(a(intent))) {
            Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        if (stringExtra != null) {
            try {
                return UUID.fromString(stringExtra);
            } catch (IllegalArgumentException e2) {
                return null;
            }
        }
        return null;
    }

    public static Bundle c(Intent intent) {
        if (a(a(intent))) {
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        }
        return null;
    }

    public static Bundle d(Intent intent) {
        return !a(a(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    public static boolean e(Intent intent) {
        Bundle c2 = c(intent);
        return c2 != null ? c2.containsKey("error") : intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }

    public static FacebookException a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        if (string == null) {
            string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        String string2 = bundle.getString("error_description");
        if (string2 == null) {
            string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        if (string != null && string.equalsIgnoreCase("UserCanceled")) {
            return new FacebookOperationCanceledException(string2);
        }
        return new FacebookException(string2);
    }

    public static Bundle a(FacebookException facebookException) {
        if (facebookException == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", facebookException.toString());
        if (facebookException instanceof FacebookOperationCanceledException) {
            bundle.putString("error_type", "UserCanceled");
            return bundle;
        }
        return bundle;
    }

    public static int b(int i) {
        return a(b, new int[]{i}).b();
    }

    public static f a(String str, int[] iArr) {
        return a(d.get(str), iArr);
    }

    private static f a(List<e> list, int[] iArr) {
        b();
        if (list == null) {
            return f.a();
        }
        for (e eVar : list) {
            int a2 = a(eVar.c(), a(), iArr);
            if (a2 != -1) {
                return f.a(eVar, a2);
            }
        }
        return f.a();
    }

    public static void b() {
        if (e.compareAndSet(false, true)) {
            com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.internal.w.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        for (e eVar : w.b) {
                            eVar.a(true);
                        }
                    } finally {
                        w.e.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.TreeSet<java.lang.Integer> b(com.facebook.internal.w.e r8) {
        /*
            r3 = 0
            r6 = 0
            java.util.TreeSet r7 = new java.util.TreeSet
            r7.<init>()
            android.content.Context r0 = com.facebook.d.f()
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = 1
            java.lang.String[] r2 = new java.lang.String[r1]
            java.lang.String r1 = "version"
            r2[r3] = r1
            android.net.Uri r1 = c(r8)
            android.content.Context r3 = com.facebook.d.f()     // Catch: java.lang.Throwable -> L85
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L85
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L85
            r4.<init>()     // Catch: java.lang.Throwable -> L85
            java.lang.String r5 = r8.a()     // Catch: java.lang.Throwable -> L85
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L85
            java.lang.String r5 = ".provider.PlatformProvider"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L85
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L85
            r5 = 0
            android.content.pm.ProviderInfo r3 = r3.resolveContentProvider(r4, r5)     // Catch: java.lang.RuntimeException -> L68 java.lang.Throwable -> L85
        L3e:
            if (r3 == 0) goto L7c
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.NullPointerException -> L72 java.lang.SecurityException -> L83 java.lang.Throwable -> L85
        L47:
            if (r1 == 0) goto L7d
        L49:
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L61
            if (r0 == 0) goto L7d
            java.lang.String r0 = "version"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L61
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L61
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L61
            r7.add(r0)     // Catch: java.lang.Throwable -> L61
            goto L49
        L61:
            r0 = move-exception
        L62:
            if (r1 == 0) goto L67
            r1.close()
        L67:
            throw r0
        L68:
            r3 = move-exception
            java.lang.String r4 = com.facebook.internal.w.f218a     // Catch: java.lang.Throwable -> L85
            java.lang.String r5 = "Failed to query content resolver."
            android.util.Log.e(r4, r5, r3)     // Catch: java.lang.Throwable -> L85
            r3 = r6
            goto L3e
        L72:
            r0 = move-exception
        L73:
            java.lang.String r0 = com.facebook.internal.w.f218a     // Catch: java.lang.Throwable -> L85
            java.lang.String r1 = "Failed to query content resolver."
            android.util.Log.e(r0, r1)     // Catch: java.lang.Throwable -> L85
            r1 = r6
            goto L47
        L7c:
            r1 = r6
        L7d:
            if (r1 == 0) goto L82
            r1.close()
        L82:
            return r7
        L83:
            r0 = move-exception
            goto L73
        L85:
            r0 = move-exception
            r1 = r6
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.w.b(com.facebook.internal.w$e):java.util.TreeSet");
    }

    public static int a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i2 = -1;
        int length = iArr.length - 1;
        while (descendingIterator.hasNext()) {
            int intValue = descendingIterator.next().intValue();
            int max = Math.max(i2, intValue);
            int i3 = length;
            while (i3 >= 0 && iArr[i3] > intValue) {
                i3--;
            }
            if (i3 < 0) {
                return -1;
            }
            if (iArr[i3] == intValue) {
                if (i3 % 2 == 0) {
                    return Math.min(max, i);
                }
                return -1;
            }
            length = i3;
            i2 = max;
        }
        return -1;
    }

    private static Uri c(e eVar) {
        return Uri.parse("content://" + eVar.a() + ".provider.PlatformProvider/versions");
    }

    /* compiled from: NativeProtocol.java */
    /* loaded from: classes.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private e f220a;
        private int b;

        public static f a(e eVar, int i) {
            f fVar = new f();
            fVar.f220a = eVar;
            fVar.b = i;
            return fVar;
        }

        public static f a() {
            f fVar = new f();
            fVar.b = -1;
            return fVar;
        }

        private f() {
        }

        public int b() {
            return this.b;
        }
    }
}