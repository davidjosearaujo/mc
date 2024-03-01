package com.facebook.share.internal;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.FacebookButtonBase;
import com.facebook.common.R;

@Deprecated
/* loaded from: classes.dex */
public class LikeButton extends FacebookButtonBase {
    @Deprecated
    public LikeButton(Context context, boolean z) {
        super(context, null, 0, 0, "fb_like_button_create", "fb_like_button_did_tap");
        setSelected(z);
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public void setSelected(boolean z) {
        super.setSelected(z);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        return 0;
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_like;
    }

    private void a() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(R.string.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_icon, 0, 0, 0);
        setText(getResources().getString(R.string.com_facebook_like_button_not_liked));
    }
}