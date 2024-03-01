package com.ogaclejapan.smarttablayout.utils;

import android.content.Context;
import com.ogaclejapan.smarttablayout.utils.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class PagerItems<T extends a> extends ArrayList<T> {
    private final Context context;

    /* JADX INFO: Access modifiers changed from: protected */
    public PagerItems(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }
}