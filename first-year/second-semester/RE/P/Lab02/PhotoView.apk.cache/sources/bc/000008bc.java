package com.facebook.share.internal;

/* loaded from: classes.dex */
public enum OpenGraphMessageDialogFeature implements com.facebook.internal.e {
    OG_MESSAGE_DIALOG(20140204);
    
    private int minVersion;

    OpenGraphMessageDialogFeature(int i) {
        this.minVersion = i;
    }

    @Override // com.facebook.internal.e
    public String getAction() {
        return "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    }

    @Override // com.facebook.internal.e
    public int getMinVersion() {
        return this.minVersion;
    }
}