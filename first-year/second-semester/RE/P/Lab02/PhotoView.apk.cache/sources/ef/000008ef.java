package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookException;
import com.facebook.internal.ab;
import com.facebook.internal.ac;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareMessengerActionButton;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareMessengerURLActionButton;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.List;
import java.util.Locale;

/* compiled from: ShareContentValidation.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static a f317a;
    private static a b;

    public static void a(ShareContent shareContent) {
        a(shareContent, a());
    }

    public static void b(ShareContent shareContent) {
        a(shareContent, a());
    }

    public static void c(ShareContent shareContent) {
        a(shareContent, b());
    }

    private static a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    private static a b() {
        if (f317a == null) {
            f317a = new b();
        }
        return f317a;
    }

    private static void a(ShareContent shareContent, a aVar) {
        if (shareContent == null) {
            throw new FacebookException("Must provide non-null content to share");
        }
        if (shareContent instanceof ShareLinkContent) {
            aVar.a((ShareLinkContent) shareContent);
        } else if (shareContent instanceof SharePhotoContent) {
            aVar.a((SharePhotoContent) shareContent);
        } else if (shareContent instanceof ShareVideoContent) {
            aVar.a((ShareVideoContent) shareContent);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            aVar.a((ShareOpenGraphContent) shareContent);
        } else if (shareContent instanceof ShareMediaContent) {
            aVar.a((ShareMediaContent) shareContent);
        } else if (shareContent instanceof ShareCameraEffectContent) {
            aVar.a((ShareCameraEffectContent) shareContent);
        } else if (shareContent instanceof ShareMessengerOpenGraphMusicTemplateContent) {
            aVar.a((ShareMessengerOpenGraphMusicTemplateContent) shareContent);
        } else if (shareContent instanceof ShareMessengerMediaTemplateContent) {
            aVar.a((ShareMessengerMediaTemplateContent) shareContent);
        } else if (shareContent instanceof ShareMessengerGenericTemplateContent) {
            aVar.a((ShareMessengerGenericTemplateContent) shareContent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareLinkContent shareLinkContent, a aVar) {
        Uri c = shareLinkContent.c();
        if (c != null && !ab.b(c)) {
            throw new FacebookException("Image Url must be an http:// or https:// url");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(SharePhotoContent sharePhotoContent, a aVar) {
        List<SharePhoto> a2 = sharePhotoContent.a();
        if (a2 == null || a2.isEmpty()) {
            throw new FacebookException("Must specify at least one Photo in SharePhotoContent.");
        }
        if (a2.size() > 6) {
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d photos.", 6));
        }
        for (SharePhoto sharePhoto : a2) {
            aVar.a(sharePhoto);
        }
    }

    private static void a(SharePhoto sharePhoto) {
        if (sharePhoto == null) {
            throw new FacebookException("Cannot share a null SharePhoto");
        }
        Bitmap c = sharePhoto.c();
        Uri d = sharePhoto.d();
        if (c == null && d == null) {
            throw new FacebookException("SharePhoto does not have a Bitmap or ImageUrl specified");
        }
    }

    private static void c(SharePhoto sharePhoto, a aVar) {
        a(sharePhoto);
        Bitmap c = sharePhoto.c();
        Uri d = sharePhoto.d();
        if (c == null && ab.b(d) && !aVar.a()) {
            throw new FacebookException("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(SharePhoto sharePhoto, a aVar) {
        c(sharePhoto, aVar);
        if (sharePhoto.c() != null || !ab.b(sharePhoto.d())) {
            ac.d(com.facebook.d.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(SharePhoto sharePhoto, a aVar) {
        a(sharePhoto);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareVideoContent shareVideoContent, a aVar) {
        aVar.a(shareVideoContent.d());
        SharePhoto c = shareVideoContent.c();
        if (c != null) {
            aVar.a(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareVideo shareVideo, a aVar) {
        if (shareVideo == null) {
            throw new FacebookException("Cannot share a null ShareVideo");
        }
        Uri c = shareVideo.c();
        if (c == null) {
            throw new FacebookException("ShareVideo does not have a LocalUrl specified");
        }
        if (!ab.c(c) && !ab.d(c)) {
            throw new FacebookException("ShareVideo must reference a video that is on the device");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareMediaContent shareMediaContent, a aVar) {
        List<ShareMedia> a2 = shareMediaContent.a();
        if (a2 == null || a2.isEmpty()) {
            throw new FacebookException("Must specify at least one medium in ShareMediaContent.");
        }
        if (a2.size() > 6) {
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d media.", 6));
        }
        for (ShareMedia shareMedia : a2) {
            aVar.a(shareMedia);
        }
    }

    public static void a(ShareMedia shareMedia, a aVar) {
        if (shareMedia instanceof SharePhoto) {
            aVar.a((SharePhoto) shareMedia);
        } else if (shareMedia instanceof ShareVideo) {
            aVar.a((ShareVideo) shareMedia);
        } else {
            throw new FacebookException(String.format(Locale.ROOT, "Invalid media type: %s", shareMedia.getClass().getSimpleName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareCameraEffectContent shareCameraEffectContent, a aVar) {
        if (ab.a(shareCameraEffectContent.a())) {
            throw new FacebookException("Must specify a non-empty effectId");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphContent shareOpenGraphContent, a aVar) {
        aVar.a(shareOpenGraphContent.a());
        String b2 = shareOpenGraphContent.b();
        if (ab.a(b2)) {
            throw new FacebookException("Must specify a previewPropertyName.");
        }
        if (shareOpenGraphContent.a().a(b2) == null) {
            throw new FacebookException("Property \"" + b2 + "\" was not found on the action. The name of the preview property must match the name of an action property.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphAction shareOpenGraphAction, a aVar) {
        if (shareOpenGraphAction == null) {
            throw new FacebookException("Must specify a non-null ShareOpenGraphAction");
        }
        if (ab.a(shareOpenGraphAction.a())) {
            throw new FacebookException("ShareOpenGraphAction must have a non-empty actionType");
        }
        aVar.a(shareOpenGraphAction, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphObject shareOpenGraphObject, a aVar) {
        if (shareOpenGraphObject == null) {
            throw new FacebookException("Cannot share a null ShareOpenGraphObject");
        }
        aVar.a(shareOpenGraphObject, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphValueContainer shareOpenGraphValueContainer, a aVar, boolean z) {
        for (String str : shareOpenGraphValueContainer.c()) {
            a(str, z);
            Object a2 = shareOpenGraphValueContainer.a(str);
            if (a2 instanceof List) {
                for (Object obj : (List) a2) {
                    if (obj == null) {
                        throw new FacebookException("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
                    }
                    a(obj, aVar);
                }
                continue;
            } else {
                a(a2, aVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
        if (ab.a(shareMessengerOpenGraphMusicTemplateContent.k())) {
            throw new FacebookException("Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent");
        }
        if (shareMessengerOpenGraphMusicTemplateContent.a() == null) {
            throw new FacebookException("Must specify url for ShareMessengerOpenGraphMusicTemplateContent");
        }
        a(shareMessengerOpenGraphMusicTemplateContent.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
        if (ab.a(shareMessengerGenericTemplateContent.k())) {
            throw new FacebookException("Must specify Page Id for ShareMessengerGenericTemplateContent");
        }
        if (shareMessengerGenericTemplateContent.c() == null) {
            throw new FacebookException("Must specify element for ShareMessengerGenericTemplateContent");
        }
        if (ab.a(shareMessengerGenericTemplateContent.c().a())) {
            throw new FacebookException("Must specify title for ShareMessengerGenericTemplateElement");
        }
        a(shareMessengerGenericTemplateContent.c().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
        if (ab.a(shareMessengerMediaTemplateContent.k())) {
            throw new FacebookException("Must specify Page Id for ShareMessengerMediaTemplateContent");
        }
        if (shareMessengerMediaTemplateContent.c() == null && ab.a(shareMessengerMediaTemplateContent.b())) {
            throw new FacebookException("Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent");
        }
        a(shareMessengerMediaTemplateContent.d());
    }

    private static void a(ShareMessengerActionButton shareMessengerActionButton) {
        if (shareMessengerActionButton != null) {
            if (ab.a(shareMessengerActionButton.a())) {
                throw new FacebookException("Must specify title for ShareMessengerActionButton");
            }
            if (shareMessengerActionButton instanceof ShareMessengerURLActionButton) {
                a((ShareMessengerURLActionButton) shareMessengerActionButton);
            }
        }
    }

    private static void a(ShareMessengerURLActionButton shareMessengerURLActionButton) {
        if (shareMessengerURLActionButton.b() == null) {
            throw new FacebookException("Must specify url for ShareMessengerURLActionButton");
        }
    }

    private static void a(String str, boolean z) {
        if (z) {
            String[] split = str.split(":");
            if (split.length < 2) {
                throw new FacebookException("Open Graph keys must be namespaced: %s", str);
            }
            for (String str2 : split) {
                if (str2.isEmpty()) {
                    throw new FacebookException("Invalid key found in Open Graph dictionary: %s", str);
                }
            }
        }
    }

    private static void a(Object obj, a aVar) {
        if (obj instanceof ShareOpenGraphObject) {
            aVar.a((ShareOpenGraphObject) obj);
        } else if (obj instanceof SharePhoto) {
            aVar.a((SharePhoto) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ShareContentValidation.java */
    /* loaded from: classes.dex */
    public static class b extends a {
        private b() {
            super();
        }

        @Override // com.facebook.share.internal.j.a
        public void a(ShareVideoContent shareVideoContent) {
            throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.j.a
        public void a(ShareMediaContent shareMediaContent) {
            throw new FacebookException("Cannot share ShareMediaContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.j.a
        public void a(SharePhoto sharePhoto) {
            j.e(sharePhoto, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ShareContentValidation.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f318a;

        private a() {
            this.f318a = false;
        }

        public void a(ShareLinkContent shareLinkContent) {
            j.b(shareLinkContent, this);
        }

        public void a(SharePhotoContent sharePhotoContent) {
            j.b(sharePhotoContent, this);
        }

        public void a(ShareVideoContent shareVideoContent) {
            j.b(shareVideoContent, this);
        }

        public void a(ShareMediaContent shareMediaContent) {
            j.b(shareMediaContent, this);
        }

        public void a(ShareCameraEffectContent shareCameraEffectContent) {
            j.b(shareCameraEffectContent, this);
        }

        public void a(ShareOpenGraphContent shareOpenGraphContent) {
            this.f318a = true;
            j.b(shareOpenGraphContent, this);
        }

        public void a(ShareOpenGraphAction shareOpenGraphAction) {
            j.b(shareOpenGraphAction, this);
        }

        public void a(ShareOpenGraphObject shareOpenGraphObject) {
            j.b(shareOpenGraphObject, this);
        }

        public void a(ShareOpenGraphValueContainer shareOpenGraphValueContainer, boolean z) {
            j.b(shareOpenGraphValueContainer, this, z);
        }

        public void a(SharePhoto sharePhoto) {
            j.d(sharePhoto, this);
        }

        public void a(ShareVideo shareVideo) {
            j.b(shareVideo, this);
        }

        public void a(ShareMedia shareMedia) {
            j.a(shareMedia, this);
        }

        public void a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent) {
            j.b(shareMessengerOpenGraphMusicTemplateContent);
        }

        public void a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent) {
            j.b(shareMessengerGenericTemplateContent);
        }

        public void a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent) {
            j.b(shareMessengerMediaTemplateContent);
        }

        public boolean a() {
            return this.f318a;
        }
    }
}