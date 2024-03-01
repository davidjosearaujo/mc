package com.facebook.share.internal;

/* loaded from: classes.dex */
public enum MessageDialogFeature implements com.facebook.internal.e {
    MESSAGE_DIALOG(20140204),
    PHOTOS(20140324),
    VIDEO(20141218),
    MESSENGER_GENERIC_TEMPLATE(20171115),
    MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE(20171115),
    MESSENGER_MEDIA_TEMPLATE(20171115);
    
    private int minVersion;

    MessageDialogFeature(int i) {
        this.minVersion = i;
    }

    @Override // com.facebook.internal.e
    public String getAction() {
        return "com.facebook.platform.action.request.MESSAGE_DIALOG";
    }

    @Override // com.facebook.internal.e
    public int getMinVersion() {
        return this.minVersion;
    }
}