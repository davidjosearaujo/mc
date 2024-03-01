package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.support.v4.os.EnvironmentCompat;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.ab;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.g;
import com.facebook.internal.n;
import com.facebook.internal.v;
import com.facebook.share.internal.CameraEffectFeature;
import com.facebook.share.internal.OpenGraphActionDialogFeature;
import com.facebook.share.internal.ShareDialogFeature;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.internal.j;
import com.facebook.share.internal.k;
import com.facebook.share.internal.l;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final class ShareDialog extends g<ShareContent, Object> {
    private static final String b = ShareDialog.class.getSimpleName();
    private static final int c = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    private boolean d;
    private boolean e;

    /* loaded from: classes.dex */
    public enum Mode {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(Class<? extends ShareContent> cls) {
        e e = e(cls);
        return e != null && f.a(e);
    }

    private static boolean d(Class<? extends ShareContent> cls) {
        AccessToken a2 = AccessToken.a();
        return ShareLinkContent.class.isAssignableFrom(cls) || ShareOpenGraphContent.class.isAssignableFrom(cls) || (SharePhotoContent.class.isAssignableFrom(cls) && (a2 != null && !a2.j()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(ShareContent shareContent) {
        if (d(shareContent.getClass())) {
            if (shareContent instanceof ShareOpenGraphContent) {
                try {
                    k.a((ShareOpenGraphContent) shareContent);
                } catch (Exception e) {
                    Log.d(b, "canShow returned false because the content of the Opem Graph object can't be shared via the web dialog", e);
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareDialog(Activity activity, int i) {
        super(activity, i);
        this.d = false;
        this.e = true;
        k.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareDialog(Fragment fragment, int i) {
        this(new n(fragment), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareDialog(android.app.Fragment fragment, int i) {
        this(new n(fragment), i);
    }

    private ShareDialog(n nVar, int i) {
        super(nVar, i);
        this.d = false;
        this.e = true;
        k.a(i);
    }

    public boolean e() {
        return this.d;
    }

    @Override // com.facebook.internal.g
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.g
    protected List<g<ShareContent, Object>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c());
        arrayList.add(new b());
        arrayList.add(new d());
        arrayList.add(new a());
        return arrayList;
    }

    /* loaded from: classes.dex */
    private class c extends g<ShareContent, Object>.a {
        private c() {
            super();
        }

        @Override // com.facebook.internal.g.a
        public Object a() {
            return Mode.NATIVE;
        }

        @Override // com.facebook.internal.g.a
        public boolean a(ShareContent shareContent, boolean z) {
            boolean z2;
            if (shareContent == null || (shareContent instanceof ShareCameraEffectContent)) {
                return false;
            }
            if (z) {
                z2 = true;
            } else {
                z2 = shareContent.m() != null ? f.a(ShareDialogFeature.HASHTAG) : true;
                if ((shareContent instanceof ShareLinkContent) && !ab.a(((ShareLinkContent) shareContent).d())) {
                    z2 &= f.a(ShareDialogFeature.LINK_SHARE_QUOTES);
                }
            }
            return z2 && ShareDialog.c((Class<? extends ShareContent>) shareContent.getClass());
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(final ShareContent shareContent) {
            ShareDialog.this.a(ShareDialog.this.b(), shareContent, Mode.NATIVE);
            j.b(shareContent);
            final com.facebook.internal.a d = ShareDialog.this.d();
            final boolean e = ShareDialog.this.e();
            f.a(d, new f.a() { // from class: com.facebook.share.widget.ShareDialog.c.1
                @Override // com.facebook.internal.f.a
                public Bundle a() {
                    return com.facebook.share.internal.g.a(d.c(), shareContent, e);
                }

                @Override // com.facebook.internal.f.a
                public Bundle b() {
                    return com.facebook.share.internal.b.a(d.c(), shareContent, e);
                }
            }, ShareDialog.e(shareContent.getClass()));
            return d;
        }
    }

    /* loaded from: classes.dex */
    private class d extends g<ShareContent, Object>.a {
        private d() {
            super();
        }

        @Override // com.facebook.internal.g.a
        public Object a() {
            return Mode.WEB;
        }

        @Override // com.facebook.internal.g.a
        public boolean a(ShareContent shareContent, boolean z) {
            return shareContent != null && ShareDialog.b(shareContent);
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(ShareContent shareContent) {
            Bundle a2;
            ShareDialog.this.a(ShareDialog.this.b(), shareContent, Mode.WEB);
            com.facebook.internal.a d = ShareDialog.this.d();
            j.c(shareContent);
            if (shareContent instanceof ShareLinkContent) {
                a2 = l.a((ShareLinkContent) shareContent);
            } else if (shareContent instanceof SharePhotoContent) {
                a2 = l.a(a((SharePhotoContent) shareContent, d.c()));
            } else {
                a2 = l.a((ShareOpenGraphContent) shareContent);
            }
            f.a(d, b(shareContent), a2);
            return d;
        }

        private String b(ShareContent shareContent) {
            if ((shareContent instanceof ShareLinkContent) || (shareContent instanceof SharePhotoContent)) {
                return "share";
            }
            if (shareContent instanceof ShareOpenGraphContent) {
                return "share_open_graph";
            }
            return null;
        }

        private SharePhotoContent a(SharePhotoContent sharePhotoContent, UUID uuid) {
            SharePhotoContent.a a2 = new SharePhotoContent.a().a(sharePhotoContent);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < sharePhotoContent.a().size()) {
                    SharePhoto sharePhoto = sharePhotoContent.a().get(i2);
                    Bitmap c = sharePhoto.c();
                    if (c != null) {
                        v.a a3 = v.a(uuid, c);
                        sharePhoto = new SharePhoto.a().a(sharePhoto).a(Uri.parse(a3.a())).a((Bitmap) null).c();
                        arrayList2.add(a3);
                    }
                    arrayList.add(sharePhoto);
                    i = i2 + 1;
                } else {
                    a2.c(arrayList);
                    v.a(arrayList2);
                    return a2.a();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class b extends g<ShareContent, Object>.a {
        private b() {
            super();
        }

        @Override // com.facebook.internal.g.a
        public Object a() {
            return Mode.FEED;
        }

        @Override // com.facebook.internal.g.a
        public boolean a(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareFeedContent);
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(ShareContent shareContent) {
            Bundle a2;
            ShareDialog.this.a(ShareDialog.this.b(), shareContent, Mode.FEED);
            com.facebook.internal.a d = ShareDialog.this.d();
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                j.c(shareLinkContent);
                a2 = l.b(shareLinkContent);
            } else {
                a2 = l.a((ShareFeedContent) shareContent);
            }
            f.a(d, "feed", a2);
            return d;
        }
    }

    /* loaded from: classes.dex */
    private class a extends g<ShareContent, Object>.a {
        private a() {
            super();
        }

        @Override // com.facebook.internal.g.a
        public Object a() {
            return Mode.NATIVE;
        }

        @Override // com.facebook.internal.g.a
        public boolean a(ShareContent shareContent, boolean z) {
            return (shareContent instanceof ShareCameraEffectContent) && ShareDialog.c((Class<? extends ShareContent>) shareContent.getClass());
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(final ShareContent shareContent) {
            j.b(shareContent);
            final com.facebook.internal.a d = ShareDialog.this.d();
            final boolean e = ShareDialog.this.e();
            f.a(d, new f.a() { // from class: com.facebook.share.widget.ShareDialog.a.1
                @Override // com.facebook.internal.f.a
                public Bundle a() {
                    return com.facebook.share.internal.g.a(d.c(), shareContent, e);
                }

                @Override // com.facebook.internal.f.a
                public Bundle b() {
                    return com.facebook.share.internal.b.a(d.c(), shareContent, e);
                }
            }, ShareDialog.e(shareContent.getClass()));
            return d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e e(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.SHARE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return OpenGraphActionDialogFeature.OG_ACTION_DIALOG;
        }
        if (ShareMediaContent.class.isAssignableFrom(cls)) {
            return ShareDialogFeature.MULTIMEDIA;
        }
        if (ShareCameraEffectContent.class.isAssignableFrom(cls)) {
            return CameraEffectFeature.SHARE_CAMERA_EFFECT;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, ShareContent shareContent, Mode mode) {
        String str;
        String str2;
        if (this.e) {
            mode = Mode.AUTOMATIC;
        }
        switch (mode) {
            case AUTOMATIC:
                str = "automatic";
                break;
            case WEB:
                str = "web";
                break;
            case NATIVE:
                str = "native";
                break;
            default:
                str = EnvironmentCompat.MEDIA_UNKNOWN;
                break;
        }
        e e = e(shareContent.getClass());
        if (e == ShareDialogFeature.SHARE_DIALOG) {
            str2 = NotificationCompat.CATEGORY_STATUS;
        } else if (e == ShareDialogFeature.PHOTOS) {
            str2 = "photo";
        } else if (e == ShareDialogFeature.VIDEO) {
            str2 = "video";
        } else if (e == OpenGraphActionDialogFeature.OG_ACTION_DIALOG) {
            str2 = "open_graph";
        } else {
            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        AppEventsLogger b2 = AppEventsLogger.b(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str);
        bundle.putString("fb_share_dialog_content_type", str2);
        b2.a("fb_share_dialog_show", (Double) null, bundle);
    }
}