package com.facebook.share.internal;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.f;
import com.facebook.internal.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: LikeDialog.java */
@Deprecated
/* loaded from: classes.dex */
public class d extends com.facebook.internal.g<LikeContent, Object> {
    private static final int b = CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode();

    /* compiled from: LikeDialog.java */
    /* renamed from: com.facebook.share.internal.d$1  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends i {
    }

    static /* synthetic */ com.facebook.internal.e g() {
        return h();
    }

    @Deprecated
    public static boolean e() {
        return false;
    }

    @Deprecated
    public static boolean f() {
        return false;
    }

    @Deprecated
    public d(Activity activity) {
        super(activity, b);
    }

    @Deprecated
    public d(n nVar) {
        super(nVar, b);
    }

    @Override // com.facebook.internal.g
    @Deprecated
    /* renamed from: a */
    public void b(LikeContent likeContent) {
    }

    @Override // com.facebook.internal.g
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.g
    protected List<com.facebook.internal.g<LikeContent, Object>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(this, null));
        arrayList.add(new b(this, null));
        return arrayList;
    }

    /* compiled from: LikeDialog.java */
    /* loaded from: classes.dex */
    private class a extends com.facebook.internal.g<LikeContent, Object>.a {
        private a() {
            super();
        }

        /* synthetic */ a(d dVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.g.a
        public boolean a(LikeContent likeContent, boolean z) {
            return false;
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(final LikeContent likeContent) {
            com.facebook.internal.a d = d.this.d();
            com.facebook.internal.f.a(d, new f.a() { // from class: com.facebook.share.internal.d.a.1
                @Override // com.facebook.internal.f.a
                public Bundle a() {
                    return d.c(likeContent);
                }

                @Override // com.facebook.internal.f.a
                public Bundle b() {
                    Log.e("LikeDialog", "Attempting to present the Like Dialog with an outdated Facebook app on the device");
                    return new Bundle();
                }
            }, d.g());
            return d;
        }
    }

    /* compiled from: LikeDialog.java */
    /* loaded from: classes.dex */
    private class b extends com.facebook.internal.g<LikeContent, Object>.a {
        private b() {
            super();
        }

        /* synthetic */ b(d dVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.facebook.internal.g.a
        public boolean a(LikeContent likeContent, boolean z) {
            return false;
        }

        @Override // com.facebook.internal.g.a
        public com.facebook.internal.a a(LikeContent likeContent) {
            com.facebook.internal.a d = d.this.d();
            com.facebook.internal.f.a(d, d.c(likeContent), d.g());
            return d;
        }
    }

    private static com.facebook.internal.e h() {
        return LikeDialogFeature.LIKE_DIALOG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle c(LikeContent likeContent) {
        Bundle bundle = new Bundle();
        bundle.putString("object_id", likeContent.a());
        bundle.putString("object_type", likeContent.b());
        return bundle;
    }
}