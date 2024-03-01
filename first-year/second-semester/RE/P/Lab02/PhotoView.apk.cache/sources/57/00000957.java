package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.NotificationCompat;
import android.support.v4.os.EnvironmentCompat;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.g;
import com.facebook.internal.n;
import com.facebook.share.internal.MessageDialogFeature;
import com.facebook.share.internal.OpenGraphMessageDialogFeature;
import com.facebook.share.internal.b;
import com.facebook.share.internal.j;
import com.facebook.share.internal.k;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MessageDialog.java */
/* loaded from: classes.dex */
public final class a extends g<ShareContent, Object> {
    private static final int b = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    private boolean c;

    public static boolean a(Class<? extends ShareContent> cls) {
        e c = c(cls);
        return c != null && f.a(c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Activity activity, int i) {
        super(activity, i);
        this.c = false;
        k.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Fragment fragment, int i) {
        this(new n(fragment), i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(android.app.Fragment fragment, int i) {
        this(new n(fragment), i);
    }

    private a(n nVar, int i) {
        super(nVar, i);
        this.c = false;
        k.a(i);
    }

    public boolean e() {
        return this.c;
    }

    @Override // com.facebook.internal.g
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.g
    protected List<g<ShareContent, Object>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0016a());
        return arrayList;
    }

    /* compiled from: MessageDialog.java */
    /* renamed from: com.facebook.share.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0016a extends g<ShareContent, Object>.a {
        private C0016a() {
            super();
        }

        @Override // com.facebook.internal.g.a
        public boolean a(ShareContent shareContent, boolean z) {
            return shareContent != null && a.a((Class<? extends ShareContent>) shareContent.getClass());
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(final ShareContent shareContent) {
            j.a(shareContent);
            final com.facebook.internal.a d = a.this.d();
            final boolean e = a.this.e();
            a.b(a.this.b(), shareContent, d);
            f.a(d, new f.a() { // from class: com.facebook.share.widget.a.a.1
                @Override // com.facebook.internal.f.a
                public Bundle a() {
                    return com.facebook.share.internal.g.a(d.c(), shareContent, e);
                }

                @Override // com.facebook.internal.f.a
                public Bundle b() {
                    return b.a(d.c(), shareContent, e);
                }
            }, a.c(shareContent.getClass()));
            return d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e c(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSAGE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG;
        }
        if (ShareMessengerGenericTemplateContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSENGER_GENERIC_TEMPLATE;
        }
        if (ShareMessengerOpenGraphMusicTemplateContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE;
        }
        if (ShareMessengerMediaTemplateContent.class.isAssignableFrom(cls)) {
            return MessageDialogFeature.MESSENGER_MEDIA_TEMPLATE;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, ShareContent shareContent, com.facebook.internal.a aVar) {
        String str;
        e c = c(shareContent.getClass());
        if (c == MessageDialogFeature.MESSAGE_DIALOG) {
            str = NotificationCompat.CATEGORY_STATUS;
        } else if (c == MessageDialogFeature.PHOTOS) {
            str = "photo";
        } else if (c == MessageDialogFeature.VIDEO) {
            str = "video";
        } else if (c == OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG) {
            str = "open_graph";
        } else if (c == MessageDialogFeature.MESSENGER_GENERIC_TEMPLATE) {
            str = "GenericTemplate";
        } else if (c == MessageDialogFeature.MESSENGER_MEDIA_TEMPLATE) {
            str = "MediaTemplate";
        } else if (c == MessageDialogFeature.MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE) {
            str = "OpenGraphMusicTemplate";
        } else {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        AppEventsLogger b2 = AppEventsLogger.b(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_content_type", str);
        bundle.putString("fb_share_dialog_content_uuid", aVar.c().toString());
        bundle.putString("fb_share_dialog_content_page_id", shareContent.k());
        b2.a("fb_messenger_share_dialog_show", (Double) null, bundle);
    }
}