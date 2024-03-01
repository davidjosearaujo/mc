package com.google.android.gms.internal;

/* loaded from: classes.dex */
public final class f<L> {

    /* renamed from: a  reason: collision with root package name */
    private volatile L f512a;

    /* loaded from: classes.dex */
    public static final class a<L> {

        /* renamed from: a  reason: collision with root package name */
        private final L f513a;
        private final String b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f513a == aVar.f513a && this.b.equals(aVar.b);
            }
            return false;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f513a) * 31) + this.b.hashCode();
        }
    }

    public void a() {
        this.f512a = null;
    }
}