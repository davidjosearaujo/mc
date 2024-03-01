package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.ab;
import com.facebook.internal.v;
import com.facebook.share.internal.h;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ShareInternalUtility.java */
/* loaded from: classes.dex */
public final class k {
    public static void a(final int i) {
        CallbackManagerImpl.a(i, new CallbackManagerImpl.a() { // from class: com.facebook.share.internal.k.1
        });
    }

    public static List<String> a(SharePhotoContent sharePhotoContent, final UUID uuid) {
        List<SharePhoto> a2;
        if (sharePhotoContent == null || (a2 = sharePhotoContent.a()) == null) {
            return null;
        }
        List a3 = ab.a((List) a2, (ab.b) new ab.b<SharePhoto, v.a>() { // from class: com.facebook.share.internal.k.2
            @Override // com.facebook.internal.ab.b
            public v.a a(SharePhoto sharePhoto) {
                return k.b(uuid, sharePhoto);
            }
        });
        List<String> a4 = ab.a(a3, (ab.b) new ab.b<v.a, String>() { // from class: com.facebook.share.internal.k.3
            @Override // com.facebook.internal.ab.b
            public String a(v.a aVar) {
                return aVar.a();
            }
        });
        v.a(a3);
        return a4;
    }

    public static String a(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent == null || shareVideoContent.d() == null) {
            return null;
        }
        v.a a2 = v.a(uuid, shareVideoContent.d().c());
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(a2);
        v.a(arrayList);
        return a2.a();
    }

    public static List<Bundle> a(ShareMediaContent shareMediaContent, final UUID uuid) {
        List<ShareMedia> a2;
        if (shareMediaContent == null || (a2 = shareMediaContent.a()) == null) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        List<Bundle> a3 = ab.a((List) a2, (ab.b) new ab.b<ShareMedia, Bundle>() { // from class: com.facebook.share.internal.k.4
            @Override // com.facebook.internal.ab.b
            public Bundle a(ShareMedia shareMedia) {
                v.a b = k.b(uuid, shareMedia);
                arrayList.add(b);
                Bundle bundle = new Bundle();
                bundle.putString("type", shareMedia.b().name());
                bundle.putString("uri", b.a());
                return bundle;
            }
        });
        v.a(arrayList);
        return a3;
    }

    public static Bundle a(ShareCameraEffectContent shareCameraEffectContent, UUID uuid) {
        CameraEffectTextures c;
        if (shareCameraEffectContent == null || (c = shareCameraEffectContent.c()) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : c.a()) {
            v.a a2 = a(uuid, c.b(str), c.a(str));
            arrayList.add(a2);
            bundle.putString(str, a2.a());
        }
        v.a(arrayList);
        return bundle;
    }

    public static JSONObject a(final UUID uuid, ShareOpenGraphContent shareOpenGraphContent) {
        ShareOpenGraphAction a2 = shareOpenGraphContent.a();
        final ArrayList arrayList = new ArrayList();
        JSONObject a3 = h.a(a2, new h.a() { // from class: com.facebook.share.internal.k.5
            @Override // com.facebook.share.internal.h.a
            public JSONObject a(SharePhoto sharePhoto) {
                v.a b = k.b(uuid, sharePhoto);
                if (b == null) {
                    return null;
                }
                arrayList.add(b);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", b.a());
                    if (sharePhoto.e()) {
                        jSONObject.put("user_generated", true);
                        return jSONObject;
                    }
                    return jSONObject;
                } catch (JSONException e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
        v.a(arrayList);
        if (shareOpenGraphContent.j() != null && ab.a(a3.optString("place"))) {
            a3.put("place", shareOpenGraphContent.j());
        }
        if (shareOpenGraphContent.i() != null) {
            JSONArray optJSONArray = a3.optJSONArray("tags");
            HashSet hashSet = optJSONArray == null ? new HashSet() : ab.b(optJSONArray);
            for (String str : shareOpenGraphContent.i()) {
                hashSet.add(str);
            }
            a3.put("tags", new JSONArray((Collection) hashSet));
        }
        return a3;
    }

    public static JSONObject a(ShareOpenGraphContent shareOpenGraphContent) {
        return h.a(shareOpenGraphContent.a(), new h.a() { // from class: com.facebook.share.internal.k.6
            @Override // com.facebook.share.internal.h.a
            public JSONObject a(SharePhoto sharePhoto) {
                Uri d = sharePhoto.d();
                if (!ab.b(d)) {
                    throw new FacebookException("Only web images may be used in OG objects shared via the web dialog");
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", d.toString());
                    return jSONObject;
                } catch (JSONException e) {
                    throw new FacebookException("Unable to attach images", e);
                }
            }
        });
    }

    public static JSONArray a(JSONArray jSONArray, boolean z) {
        JSONArray jSONArray2 = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj, z);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj, z);
                }
                jSONArray2.put(obj);
                i = i2 + 1;
            } else {
                return jSONArray2;
            }
        }
    }

    public static JSONObject a(JSONObject jSONObject, boolean z) {
        JSONObject a2;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof JSONObject) {
                    a2 = a((JSONObject) obj, true);
                } else {
                    a2 = obj instanceof JSONArray ? a((JSONArray) obj, true) : obj;
                }
                Pair<String, String> a3 = a(string);
                String str = (String) a3.first;
                String str2 = (String) a3.second;
                if (z) {
                    if (str != null && str.equals("fbsdk")) {
                        jSONObject2.put(string, a2);
                    } else if (str == null || str.equals("og")) {
                        jSONObject2.put(str2, a2);
                    } else {
                        jSONObject3.put(str2, a2);
                    }
                } else if (str != null && str.equals("fb")) {
                    jSONObject2.put(string, a2);
                } else {
                    jSONObject2.put(str2, a2);
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            throw new FacebookException("Failed to create json object from share content");
        }
    }

    public static Pair<String, String> a(String str) {
        String str2 = null;
        int indexOf = str.indexOf(58);
        if (indexOf != -1 && str.length() > indexOf + 1) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        }
        return new Pair<>(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static v.a b(UUID uuid, ShareMedia shareMedia) {
        Uri c;
        Bitmap bitmap = null;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.c();
            c = sharePhoto.d();
        } else {
            c = shareMedia instanceof ShareVideo ? ((ShareVideo) shareMedia).c() : null;
        }
        return a(uuid, c, bitmap);
    }

    private static v.a a(UUID uuid, Uri uri, Bitmap bitmap) {
        if (bitmap != null) {
            return v.a(uuid, bitmap);
        }
        if (uri == null) {
            return null;
        }
        return v.a(uuid, uri);
    }

    public static GraphRequest a(AccessToken accessToken, File file, GraphRequest.b bVar) {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, bVar);
    }

    public static GraphRequest a(AccessToken accessToken, Uri uri, GraphRequest.b bVar) {
        if (ab.d(uri)) {
            return a(accessToken, new File(uri.getPath()), bVar);
        }
        if (!ab.c(uri)) {
            throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
        }
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, bVar);
    }

    @Nullable
    public static LikeView.ObjectType a(LikeView.ObjectType objectType, LikeView.ObjectType objectType2) {
        if (objectType != objectType2) {
            if (objectType == LikeView.ObjectType.UNKNOWN) {
                return objectType2;
            }
            if (objectType2 != LikeView.ObjectType.UNKNOWN) {
                return null;
            }
            return objectType;
        }
        return objectType;
    }
}