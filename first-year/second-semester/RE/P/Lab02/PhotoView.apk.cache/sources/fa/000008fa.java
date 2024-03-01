package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.ab;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: WebDialogParameters.java */
/* loaded from: classes.dex */
public class l {
    public static Bundle a(ShareLinkContent shareLinkContent) {
        Bundle a2 = a((ShareContent) shareLinkContent);
        ab.a(a2, "href", shareLinkContent.h());
        ab.a(a2, "quote", shareLinkContent.d());
        return a2;
    }

    public static Bundle a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle a2 = a((ShareContent) shareOpenGraphContent);
        ab.a(a2, "action_type", shareOpenGraphContent.a().a());
        try {
            JSONObject a3 = k.a(k.a(shareOpenGraphContent), false);
            if (a3 != null) {
                ab.a(a2, "action_properties", a3.toString());
            }
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    public static Bundle a(SharePhotoContent sharePhotoContent) {
        Bundle a2 = a((ShareContent) sharePhotoContent);
        String[] strArr = new String[sharePhotoContent.a().size()];
        ab.a((List) sharePhotoContent.a(), (ab.b) new ab.b<SharePhoto, String>() { // from class: com.facebook.share.internal.l.1
            @Override // com.facebook.internal.ab.b
            public String a(SharePhoto sharePhoto) {
                return sharePhoto.d().toString();
            }
        }).toArray(strArr);
        a2.putStringArray("media", strArr);
        return a2;
    }

    public static Bundle a(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag m = shareContent.m();
        if (m != null) {
            ab.a(bundle, "hashtag", m.a());
        }
        return bundle;
    }

    public static Bundle b(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        ab.a(bundle, "name", shareLinkContent.b());
        ab.a(bundle, "description", shareLinkContent.a());
        ab.a(bundle, "link", ab.a(shareLinkContent.h()));
        ab.a(bundle, "picture", ab.a(shareLinkContent.c()));
        ab.a(bundle, "quote", shareLinkContent.d());
        if (shareLinkContent.m() != null) {
            ab.a(bundle, "hashtag", shareLinkContent.m().a());
        }
        return bundle;
    }

    public static Bundle a(ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        ab.a(bundle, "to", shareFeedContent.a());
        ab.a(bundle, "link", shareFeedContent.b());
        ab.a(bundle, "picture", shareFeedContent.f());
        ab.a(bundle, "source", shareFeedContent.g());
        ab.a(bundle, "name", shareFeedContent.c());
        ab.a(bundle, "caption", shareFeedContent.d());
        ab.a(bundle, "description", shareFeedContent.e());
        return bundle;
    }
}