package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.FacebookButtonBase;
import com.facebook.d;
import com.facebook.internal.g;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public abstract class ShareButtonBase extends FacebookButtonBase {

    /* renamed from: a  reason: collision with root package name */
    private ShareContent f374a;
    private int b;
    private boolean c;

    protected abstract g<ShareContent, Object> getDialog();

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareButtonBase(Context context, AttributeSet attributeSet, int i, String str, String str2) {
        super(context, attributeSet, i, 0, str, str2);
        this.b = 0;
        this.c = false;
        this.b = isInEditMode() ? 0 : getDefaultRequestCode();
        a(false);
    }

    public ShareContent getShareContent() {
        return this.f374a;
    }

    public void setShareContent(ShareContent shareContent) {
        this.f374a = shareContent;
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

    protected void setRequestCode(int i) {
        if (d.a(i)) {
            throw new IllegalArgumentException("Request code " + i + " cannot be within the range reserved by the Facebook SDK.");
        }
        this.b = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        setInternalOnClickListener(getShareOnClickListener());
    }

    protected boolean a() {
        return getDialog().a(getShareContent());
    }

    protected View.OnClickListener getShareOnClickListener() {
        return new View.OnClickListener() { // from class: com.facebook.share.widget.ShareButtonBase.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ShareButtonBase.this.a(view);
                ShareButtonBase.this.getDialog().b(ShareButtonBase.this.getShareContent());
            }
        };
    }

    private void a(boolean z) {
        setEnabled(z);
        this.c = false;
    }
}