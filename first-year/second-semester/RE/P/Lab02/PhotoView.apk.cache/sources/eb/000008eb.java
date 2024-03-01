package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NativeDialogParameters.java */
/* loaded from: classes.dex */
public class g {
    public static Bundle a(UUID uuid, ShareContent shareContent, boolean z) {
        ac.a(shareContent, "shareContent");
        ac.a(uuid, "callId");
        if (shareContent instanceof ShareLinkContent) {
            return a((ShareLinkContent) shareContent, z);
        }
        if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            return a(sharePhotoContent, k.a(sharePhotoContent, uuid), z);
        } else if (shareContent instanceof ShareVideoContent) {
            ShareVideoContent shareVideoContent = (ShareVideoContent) shareContent;
            return a(shareVideoContent, k.a(shareVideoContent, uuid), z);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
            try {
                return a(shareOpenGraphContent, k.a(k.a(uuid, shareOpenGraphContent), false), z);
            } catch (JSONException e) {
                throw new FacebookException("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + e.getMessage());
            }
        } else if (shareContent instanceof ShareMediaContent) {
            ShareMediaContent shareMediaContent = (ShareMediaContent) shareContent;
            return a(shareMediaContent, k.a(shareMediaContent, uuid), z);
        } else if (shareContent instanceof ShareCameraEffectContent) {
            ShareCameraEffectContent shareCameraEffectContent = (ShareCameraEffectContent) shareContent;
            return a(shareCameraEffectContent, k.a(shareCameraEffectContent, uuid), z);
        } else if (shareContent instanceof ShareMessengerGenericTemplateContent) {
            return a((ShareMessengerGenericTemplateContent) shareContent, z);
        } else {
            if (shareContent instanceof ShareMessengerOpenGraphMusicTemplateContent) {
                return a((ShareMessengerOpenGraphMusicTemplateContent) shareContent, z);
            }
            if (!(shareContent instanceof ShareMessengerMediaTemplateContent)) {
                return null;
            }
            return a((ShareMessengerMediaTemplateContent) shareContent, z);
        }
    }

    private static Bundle a(ShareCameraEffectContent shareCameraEffectContent, Bundle bundle, boolean z) {
        Bundle a2 = a(shareCameraEffectContent, z);
        ab.a(a2, "effect_id", shareCameraEffectContent.a());
        if (bundle != null) {
            a2.putBundle("effect_textures", bundle);
        }
        try {
            JSONObject a3 = a.a(shareCameraEffectContent.b());
            if (a3 != null) {
                ab.a(a2, "effect_arguments", a3.toString());
            }
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to create a JSON Object from the provided CameraEffectArguments: " + e.getMessage());
        }
    }

    private static Bundle a(ShareLinkContent shareLinkContent, boolean z) {
        Bundle a2 = a((ShareContent) shareLinkContent, z);
        ab.a(a2, "TITLE", shareLinkContent.b());
        ab.a(a2, "DESCRIPTION", shareLinkContent.a());
        ab.a(a2, "IMAGE", shareLinkContent.c());
        ab.a(a2, "QUOTE", shareLinkContent.d());
        ab.a(a2, "MESSENGER_LINK", shareLinkContent.h());
        ab.a(a2, "TARGET_DISPLAY", shareLinkContent.h());
        return a2;
    }

    private static Bundle a(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle a2 = a(sharePhotoContent, z);
        a2.putStringArrayList("PHOTOS", new ArrayList<>(list));
        return a2;
    }

    private static Bundle a(ShareVideoContent shareVideoContent, String str, boolean z) {
        Bundle a2 = a(shareVideoContent, z);
        ab.a(a2, "TITLE", shareVideoContent.b());
        ab.a(a2, "DESCRIPTION", shareVideoContent.a());
        ab.a(a2, "VIDEO", str);
        return a2;
    }

    private static Bundle a(ShareMediaContent shareMediaContent, List<Bundle> list, boolean z) {
        Bundle a2 = a(shareMediaContent, z);
        a2.putParcelableArrayList("MEDIA", new ArrayList<>(list));
        return a2;
    }

    private static Bundle a(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        Bundle a2 = a(shareOpenGraphContent, z);
        ab.a(a2, "PREVIEW_PROPERTY_NAME", (String) k.a(shareOpenGraphContent.b()).second);
        ab.a(a2, "ACTION_TYPE", shareOpenGraphContent.a().a());
        ab.a(a2, "ACTION", jSONObject.toString());
        return a2;
    }

    private static Bundle a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent, boolean z) {
        Bundle a2 = a((ShareContent) shareMessengerGenericTemplateContent, z);
        try {
            f.a(a2, shareMessengerGenericTemplateContent);
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to create a JSON Object from the provided ShareMessengerGenericTemplateContent: " + e.getMessage());
        }
    }

    private static Bundle a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent, boolean z) {
        Bundle a2 = a((ShareContent) shareMessengerOpenGraphMusicTemplateContent, z);
        try {
            f.a(a2, shareMessengerOpenGraphMusicTemplateContent);
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to create a JSON Object from the provided ShareMessengerOpenGraphMusicTemplateContent: " + e.getMessage());
        }
    }

    private static Bundle a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent, boolean z) {
        Bundle a2 = a((ShareContent) shareMessengerMediaTemplateContent, z);
        try {
            f.a(a2, shareMessengerMediaTemplateContent);
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to create a JSON Object from the provided ShareMessengerMediaTemplateContent: " + e.getMessage());
        }
    }

    private static Bundle a(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        ab.a(bundle, "LINK", shareContent.h());
        ab.a(bundle, "PLACE", shareContent.j());
        ab.a(bundle, "PAGE", shareContent.k());
        ab.a(bundle, "REF", shareContent.l());
        bundle.putBoolean("DATA_FAILURES_FATAL", z);
        List<String> i = shareContent.i();
        if (!ab.a(i)) {
            bundle.putStringArrayList("FRIENDS", new ArrayList<>(i));
        }
        ShareHashtag m = shareContent.m();
        if (m != null) {
            ab.a(bundle, "HASHTAG", m.a());
        }
        return bundle;
    }
}