package com.google.gson.internal;

import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.i;
import com.google.gson.internal.a.n;
import com.google.gson.j;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* compiled from: Streams.java */
/* loaded from: classes.dex */
public final class g {
    public static i a(com.google.gson.stream.a aVar) {
        boolean z = true;
        try {
            aVar.f();
            z = false;
            return n.X.b(aVar);
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (EOFException e2) {
            if (z) {
                return j.f612a;
            }
            throw new JsonSyntaxException(e2);
        } catch (IOException e3) {
            throw new JsonIOException(e3);
        } catch (NumberFormatException e4) {
            throw new JsonSyntaxException(e4);
        }
    }

    public static void a(i iVar, com.google.gson.stream.b bVar) {
        n.X.a(bVar, iVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Streams.java */
    /* loaded from: classes.dex */
    public static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f607a;
        private final C0037a b = new C0037a();

        a(Appendable appendable) {
            this.f607a = appendable;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            this.b.f608a = cArr;
            this.f607a.append(this.b, i, i + i2);
        }

        @Override // java.io.Writer
        public void write(int i) {
            this.f607a.append((char) i);
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        /* compiled from: Streams.java */
        /* renamed from: com.google.gson.internal.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0037a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            char[] f608a;

            C0037a() {
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f608a.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f608a[i];
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f608a, i, i2 - i);
            }
        }
    }
}