package android.support.v4.app;

import android.app.Activity;
import android.arch.lifecycle.Lifecycle;
import android.arch.lifecycle.g;
import android.arch.lifecycle.h;
import android.arch.lifecycle.l;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.SimpleArrayMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SupportActivity extends Activity implements g {
    private SimpleArrayMap<Class<? extends ExtraData>, ExtraData> mExtraDataMap = new SimpleArrayMap<>();
    private h mLifecycleRegistry = new h(this);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class ExtraData {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void putExtraData(ExtraData extraData) {
        this.mExtraDataMap.put(extraData.getClass(), extraData);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        l.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    @CallSuper
    public void onSaveInstanceState(Bundle bundle) {
        this.mLifecycleRegistry.a(Lifecycle.State.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public <T extends ExtraData> T getExtraData(Class<T> cls) {
        return (T) this.mExtraDataMap.get(cls);
    }

    public Lifecycle getLifecycle() {
        return this.mLifecycleRegistry;
    }
}