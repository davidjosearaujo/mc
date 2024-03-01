package com.facebook.share.internal;

/* loaded from: classes.dex */
public enum OpenGraphActionDialogFeature implements com.facebook.internal.e {
    OG_ACTION_DIALOG(20130618);
    
    private int minVersion;

    OpenGraphActionDialogFeature(int i) {
        this.minVersion = i;
    }

    @Override // com.facebook.internal.e
    public String getAction() {
        return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    }

    @Override // com.facebook.internal.e
    public int getMinVersion() {
        return this.minVersion;
    }
}