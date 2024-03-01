package com.facebook.share.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.x;

/* compiled from: LikeStatusClient.java */
@Deprecated
/* loaded from: classes.dex */
final class e extends x {

    /* renamed from: a  reason: collision with root package name */
    private String f314a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context, String str, String str2) {
        super(context, 65542, 65543, 20141001, str);
        this.f314a = str2;
    }

    @Override // com.facebook.internal.x
    protected void a(Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.OBJECT_ID", this.f314a);
    }
}