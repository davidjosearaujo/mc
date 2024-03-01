package com.facebook;

import android.support.v4.os.EnvironmentCompat;
import com.facebook.internal.ab;
import com.facebook.internal.u;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: GraphResponse.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f144a;
    private final JSONObject b;
    private final JSONArray c;
    private final FacebookRequestError d;
    private final String e;
    private final GraphRequest f;

    g(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    g(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    g(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    g(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.f = graphRequest;
        this.f144a = httpURLConnection;
        this.e = str;
        this.b = jSONObject;
        this.c = jSONArray;
        this.d = facebookRequestError;
    }

    public final FacebookRequestError a() {
        return this.d;
    }

    public final JSONObject b() {
        return this.b;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(this.f144a != null ? this.f144a.getResponseCode() : 200);
            str = String.format(locale, "%d", objArr);
        } catch (IOException e) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.b + ", error: " + this.d + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<g> a(HttpURLConnection httpURLConnection, f fVar) {
        List<g> a2;
        InputStream inputStream = null;
        try {
            if (httpURLConnection.getResponseCode() >= 400) {
                inputStream = httpURLConnection.getErrorStream();
            } else {
                inputStream = httpURLConnection.getInputStream();
            }
            a2 = a(inputStream, httpURLConnection, fVar);
        } catch (FacebookException e) {
            u.a(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e);
            a2 = a(fVar, httpURLConnection, e);
        } catch (Exception e2) {
            u.a(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e2);
            a2 = a(fVar, httpURLConnection, new FacebookException(e2));
        } finally {
            ab.a((Closeable) inputStream);
        }
        return a2;
    }

    static List<g> a(InputStream inputStream, HttpURLConnection httpURLConnection, f fVar) {
        String a2 = ab.a(inputStream);
        u.a(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(a2.length()), a2);
        return a(a2, httpURLConnection, fVar);
    }

    static List<g> a(String str, HttpURLConnection httpURLConnection, f fVar) {
        List<g> a2 = a(httpURLConnection, fVar, new JSONTokener(str).nextValue());
        u.a(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", fVar.b(), Integer.valueOf(str.length()), a2);
        return a2;
    }

    private static List<g> a(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object obj) {
        JSONArray jSONArray;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            GraphRequest graphRequest = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("body", obj);
                jSONObject.put("code", httpURLConnection != null ? httpURLConnection.getResponseCode() : 200);
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(jSONObject);
                jSONArray = jSONArray2;
            } catch (IOException e) {
                arrayList.add(new g(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e)));
            } catch (JSONException e2) {
                arrayList.add(new g(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e2)));
                jSONArray = obj;
            }
            if ((jSONArray instanceof JSONArray) || ((JSONArray) jSONArray).length() != size) {
                throw new FacebookException("Unexpected number of results");
            }
            JSONArray jSONArray3 = (JSONArray) jSONArray;
            for (int i = 0; i < jSONArray3.length(); i++) {
                GraphRequest graphRequest2 = list.get(i);
                try {
                    arrayList.add(a(graphRequest2, httpURLConnection, jSONArray3.get(i), obj));
                } catch (FacebookException e3) {
                    arrayList.add(new g(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e3)));
                } catch (JSONException e4) {
                    arrayList.add(new g(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e4)));
                }
            }
            return arrayList;
        }
        jSONArray = obj;
        if (jSONArray instanceof JSONArray) {
        }
        throw new FacebookException("Unexpected number of results");
    }

    private static g a(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            FacebookRequestError a2 = FacebookRequestError.a(jSONObject, obj2, httpURLConnection);
            if (a2 != null) {
                if (a2.b() == 190 && ab.a(graphRequest.f())) {
                    AccessToken.a((AccessToken) null);
                }
                return new g(graphRequest, httpURLConnection, a2);
            }
            Object a3 = ab.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (a3 instanceof JSONObject) {
                return new g(graphRequest, httpURLConnection, a3.toString(), (JSONObject) a3);
            }
            if (a3 instanceof JSONArray) {
                return new g(graphRequest, httpURLConnection, a3.toString(), (JSONArray) a3);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL) {
            return new g(graphRequest, httpURLConnection, obj.toString(), (JSONObject) null);
        }
        throw new FacebookException("Got unexpected object type in response, class: " + obj.getClass().getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<g> a(List<GraphRequest> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new g(list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
        }
        return arrayList;
    }
}