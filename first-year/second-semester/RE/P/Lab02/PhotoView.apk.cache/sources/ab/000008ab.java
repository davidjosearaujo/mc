package com.facebook.share.internal;

/* loaded from: classes.dex */
public enum CameraEffectFeature implements com.facebook.internal.e {
    SHARE_CAMERA_EFFECT(20170417);
    
    private int minVersion;

    CameraEffectFeature(int i) {
        this.minVersion = i;
    }

    @Override // com.facebook.internal.e
    public String getAction() {
        return "com.facebook.platform.action.request.CAMERA_EFFECT";
    }

    @Override // com.facebook.internal.e
    public int getMinVersion() {
        return this.minVersion;
    }
}