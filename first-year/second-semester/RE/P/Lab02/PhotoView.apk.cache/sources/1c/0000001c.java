package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.arch.lifecycle.Lifecycle;
import android.os.Bundle;
import android.support.annotation.RestrictTo;

/* compiled from: ReportFragment.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class l extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private a f17a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReportFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    public static void a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new l(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    private void a(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void b(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.c();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.f17a);
        a(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        b(this.f17a);
        a(Lifecycle.Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        c(this.f17a);
        a(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(Lifecycle.Event.ON_STOP);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(Lifecycle.Event.ON_DESTROY);
        this.f17a = null;
    }

    private void a(Lifecycle.Event event) {
        Activity activity = getActivity();
        if (activity instanceof i) {
            ((i) activity).a().a(event);
        } else if (activity instanceof g) {
            Lifecycle lifecycle = ((g) activity).getLifecycle();
            if (lifecycle instanceof h) {
                ((h) lifecycle).a(event);
            }
        }
    }
}