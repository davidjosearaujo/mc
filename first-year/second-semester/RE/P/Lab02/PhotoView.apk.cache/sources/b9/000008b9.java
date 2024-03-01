package com.facebook.share.internal;

@Deprecated
/* loaded from: classes.dex */
public enum LikeDialogFeature implements com.facebook.internal.e {
    LIKE_DIALOG(20140701);
    
    private int minVersion;

    LikeDialogFeature(int i) {
        this.minVersion = i;
    }

    @Override // com.facebook.internal.e
    public String getAction() {
        return "com.facebook.platform.action.request.LIKE_DIALOG";
    }

    @Override // com.facebook.internal.e
    public int getMinVersion() {
        return this.minVersion;
    }
}