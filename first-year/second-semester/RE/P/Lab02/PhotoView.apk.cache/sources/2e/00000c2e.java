package com.ogaclejapan.smarttablayout;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

/* compiled from: SmartTabIndicationInterpolator.java */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f741a = new b();
    public static final a b = new C0043a();

    public abstract float a(float f);

    public abstract float b(float f);

    public static a a(int i) {
        switch (i) {
            case 0:
                return f741a;
            case 1:
                return b;
            default:
                throw new IllegalArgumentException("Unknown id: " + i);
        }
    }

    public float c(float f) {
        return 1.0f;
    }

    /* compiled from: SmartTabIndicationInterpolator.java */
    /* loaded from: classes.dex */
    public static class b extends a {
        private final Interpolator c;
        private final Interpolator d;

        public b() {
            this(3.0f);
        }

        public b(float f) {
            this.c = new AccelerateInterpolator(f);
            this.d = new DecelerateInterpolator(f);
        }

        @Override // com.ogaclejapan.smarttablayout.a
        public float a(float f) {
            return this.c.getInterpolation(f);
        }

        @Override // com.ogaclejapan.smarttablayout.a
        public float b(float f) {
            return this.d.getInterpolation(f);
        }

        @Override // com.ogaclejapan.smarttablayout.a
        public float c(float f) {
            return 1.0f / ((1.0f - a(f)) + b(f));
        }
    }

    /* compiled from: SmartTabIndicationInterpolator.java */
    /* renamed from: com.ogaclejapan.smarttablayout.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0043a extends a {
        @Override // com.ogaclejapan.smarttablayout.a
        public float a(float f) {
            return f;
        }

        @Override // com.ogaclejapan.smarttablayout.a
        public float b(float f) {
            return f;
        }
    }
}