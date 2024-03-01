package com.google.gson.internal.a;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonTreeWriter.java */
/* loaded from: classes.dex */
public final class f extends com.google.gson.stream.b {

    /* renamed from: a  reason: collision with root package name */
    private static final Writer f566a = new Writer() { // from class: com.google.gson.internal.a.f.1
        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }
    };
    private static final com.google.gson.l b = new com.google.gson.l("closed");
    private final List<com.google.gson.i> c;
    private String d;
    private com.google.gson.i e;

    public f() {
        super(f566a);
        this.c = new ArrayList();
        this.e = com.google.gson.j.f612a;
    }

    public com.google.gson.i a() {
        if (!this.c.isEmpty()) {
            throw new IllegalStateException("Expected one JSON element but was " + this.c);
        }
        return this.e;
    }

    private com.google.gson.i j() {
        return this.c.get(this.c.size() - 1);
    }

    private void a(com.google.gson.i iVar) {
        if (this.d != null) {
            if (!iVar.j() || i()) {
                ((com.google.gson.k) j()).a(this.d, iVar);
            }
            this.d = null;
        } else if (this.c.isEmpty()) {
            this.e = iVar;
        } else {
            com.google.gson.i j = j();
            if (j instanceof com.google.gson.f) {
                ((com.google.gson.f) j).a(iVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b b() {
        com.google.gson.f fVar = new com.google.gson.f();
        a(fVar);
        this.c.add(fVar);
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b c() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.gson.f) {
            this.c.remove(this.c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b d() {
        com.google.gson.k kVar = new com.google.gson.k();
        a(kVar);
        this.c.add(kVar);
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b e() {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.gson.k) {
            this.c.remove(this.c.size() - 1);
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b a(String str) {
        if (this.c.isEmpty() || this.d != null) {
            throw new IllegalStateException();
        }
        if (j() instanceof com.google.gson.k) {
            this.d = str;
            return this;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b b(String str) {
        if (str == null) {
            return f();
        }
        a(new com.google.gson.l(str));
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b f() {
        a(com.google.gson.j.f612a);
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b a(boolean z) {
        a(new com.google.gson.l(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b a(Boolean bool) {
        if (bool == null) {
            return f();
        }
        a(new com.google.gson.l(bool));
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b a(long j) {
        a(new com.google.gson.l(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.b
    public com.google.gson.stream.b a(Number number) {
        if (number == null) {
            return f();
        }
        if (!g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new com.google.gson.l(number));
        return this;
    }

    @Override // com.google.gson.stream.b, java.io.Flushable
    public void flush() {
    }

    @Override // com.google.gson.stream.b, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.c.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.c.add(b);
    }
}