package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzack {

    /* loaded from: classes.dex */
    public interface a<I, O> {
        I a(O o);
    }

    /* loaded from: classes.dex */
    public static class zza<I, O> extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final p CREATOR = new p();

        /* renamed from: a  reason: collision with root package name */
        protected final int f529a;
        protected final boolean b;
        protected final int c;
        protected final boolean d;
        protected final String e;
        protected final int f;
        protected final Class<? extends zzack> g;
        protected final String h;
        private final int i;
        private zzaco j;
        private a<I, O> k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zzacf zzacfVar) {
            this.i = i;
            this.f529a = i2;
            this.b = z;
            this.c = i3;
            this.d = z2;
            this.e = str;
            this.f = i4;
            if (str2 == null) {
                this.g = null;
                this.h = null;
            } else {
                this.g = zzacr.class;
                this.h = str2;
            }
            if (zzacfVar == null) {
                this.k = null;
            } else {
                this.k = (a<I, O>) zzacfVar.b();
            }
        }

        public int a() {
            return this.i;
        }

        public I a(O o) {
            return this.k.a(o);
        }

        public void a(zzaco zzacoVar) {
            this.j = zzacoVar;
        }

        public int b() {
            return this.f529a;
        }

        public boolean c() {
            return this.b;
        }

        public int d() {
            return this.c;
        }

        public boolean e() {
            return this.d;
        }

        public String f() {
            return this.e;
        }

        public int g() {
            return this.f;
        }

        public Class<? extends zzack> h() {
            return this.g;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String i() {
            if (this.h == null) {
                return null;
            }
            return this.h;
        }

        public boolean j() {
            return this.k != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzacf k() {
            if (this.k == null) {
                return null;
            }
            return zzacf.a(this.k);
        }

        public Map<String, zza<?, ?>> l() {
            com.google.android.gms.common.internal.c.a(this.h);
            com.google.android.gms.common.internal.c.a(this.j);
            return this.j.a(this.h);
        }

        public String toString() {
            b.a a2 = com.google.android.gms.common.internal.b.a(this).a("versionCode", Integer.valueOf(this.i)).a("typeIn", Integer.valueOf(this.f529a)).a("typeInArray", Boolean.valueOf(this.b)).a("typeOut", Integer.valueOf(this.c)).a("typeOutArray", Boolean.valueOf(this.d)).a("outputFieldName", this.e).a("safeParcelFieldId", Integer.valueOf(this.f)).a("concreteTypeName", i());
            Class<? extends zzack> h = h();
            if (h != null) {
                a2.a("concreteType.class", h.getCanonicalName());
            }
            if (this.k != null) {
                a2.a("converterName", this.k.getClass().getCanonicalName());
            }
            return a2.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            p.a(this, parcel, i);
        }
    }

    private void a(StringBuilder sb, zza zzaVar, Object obj) {
        if (zzaVar.b() == 11) {
            sb.append(zzaVar.h().cast(obj).toString());
        } else if (zzaVar.b() != 7) {
            sb.append(obj);
        } else {
            sb.append("\"");
            sb.append(com.google.android.gms.common.util.j.a((String) obj));
            sb.append("\"");
        }
    }

    private void a(StringBuilder sb, zza zzaVar, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                a(sb, zzaVar, obj);
            }
        }
        sb.append("]");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <O, I> I a(zza<I, O> zzaVar, Object obj) {
        return ((zza) zzaVar).k != null ? zzaVar.a((zza<I, O>) obj) : obj;
    }

    protected abstract Object a(String str);

    public abstract Map<String, zza<?, ?>> a();

    protected boolean a(zza zzaVar) {
        return zzaVar.d() == 11 ? zzaVar.e() ? d(zzaVar.f()) : c(zzaVar.f()) : b(zzaVar.f());
    }

    protected Object b(zza zzaVar) {
        String f = zzaVar.f();
        if (zzaVar.h() != null) {
            a(zzaVar.f());
            com.google.android.gms.common.internal.c.a(true, "Concrete field shouldn't be value object: %s", zzaVar.f());
            zzaVar.e();
            try {
                char upperCase = Character.toUpperCase(f.charAt(0));
                String valueOf = String.valueOf(f.substring(1));
                return getClass().getMethod(new StringBuilder(String.valueOf(valueOf).length() + 4).append("get").append(upperCase).append(valueOf).toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return a(zzaVar.f());
    }

    protected abstract boolean b(String str);

    protected boolean c(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean d(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public String toString() {
        Map<String, zza<?, ?>> a2 = a();
        StringBuilder sb = new StringBuilder(100);
        for (String str : a2.keySet()) {
            zza<?, ?> zzaVar = a2.get(str);
            if (a(zzaVar)) {
                Object a3 = a(zzaVar, b(zzaVar));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (a3 == null) {
                    sb.append("null");
                } else {
                    switch (zzaVar.d()) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.c.a((byte[]) a3)).append("\"");
                            continue;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.c.b((byte[]) a3)).append("\"");
                            continue;
                        case 10:
                            com.google.android.gms.common.util.k.a(sb, (HashMap) a3);
                            continue;
                        default:
                            if (zzaVar.c()) {
                                a(sb, (zza) zzaVar, (ArrayList) a3);
                                break;
                            } else {
                                a(sb, zzaVar, a3);
                                continue;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }
}