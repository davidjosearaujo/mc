package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import java.util.Iterator;
import java.util.List;

/* compiled from: FacebookDialogBase.java */
/* loaded from: classes.dex */
public abstract class g<CONTENT, RESULT> {

    /* renamed from: a  reason: collision with root package name */
    protected static final Object f179a = new Object();
    private final Activity b;
    private final n c;
    private List<g<CONTENT, RESULT>.a> d;
    private int e;

    protected abstract List<g<CONTENT, RESULT>.a> c();

    protected abstract com.facebook.internal.a d();

    /* JADX INFO: Access modifiers changed from: protected */
    public g(Activity activity, int i) {
        ac.a(activity, "activity");
        this.b = activity;
        this.c = null;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(n nVar, int i) {
        ac.a(nVar, "fragmentWrapper");
        this.c = nVar;
        this.b = null;
        this.e = i;
        if (nVar.c() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }

    public int a() {
        return this.e;
    }

    public boolean a(CONTENT content) {
        return a((g<CONTENT, RESULT>) content, f179a);
    }

    protected boolean a(CONTENT content, Object obj) {
        boolean z = obj == f179a;
        for (g<CONTENT, RESULT>.a aVar : e()) {
            if (z || ab.a(aVar.a(), obj)) {
                if (aVar.a(content, false)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void b(CONTENT content) {
        b(content, f179a);
    }

    protected void b(CONTENT content, Object obj) {
        com.facebook.internal.a c = c(content, obj);
        if (c != null) {
            if (this.c != null) {
                f.a(c, this.c);
                return;
            } else {
                f.a(c, this.b);
                return;
            }
        }
        Log.e("FacebookDialog", "No code path should ever result in a null appCall");
        if (com.facebook.d.b()) {
            throw new IllegalStateException("No code path should ever result in a null appCall");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Activity b() {
        if (this.b != null) {
            return this.b;
        }
        if (this.c != null) {
            return this.c.c();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Intent intent, int i) {
        String str = null;
        if (this.b != null) {
            this.b.startActivityForResult(intent, i);
        } else if (this.c != null) {
            if (this.c.a() != null) {
                this.c.a().startActivityForResult(intent, i);
            } else if (this.c.b() != null) {
                this.c.b().startActivityForResult(intent, i);
            } else {
                str = "Failed to find Activity or Fragment to startActivityForResult ";
            }
        } else {
            str = "Failed to find Activity or Fragment to startActivityForResult ";
        }
        if (str != null) {
            u.a(LoggingBehavior.DEVELOPER_ERRORS, 6, getClass().getName(), str);
        }
    }

    private com.facebook.internal.a c(CONTENT content, Object obj) {
        com.facebook.internal.a aVar;
        boolean z = obj == f179a;
        Iterator<g<CONTENT, RESULT>.a> it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                aVar = null;
                break;
            }
            g<CONTENT, RESULT>.a next = it.next();
            if (z || ab.a(next.a(), obj)) {
                if (next.a(content, true)) {
                    try {
                        aVar = next.a(content);
                        break;
                    } catch (FacebookException e) {
                        aVar = d();
                        f.a(aVar, e);
                    }
                }
            }
        }
        if (aVar == null) {
            com.facebook.internal.a d = d();
            f.a(d);
            return d;
        }
        return aVar;
    }

    private List<g<CONTENT, RESULT>.a> e() {
        if (this.d == null) {
            this.d = c();
        }
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: FacebookDialogBase.java */
    /* loaded from: classes.dex */
    public abstract class a {
        public abstract com.facebook.internal.a a(CONTENT content);

        public abstract boolean a(CONTENT content, boolean z);

        /* JADX INFO: Access modifiers changed from: protected */
        public a() {
        }

        public Object a() {
            return g.f179a;
        }
    }
}