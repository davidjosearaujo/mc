package com.mbv.a.wp.base.activity;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.view.Window;
import android.view.WindowManager;
import com.a.a.a;
import com.mbv.a.wp.R;

/* loaded from: classes.dex */
public class BaseFragmentActivity extends FragmentActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 19) {
            a(true);
            a aVar = new a(this);
            aVar.a(true);
            aVar.a(R.color.barcolor);
        }
    }

    private void a(boolean z) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z) {
            attributes.flags |= 67108864;
        } else {
            attributes.flags &= -67108865;
        }
        window.setAttributes(attributes);
    }
}