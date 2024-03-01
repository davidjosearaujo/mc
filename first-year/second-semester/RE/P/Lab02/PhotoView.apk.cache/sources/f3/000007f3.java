package com.facebook.internal;

import com.facebook.LoggingBehavior;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: FileLruCache.java */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final String f191a = m.class.getSimpleName();
    private static final AtomicLong b = new AtomicLong();
    private final String c;
    private final d d;
    private final File e;
    private boolean f;
    private boolean g;
    private AtomicLong i = new AtomicLong(0);
    private final Object h = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public interface f {
        void a();
    }

    public m(String str, d dVar) {
        this.c = str;
        this.d = dVar;
        this.e = new File(com.facebook.d.n(), str);
        if (this.e.mkdirs() || this.e.isDirectory()) {
            a.a(this.e);
        }
    }

    public InputStream a(String str) {
        return a(str, (String) null);
    }

    public InputStream a(String str, String str2) {
        File file = new File(this.e, ab.b(str));
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 8192);
            try {
                JSONObject a2 = g.a(bufferedInputStream);
                if (a2 == null) {
                    return null;
                }
                String optString = a2.optString("key");
                if (optString == null || !optString.equals(str)) {
                    return null;
                }
                String optString2 = a2.optString("tag", null);
                if ((str2 != null || optString2 == null) && (str2 == null || str2.equals(optString2))) {
                    long time = new Date().getTime();
                    u.a(LoggingBehavior.CACHE, f191a, "Setting lastModified to " + Long.valueOf(time) + " for " + file.getName());
                    file.setLastModified(time);
                    return bufferedInputStream;
                }
                return null;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e2) {
            return null;
        }
    }

    public OutputStream b(String str) {
        return b(str, null);
    }

    public OutputStream b(final String str, String str2) {
        final File b2 = a.b(this.e);
        b2.delete();
        if (!b2.createNewFile()) {
            throw new IOException("Could not create file at " + b2.getAbsolutePath());
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(b2);
            final long currentTimeMillis = System.currentTimeMillis();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new b(fileOutputStream, new f() { // from class: com.facebook.internal.m.1
                @Override // com.facebook.internal.m.f
                public void a() {
                    if (currentTimeMillis >= m.this.i.get()) {
                        m.this.a(str, b2);
                    } else {
                        b2.delete();
                    }
                }
            }), 8192);
            try {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", str);
                    if (!ab.a(str2)) {
                        jSONObject.put("tag", str2);
                    }
                    g.a(bufferedOutputStream, jSONObject);
                    return bufferedOutputStream;
                } catch (Throwable th) {
                    bufferedOutputStream.close();
                    throw th;
                }
            } catch (JSONException e2) {
                u.a(LoggingBehavior.CACHE, 5, f191a, "Error creating JSON header for cache file: " + e2);
                throw new IOException(e2.getMessage());
            }
        } catch (FileNotFoundException e3) {
            u.a(LoggingBehavior.CACHE, 5, f191a, "Error creating buffer output stream: " + e3);
            throw new IOException(e3.getMessage());
        }
    }

    public void a() {
        final File[] listFiles = this.e.listFiles(a.a());
        this.i.set(System.currentTimeMillis());
        if (listFiles != null) {
            com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.internal.m.2
                @Override // java.lang.Runnable
                public void run() {
                    for (File file : listFiles) {
                        file.delete();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, File file) {
        if (!file.renameTo(new File(this.e, ab.b(str)))) {
            file.delete();
        }
        c();
    }

    public InputStream a(String str, InputStream inputStream) {
        return new c(inputStream, b(str));
    }

    public String toString() {
        return "{FileLruCache: tag:" + this.c + " file:" + this.e.getName() + "}";
    }

    private void c() {
        synchronized (this.h) {
            if (!this.f) {
                this.f = true;
                com.facebook.d.d().execute(new Runnable() { // from class: com.facebook.internal.m.3
                    @Override // java.lang.Runnable
                    public void run() {
                        m.this.d();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        synchronized (this.h) {
            this.f = false;
            this.g = true;
        }
        try {
            u.a(LoggingBehavior.CACHE, f191a, "trim started");
            PriorityQueue priorityQueue = new PriorityQueue();
            long j = 0;
            long j2 = 0;
            File[] listFiles = this.e.listFiles(a.a());
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (i < length) {
                    File file = listFiles[i];
                    e eVar = new e(file);
                    priorityQueue.add(eVar);
                    u.a(LoggingBehavior.CACHE, f191a, "  trim considering time=" + Long.valueOf(eVar.b()) + " name=" + eVar.a().getName());
                    long length2 = file.length() + j;
                    i++;
                    j2 = 1 + j2;
                    j = length2;
                }
            }
            long j3 = j;
            while (true) {
                long j4 = j2;
                if (j3 > this.d.a() || j4 > this.d.b()) {
                    File a2 = ((e) priorityQueue.remove()).a();
                    u.a(LoggingBehavior.CACHE, f191a, "  trim removing " + a2.getName());
                    j3 -= a2.length();
                    j2 = j4 - 1;
                    a2.delete();
                } else {
                    synchronized (this.h) {
                        this.g = false;
                        this.h.notifyAll();
                    }
                    return;
                }
            }
        } catch (Throwable th) {
            synchronized (this.h) {
                this.g = false;
                this.h.notifyAll();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final FilenameFilter f195a = new FilenameFilter() { // from class: com.facebook.internal.m.a.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.startsWith("buffer");
            }
        };
        private static final FilenameFilter b = new FilenameFilter() { // from class: com.facebook.internal.m.a.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.startsWith("buffer");
            }
        };

        static void a(File file) {
            File[] listFiles = file.listFiles(b());
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    file2.delete();
                }
            }
        }

        static FilenameFilter a() {
            return f195a;
        }

        static FilenameFilter b() {
            return b;
        }

        static File b(File file) {
            return new File(file, "buffer" + Long.valueOf(m.b.incrementAndGet()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public static final class g {
        static void a(OutputStream outputStream, JSONObject jSONObject) {
            byte[] bytes = jSONObject.toString().getBytes();
            outputStream.write(0);
            outputStream.write((bytes.length >> 16) & 255);
            outputStream.write((bytes.length >> 8) & 255);
            outputStream.write((bytes.length >> 0) & 255);
            outputStream.write(bytes);
        }

        static JSONObject a(InputStream inputStream) {
            JSONObject jSONObject;
            int i = 0;
            if (inputStream.read() != 0) {
                return null;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < 3; i3++) {
                int read = inputStream.read();
                if (read == -1) {
                    u.a(LoggingBehavior.CACHE, m.f191a, "readHeader: stream.read returned -1 while reading header size");
                    return null;
                }
                i2 = (i2 << 8) + (read & 255);
            }
            byte[] bArr = new byte[i2];
            while (i < bArr.length) {
                int read2 = inputStream.read(bArr, i, bArr.length - i);
                if (read2 < 1) {
                    u.a(LoggingBehavior.CACHE, m.f191a, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + bArr.length);
                    return null;
                }
                i += read2;
            }
            try {
                Object nextValue = new JSONTokener(new String(bArr)).nextValue();
                if (!(nextValue instanceof JSONObject)) {
                    u.a(LoggingBehavior.CACHE, m.f191a, "readHeader: expected JSONObject, got " + nextValue.getClass().getCanonicalName());
                    jSONObject = null;
                } else {
                    jSONObject = (JSONObject) nextValue;
                }
                return jSONObject;
            } catch (JSONException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public static class b extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        final OutputStream f196a;
        final f b;

        b(OutputStream outputStream, f fVar) {
            this.f196a = outputStream;
            this.b = fVar;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.f196a.close();
            } finally {
                this.b.a();
            }
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            this.f196a.flush();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.f196a.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            this.f196a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.f196a.write(i);
        }
    }

    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    private static final class c extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        final InputStream f197a;
        final OutputStream b;

        c(InputStream inputStream, OutputStream outputStream) {
            this.f197a = inputStream;
            this.b = outputStream;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f197a.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            try {
                this.f197a.close();
            } finally {
                this.b.close();
            }
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) {
            int read = this.f197a.read(bArr);
            if (read > 0) {
                this.b.write(bArr, 0, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read() {
            int read = this.f197a.read();
            if (read >= 0) {
                this.b.write(read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = this.f197a.read(bArr, i, i2);
            if (read > 0) {
                this.b.write(bArr, i, read);
            }
            return read;
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            int read;
            byte[] bArr = new byte[1024];
            long j2 = 0;
            while (j2 < j && (read = read(bArr, 0, (int) Math.min(j - j2, bArr.length))) >= 0) {
                j2 += read;
            }
            return j2;
        }
    }

    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public static final class d {
        private int b = 1024;

        /* renamed from: a  reason: collision with root package name */
        private int f198a = 1048576;

        int a() {
            return this.f198a;
        }

        int b() {
            return this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLruCache.java */
    /* loaded from: classes.dex */
    public static final class e implements Comparable<e> {

        /* renamed from: a  reason: collision with root package name */
        private final File f199a;
        private final long b;

        e(File file) {
            this.f199a = file;
            this.b = file.lastModified();
        }

        File a() {
            return this.f199a;
        }

        long b() {
            return this.b;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(e eVar) {
            if (b() < eVar.b()) {
                return -1;
            }
            if (b() > eVar.b()) {
                return 1;
            }
            return a().compareTo(eVar.a());
        }

        public boolean equals(Object obj) {
            return (obj instanceof e) && compareTo((e) obj) == 0;
        }

        public int hashCode() {
            return ((this.f199a.hashCode() + 1073) * 37) + ((int) (this.b % 2147483647L));
        }
    }
}