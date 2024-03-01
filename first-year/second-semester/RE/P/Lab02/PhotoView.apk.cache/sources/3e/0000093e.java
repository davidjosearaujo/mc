package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.FacebookButtonBase;
import com.facebook.d;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.share.R;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public final class DeviceShareButton extends FacebookButtonBase {

    /* renamed from: a  reason: collision with root package name */
    private ShareContent f363a;
    private int b;
    private boolean c;
    private com.facebook.share.a d;

    public DeviceShareButton(Context context) {
        this(context, null, 0);
    }

    public DeviceShareButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private DeviceShareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, "fb_device_share_button_create", "fb_device_share_button_did_tap");
        this.b = 0;
        this.c = false;
        this.d = null;
        this.b = isInEditMode() ? 0 : getDefaultRequestCode();
        a(false);
    }

    public ShareContent getShareContent() {
        return this.f363a;
    }

    public void setShareContent(ShareContent shareContent) {
        this.f363a = shareContent;
        if (!this.c) {
            a(a());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.c = true;
    }

    @Override // com.facebook.FacebookButtonBase
    public int getRequestCode() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        setInternalOnClickListener(getShareOnClickListener());
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_share;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    }

    protected View.OnClickListener getShareOnClickListener() {
        return new View.OnClickListener() { // from class: com.facebook.share.widget.DeviceShareButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceShareButton.this.a(view);
                DeviceShareButton.this.getDialog().b(DeviceShareButton.this.getShareContent());
            }
        };
    }

    private void a(boolean z) {
        setEnabled(z);
        this.c = false;
    }

    private void setRequestCode(int i) {
        if (d.a(i)) {
            throw new IllegalArgumentException("Request code " + i + " cannot be within the range reserved by the Facebook SDK.");
        }
        this.b = i;
    }

    private boolean a() {
        return new com.facebook.share.a(getActivity()).a(getShareContent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.share.a getDialog() {
        if (this.d != null) {
            return this.d;
        }
        if (getFragment() != null) {
            this.d = new com.facebook.share.a(getFragment());
        } else if (getNativeFragment() != null) {
            this.d = new com.facebook.share.a(getNativeFragment());
        } else {
            this.d = new com.facebook.share.a(getActivity());
        }
        return this.d;
    }
}