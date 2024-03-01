package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.f;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.internal.s;
import com.facebook.internal.u;
import com.facebook.internal.z;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GraphRequest {
    private static String b;
    private static volatile String q;
    private AccessToken d;
    private HttpMethod e;
    private String f;
    private JSONObject g;
    private String h;
    private String i;
    private boolean j;
    private Bundle k;
    private b l;
    private String m;
    private Object n;
    private String o;
    private boolean p;

    /* renamed from: a  reason: collision with root package name */
    public static final String f86a = GraphRequest.class.getSimpleName();
    private static Pattern c = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* loaded from: classes.dex */
    public interface b {
        void a(g gVar);
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(JSONObject jSONObject, g gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface d {
        void a(String str, String str2);
    }

    /* loaded from: classes.dex */
    public interface e extends b {
        void a(long j, long j2);
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod) {
        this(accessToken, str, bundle, httpMethod, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, b bVar) {
        this(accessToken, str, bundle, httpMethod, bVar, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, b bVar, String str2) {
        this.j = true;
        this.p = false;
        this.d = accessToken;
        this.f = str;
        this.o = str2;
        a(bVar);
        a(httpMethod);
        if (bundle != null) {
            this.k = new Bundle(bundle);
        } else {
            this.k = new Bundle();
        }
        if (this.o == null) {
            this.o = com.facebook.d.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.GraphRequest$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f87a;

        @Override // com.facebook.GraphRequest.b
        public void a(g gVar) {
            if (this.f87a != null) {
                this.f87a.a(gVar.b(), gVar);
            }
        }
    }

    public static GraphRequest a(AccessToken accessToken, String str, JSONObject jSONObject, b bVar) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, HttpMethod.POST, bVar);
        graphRequest.a(jSONObject);
        return graphRequest;
    }

    public static GraphRequest a(AccessToken accessToken, String str, b bVar) {
        return new GraphRequest(accessToken, str, null, null, bVar);
    }

    public final JSONObject a() {
        return this.g;
    }

    public final void a(JSONObject jSONObject) {
        this.g = jSONObject;
    }

    public final String b() {
        return this.f;
    }

    public final HttpMethod c() {
        return this.e;
    }

    public final void a(HttpMethod httpMethod) {
        if (this.m != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        this.e = httpMethod;
    }

    public final String d() {
        return this.o;
    }

    public final void a(String str) {
        this.o = str;
    }

    public final void a(boolean z) {
        this.p = z;
    }

    public final Bundle e() {
        return this.k;
    }

    public final void a(Bundle bundle) {
        this.k = bundle;
    }

    public final AccessToken f() {
        return this.d;
    }

    public final b g() {
        return this.l;
    }

    public final void a(final b bVar) {
        if (com.facebook.d.a(LoggingBehavior.GRAPH_API_DEBUG_INFO) || com.facebook.d.a(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.l = new b() { // from class: com.facebook.GraphRequest.2
                @Override // com.facebook.GraphRequest.b
                public void a(g gVar) {
                    JSONObject b2 = gVar.b();
                    JSONObject optJSONObject = b2 != null ? b2.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                                }
                                if (!ab.a(optString3)) {
                                    optString = optString + " Link: " + optString3;
                                }
                                u.a(loggingBehavior, GraphRequest.f86a, optString);
                            }
                        }
                    }
                    if (bVar != null) {
                        bVar.a(gVar);
                    }
                }
            };
        } else {
            this.l = bVar;
        }
    }

    public final void a(Object obj) {
        this.n = obj;
    }

    public final Object h() {
        return this.n;
    }

    public final g i() {
        return a(this);
    }

    public final com.facebook.e j() {
        return b(this);
    }

    public static HttpURLConnection a(com.facebook.f fVar) {
        URL url;
        d(fVar);
        try {
            if (fVar.size() == 1) {
                url = new URL(fVar.get(0).l());
            } else {
                url = new URL(z.b());
            }
            HttpURLConnection httpURLConnection = null;
            try {
                httpURLConnection = a(url);
                a(fVar, httpURLConnection);
                return httpURLConnection;
            } catch (IOException | JSONException e2) {
                ab.a(httpURLConnection);
                throw new FacebookException("could not construct request body", e2);
            }
        } catch (MalformedURLException e3) {
            throw new FacebookException("could not construct URL for request", e3);
        }
    }

    public static g a(GraphRequest graphRequest) {
        List<g> a2 = a(graphRequest);
        if (a2 == null || a2.size() != 1) {
            throw new FacebookException("invalid state: expected a single response");
        }
        return a2.get(0);
    }

    public static List<g> a(GraphRequest... graphRequestArr) {
        ac.a(graphRequestArr, "requests");
        return a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static List<g> a(Collection<GraphRequest> collection) {
        return b(new com.facebook.f(collection));
    }

    public static List<g> b(com.facebook.f fVar) {
        List<g> a2;
        HttpURLConnection httpURLConnection = null;
        ac.c(fVar, "requests");
        try {
            httpURLConnection = a(fVar);
            a2 = a(httpURLConnection, fVar);
        } catch (Exception e2) {
            a2 = g.a(fVar.d(), (HttpURLConnection) null, new FacebookException(e2));
            a(fVar, a2);
        } finally {
            ab.a(httpURLConnection);
        }
        return a2;
    }

    public static com.facebook.e b(GraphRequest... graphRequestArr) {
        ac.a(graphRequestArr, "requests");
        return b((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static com.facebook.e b(Collection<GraphRequest> collection) {
        return c(new com.facebook.f(collection));
    }

    public static com.facebook.e c(com.facebook.f fVar) {
        ac.c(fVar, "requests");
        com.facebook.e eVar = new com.facebook.e(fVar);
        eVar.executeOnExecutor(com.facebook.d.d(), new Void[0]);
        return eVar;
    }

    public static List<g> a(HttpURLConnection httpURLConnection, com.facebook.f fVar) {
        List<g> a2 = g.a(httpURLConnection, fVar);
        ab.a(httpURLConnection);
        int size = fVar.size();
        if (size != a2.size()) {
            throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(a2.size()), Integer.valueOf(size)));
        }
        a(fVar, a2);
        com.facebook.b.a().d();
        return a2;
    }

    public String toString() {
        return "{Request:  accessToken: " + (this.d == null ? "null" : this.d) + ", graphPath: " + this.f + ", graphObject: " + this.g + ", httpMethod: " + this.e + ", parameters: " + this.k + "}";
    }

    static void a(final com.facebook.f fVar, List<g> list) {
        int size = fVar.size();
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequest = fVar.get(i);
            if (graphRequest.l != null) {
                arrayList.add(new Pair(graphRequest.l, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.GraphRequest.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((b) pair.first).a((g) pair.second);
                    }
                    for (f.a aVar : fVar.e()) {
                        aVar.a(fVar);
                    }
                }
            };
            Handler c2 = fVar.c();
            if (c2 == null) {
                runnable.run();
            } else {
                c2.post(runnable);
            }
        }
    }

    private static HttpURLConnection a(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", p());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    private void m() {
        if (this.d != null) {
            if (!this.k.containsKey("access_token")) {
                String b2 = this.d.b();
                u.a(b2);
                this.k.putString("access_token", b2);
            }
        } else if (!this.p && !this.k.containsKey("access_token")) {
            String j = com.facebook.d.j();
            String l = com.facebook.d.l();
            if (!ab.a(j) && !ab.a(l)) {
                this.k.putString("access_token", j + "|" + l);
            } else {
                Log.d(f86a, "Warning: Request without access token missing application ID or client token.");
            }
        }
        this.k.putString("sdk", "android");
        this.k.putString("format", "json");
        if (com.facebook.d.a(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            this.k.putString("debug", "info");
        } else if (com.facebook.d.a(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.k.putString("debug", "warning");
        }
    }

    private String b(String str) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.k.keySet()) {
            Object obj = this.k.get(str2);
            if (obj == null) {
                obj = "";
            }
            if (!e(obj)) {
                if (this.e == HttpMethod.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj.getClass().getSimpleName()));
                }
            } else {
                buildUpon.appendQueryParameter(str2, f(obj).toString());
            }
        }
        return buildUpon.toString();
    }

    final String k() {
        if (this.m != null) {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String format = String.format("%s/%s", z.b(), n());
        m();
        Uri parse = Uri.parse(b(format));
        return String.format("%s?%s", parse.getPath(), parse.getQuery());
    }

    final String l() {
        String b2;
        if (this.m != null) {
            return this.m.toString();
        }
        if (c() == HttpMethod.POST && this.f != null && this.f.endsWith("/videos")) {
            b2 = z.c();
        } else {
            b2 = z.b();
        }
        String format = String.format("%s/%s", b2, n());
        m();
        return b(format);
    }

    private String n() {
        return c.matcher(this.f).matches() ? this.f : String.format("%s/%s", this.o, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final GraphRequest f92a;
        private final Object b;

        public a(GraphRequest graphRequest, Object obj) {
            this.f92a = graphRequest;
            this.b = obj;
        }

        public GraphRequest a() {
            return this.f92a;
        }

        public Object b() {
            return this.b;
        }
    }

    private void a(JSONArray jSONArray, Map<String, a> map) {
        JSONObject jSONObject = new JSONObject();
        if (this.h != null) {
            jSONObject.put("name", this.h);
            jSONObject.put("omit_response_on_success", this.j);
        }
        if (this.i != null) {
            jSONObject.put("depends_on", this.i);
        }
        String k = k();
        jSONObject.put("relative_url", k);
        jSONObject.put("method", this.e);
        if (this.d != null) {
            u.a(this.d.b());
        }
        ArrayList arrayList = new ArrayList();
        for (String str : this.k.keySet()) {
            Object obj = this.k.get(str);
            if (d(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.g != null) {
            final ArrayList arrayList2 = new ArrayList();
            a(this.g, k, new d() { // from class: com.facebook.GraphRequest.4
                @Override // com.facebook.GraphRequest.d
                public void a(String str2, String str3) {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str2, URLEncoder.encode(str3, "UTF-8")));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    private static boolean e(com.facebook.f fVar) {
        for (f.a aVar : fVar.e()) {
            if (aVar instanceof f.b) {
                return true;
            }
        }
        Iterator<GraphRequest> it = fVar.iterator();
        while (it.hasNext()) {
            if (it.next().g() instanceof e) {
                return true;
            }
        }
        return false;
    }

    private static void a(HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", o());
    }

    private static boolean f(com.facebook.f fVar) {
        Iterator<GraphRequest> it = fVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            for (String str : next.k.keySet()) {
                if (d(next.k.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    static final boolean b(GraphRequest graphRequest) {
        String d2 = graphRequest.d();
        if (ab.a(d2)) {
            return true;
        }
        if (d2.startsWith("v")) {
            d2 = d2.substring(1);
        }
        String[] split = d2.split("\\.");
        return (split.length >= 2 && Integer.parseInt(split[0]) > 2) || (Integer.parseInt(split[0]) >= 2 && Integer.parseInt(split[1]) >= 4);
    }

    static final void d(com.facebook.f fVar) {
        Iterator<GraphRequest> it = fVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            if (HttpMethod.GET.equals(next.c()) && b(next)) {
                Bundle e2 = next.e();
                if (!e2.containsKey("fields") || ab.a(e2.getString("fields"))) {
                    u.a(LoggingBehavior.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.b());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static final void a(com.facebook.f r13, java.net.HttpURLConnection r14) {
        /*
            r4 = 0
            r6 = 0
            r1 = 1
            com.facebook.internal.u r12 = new com.facebook.internal.u
            com.facebook.LoggingBehavior r0 = com.facebook.LoggingBehavior.REQUESTS
            java.lang.String r2 = "Request"
            r12.<init>(r0, r2)
            int r2 = r13.size()
            boolean r5 = f(r13)
            if (r2 != r1) goto L75
            com.facebook.GraphRequest r0 = r13.get(r6)
            com.facebook.HttpMethod r0 = r0.e
        L1c:
            java.lang.String r3 = r0.name()
            r14.setRequestMethod(r3)
            a(r14, r5)
            java.net.URL r3 = r14.getURL()
            java.lang.String r7 = "Request:\n"
            r12.c(r7)
            java.lang.String r7 = "Id"
            java.lang.String r8 = r13.b()
            r12.a(r7, r8)
            java.lang.String r7 = "URL"
            r12.a(r7, r3)
            java.lang.String r7 = "Method"
            java.lang.String r8 = r14.getRequestMethod()
            r12.a(r7, r8)
            java.lang.String r7 = "User-Agent"
            java.lang.String r8 = "User-Agent"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.a(r7, r8)
            java.lang.String r7 = "Content-Type"
            java.lang.String r8 = "Content-Type"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.a(r7, r8)
            int r7 = r13.a()
            r14.setConnectTimeout(r7)
            int r7 = r13.a()
            r14.setReadTimeout(r7)
            com.facebook.HttpMethod r7 = com.facebook.HttpMethod.POST
            if (r0 != r7) goto L78
            r0 = r1
        L6f:
            if (r0 != 0) goto L7a
            r12.a()
        L74:
            return
        L75:
            com.facebook.HttpMethod r0 = com.facebook.HttpMethod.POST
            goto L1c
        L78:
            r0 = r6
            goto L6f
        L7a:
            r14.setDoOutput(r1)
            java.io.BufferedOutputStream r7 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> Lc0
            java.io.OutputStream r0 = r14.getOutputStream()     // Catch: java.lang.Throwable -> Lc0
            r7.<init>(r0)     // Catch: java.lang.Throwable -> Lc0
            if (r5 == 0) goto L8e
            java.util.zip.GZIPOutputStream r0 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> Lc8
            r0.<init>(r7)     // Catch: java.lang.Throwable -> Lc8
            r7 = r0
        L8e:
            boolean r0 = e(r13)     // Catch: java.lang.Throwable -> Lc8
            if (r0 == 0) goto Lcd
            com.facebook.k r4 = new com.facebook.k     // Catch: java.lang.Throwable -> Lc8
            android.os.Handler r0 = r13.c()     // Catch: java.lang.Throwable -> Lc8
            r4.<init>(r0)     // Catch: java.lang.Throwable -> Lc8
            r1 = 0
            r0 = r13
            a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lc8
            int r0 = r4.a()     // Catch: java.lang.Throwable -> Lc8
            java.util.Map r9 = r4.b()     // Catch: java.lang.Throwable -> Lc8
            com.facebook.l r6 = new com.facebook.l     // Catch: java.lang.Throwable -> Lc8
            long r10 = (long) r0     // Catch: java.lang.Throwable -> Lc8
            r8 = r13
            r6.<init>(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lc8
            r4 = r6
        Lb2:
            r0 = r13
            r1 = r12
            a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lca
            if (r4 == 0) goto Lbc
            r4.close()
        Lbc:
            r12.a()
            goto L74
        Lc0:
            r0 = move-exception
            r7 = r4
        Lc2:
            if (r7 == 0) goto Lc7
            r7.close()
        Lc7:
            throw r0
        Lc8:
            r0 = move-exception
            goto Lc2
        Lca:
            r0 = move-exception
            r7 = r4
            goto Lc2
        Lcd:
            r4 = r7
            goto Lb2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.a(com.facebook.f, java.net.HttpURLConnection):void");
    }

    private static void a(com.facebook.f fVar, u uVar, int i, URL url, OutputStream outputStream, boolean z) {
        f fVar2 = new f(outputStream, uVar, z);
        if (i == 1) {
            GraphRequest graphRequest = fVar.get(0);
            HashMap hashMap = new HashMap();
            for (String str : graphRequest.k.keySet()) {
                Object obj = graphRequest.k.get(str);
                if (d(obj)) {
                    hashMap.put(str, new a(graphRequest, obj));
                }
            }
            if (uVar != null) {
                uVar.c("  Parameters:\n");
            }
            a(graphRequest.k, fVar2, graphRequest);
            if (uVar != null) {
                uVar.c("  Attachments:\n");
            }
            a(hashMap, fVar2);
            if (graphRequest.g != null) {
                a(graphRequest.g, url.getPath(), fVar2);
                return;
            }
            return;
        }
        String g = g(fVar);
        if (ab.a(g)) {
            throw new FacebookException("App ID was not specified at the request or Settings.");
        }
        fVar2.a("batch_app_id", g);
        HashMap hashMap2 = new HashMap();
        a(fVar2, fVar, hashMap2);
        if (uVar != null) {
            uVar.c("  Attachments:\n");
        }
        a(hashMap2, fVar2);
    }

    private static boolean c(String str) {
        Matcher matcher = c.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    private static void a(JSONObject jSONObject, String str, d dVar) {
        boolean z;
        if (c(str)) {
            int indexOf = str.indexOf(":");
            int indexOf2 = str.indexOf("?");
            z = indexOf > 3 && (indexOf2 == -1 || indexOf < indexOf2);
        } else {
            z = false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            a(next, jSONObject.opt(next), dVar, z && next.equalsIgnoreCase("image"));
        }
    }

    private static void a(String str, Object obj, d dVar, boolean z) {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    a(String.format("%s[%s]", str, next), jSONObject.opt(next), dVar, z);
                }
            } else if (jSONObject.has("id")) {
                a(str, jSONObject.optString("id"), dVar, z);
            } else if (jSONObject.has("url")) {
                a(str, jSONObject.optString("url"), dVar, z);
            } else if (jSONObject.has("fbsdk:create_object")) {
                a(str, jSONObject.toString(), dVar, z);
            }
        } else if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), dVar, z);
            }
        } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            dVar.a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            dVar.a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    private static void a(Bundle bundle, f fVar, GraphRequest graphRequest) {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (e(obj)) {
                fVar.a(str, obj, graphRequest);
            }
        }
    }

    private static void a(Map<String, a> map, f fVar) {
        for (String str : map.keySet()) {
            a aVar = map.get(str);
            if (d(aVar.b())) {
                fVar.a(str, aVar.b(), aVar.a());
            }
        }
    }

    private static void a(f fVar, Collection<GraphRequest> collection, Map<String, a> map) {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.a(jSONArray, map);
        }
        fVar.a("batch", jSONArray, collection);
    }

    private static String o() {
        return String.format("multipart/form-data; boundary=%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }

    private static String p() {
        if (q == null) {
            q = String.format("%s.%s", "FBAndroidSDK", "4.31.0");
            String a2 = s.a();
            if (!ab.a(a2)) {
                q = String.format(Locale.ROOT, "%s/%s", q, a2);
            }
        }
        return q;
    }

    private static String g(com.facebook.f fVar) {
        String h;
        if (!ab.a(fVar.f())) {
            return fVar.f();
        }
        Iterator<GraphRequest> it = fVar.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().d;
            if (accessToken != null && (h = accessToken.h()) != null) {
                return h;
            }
        }
        if (!ab.a(b)) {
            return b;
        }
        return com.facebook.d.j();
    }

    private static boolean d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class f implements d {

        /* renamed from: a  reason: collision with root package name */
        private final OutputStream f93a;
        private final u b;
        private boolean c = true;
        private boolean d;

        public f(OutputStream outputStream, u uVar, boolean z) {
            this.d = false;
            this.f93a = outputStream;
            this.b = uVar;
            this.d = z;
        }

        public void a(String str, Object obj, GraphRequest graphRequest) {
            if (this.f93a instanceof m) {
                ((m) this.f93a).a(graphRequest);
            }
            if (GraphRequest.e(obj)) {
                a(str, GraphRequest.f(obj));
            } else if (obj instanceof Bitmap) {
                a(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                a(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                a(str, (Uri) obj, (String) null);
            } else if (obj instanceof ParcelFileDescriptor) {
                a(str, (ParcelFileDescriptor) obj, (String) null);
            } else if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable b = parcelableResourceWithMimeType.b();
                String a2 = parcelableResourceWithMimeType.a();
                if (b instanceof ParcelFileDescriptor) {
                    a(str, (ParcelFileDescriptor) b, a2);
                } else if (b instanceof Uri) {
                    a(str, (Uri) b, a2);
                } else {
                    throw b();
                }
            } else {
                throw b();
            }
        }

        private RuntimeException b() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        public void a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) {
            if (!(this.f93a instanceof m)) {
                a(str, jSONArray.toString());
                return;
            }
            m mVar = (m) this.f93a;
            a(str, (String) null, (String) null);
            a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                mVar.a(graphRequest);
                if (i > 0) {
                    a(",%s", jSONObject.toString());
                } else {
                    a("%s", jSONObject.toString());
                }
                i++;
            }
            a("]", new Object[0]);
            if (this.b != null) {
                this.b.a("    " + str, (Object) jSONArray.toString());
            }
        }

        @Override // com.facebook.GraphRequest.d
        public void a(String str, String str2) {
            a(str, (String) null, (String) null);
            b("%s", str2);
            a();
            if (this.b != null) {
                this.b.a("    " + str, (Object) str2);
            }
        }

        public void a(String str, Bitmap bitmap) {
            a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f93a);
            b("", new Object[0]);
            a();
            if (this.b != null) {
                this.b.a("    " + str, (Object) "<Image>");
            }
        }

        public void a(String str, byte[] bArr) {
            a(str, str, "content/unknown");
            this.f93a.write(bArr);
            b("", new Object[0]);
            a();
            if (this.b != null) {
                this.b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        public void a(String str, Uri uri, String str2) {
            int a2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            a(str, str, str2);
            if (this.f93a instanceof k) {
                ((k) this.f93a).a(ab.e(uri));
                a2 = 0;
            } else {
                a2 = ab.a(com.facebook.d.f().getContentResolver().openInputStream(uri), this.f93a) + 0;
            }
            b("", new Object[0]);
            a();
            if (this.b != null) {
                this.b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(a2)));
            }
        }

        public void a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) {
            int a2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            a(str, str, str2);
            if (this.f93a instanceof k) {
                ((k) this.f93a).a(parcelFileDescriptor.getStatSize());
                a2 = 0;
            } else {
                a2 = ab.a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f93a) + 0;
            }
            b("", new Object[0]);
            a();
            if (this.b != null) {
                this.b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(a2)));
            }
        }

        public void a() {
            if (!this.d) {
                b("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            } else {
                this.f93a.write("&".getBytes());
            }
        }

        public void a(String str, String str2, String str3) {
            if (!this.d) {
                a("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    a("; filename=\"%s\"", str2);
                }
                b("", new Object[0]);
                if (str3 != null) {
                    b("%s: %s", "Content-Type", str3);
                }
                b("", new Object[0]);
                return;
            }
            this.f93a.write(String.format("%s=", str).getBytes());
        }

        public void a(String str, Object... objArr) {
            if (!this.d) {
                if (this.c) {
                    this.f93a.write("--".getBytes());
                    this.f93a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                    this.f93a.write("\r\n".getBytes());
                    this.c = false;
                }
                this.f93a.write(String.format(str, objArr).getBytes());
                return;
            }
            this.f93a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
        }

        public void b(String str, Object... objArr) {
            a(str, objArr);
            if (!this.d) {
                a("\r\n", new Object[0]);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (AnonymousClass1) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final String f91a;
        private final RESOURCE b;

        /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, AnonymousClass1 anonymousClass1) {
            this(parcel);
        }

        public String a() {
            return this.f91a;
        }

        public RESOURCE b() {
            return this.b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f91a);
            parcel.writeParcelable(this.b, i);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.f91a = str;
            this.b = resource;
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.f91a = parcel.readString();
            this.b = (RESOURCE) parcel.readParcelable(com.facebook.d.f().getClassLoader());
        }
    }
}