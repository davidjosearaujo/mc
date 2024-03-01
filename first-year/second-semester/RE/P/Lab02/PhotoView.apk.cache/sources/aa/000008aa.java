package com.facebook.share;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.d;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.g;
import com.facebook.internal.n;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.List;

/* compiled from: DeviceShareDialog.java */
/* loaded from: classes.dex */
public class a extends g<ShareContent, Object> {
    private static final int b = CallbackManagerImpl.RequestCodeOffset.DeviceShare.toRequestCode();

    public a(Activity activity) {
        super(activity, b);
    }

    public a(Fragment fragment) {
        super(new n(fragment), b);
    }

    public a(android.support.v4.app.Fragment fragment) {
        super(new n(fragment), b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.g
    public boolean a(ShareContent shareContent, Object obj) {
        return (shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareOpenGraphContent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.internal.g
    public void b(ShareContent shareContent, Object obj) {
        if (shareContent == null) {
            throw new FacebookException("Must provide non-null content to share");
        }
        if (!(shareContent instanceof ShareLinkContent) && !(shareContent instanceof ShareOpenGraphContent)) {
            throw new FacebookException(getClass().getSimpleName() + " only supports ShareLinkContent or ShareOpenGraphContent");
        }
        Intent intent = new Intent();
        intent.setClass(d.f(), FacebookActivity.class);
        intent.setAction("DeviceShareDialogFragment");
        intent.putExtra("content", shareContent);
        a(intent, a());
    }

    @Override // com.facebook.internal.g
    protected List<g<ShareContent, Object>.a> c() {
        return null;
    }

    @Override // com.facebook.internal.g
    protected com.facebook.internal.a d() {
        return null;
    }
}