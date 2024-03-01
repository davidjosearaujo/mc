package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

/* compiled from: NativeAppCallAttachmentStore.java */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    private static final String f216a = v.class.getName();
    private static File b;

    private v() {
    }

    public static a a(UUID uuid, Bitmap bitmap) {
        ac.a(uuid, "callId");
        ac.a(bitmap, "attachmentBitmap");
        return new a(uuid, bitmap, null);
    }

    public static a a(UUID uuid, Uri uri) {
        ac.a(uuid, "callId");
        ac.a(uri, "attachmentUri");
        return new a(uuid, null, uri);
    }

    private static void a(Bitmap bitmap, File file) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            ab.a(fileOutputStream);
        }
    }

    private static void a(Uri uri, boolean z, File file) {
        InputStream openInputStream;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (!z) {
                openInputStream = new FileInputStream(uri.getPath());
            } else {
                openInputStream = com.facebook.d.f().getContentResolver().openInputStream(uri);
            }
            ab.a(openInputStream, (OutputStream) fileOutputStream);
        } finally {
            ab.a(fileOutputStream);
        }
    }

    public static void a(Collection<a> collection) {
        if (collection != null && collection.size() != 0) {
            if (b == null) {
                c();
            }
            b();
            ArrayList<File> arrayList = new ArrayList();
            try {
                for (a aVar : collection) {
                    if (aVar.g) {
                        File a2 = a(aVar.f217a, aVar.c, true);
                        arrayList.add(a2);
                        if (aVar.d != null) {
                            a(aVar.d, a2);
                        } else if (aVar.e != null) {
                            a(aVar.e, aVar.f, a2);
                        }
                    }
                }
            } catch (IOException e) {
                Log.e(f216a, "Got unexpected exception:" + e);
                for (File file : arrayList) {
                    try {
                        file.delete();
                    } catch (Exception e2) {
                    }
                }
                throw new FacebookException(e);
            }
        }
    }

    public static File a(UUID uuid, String str) {
        if (ab.a(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return a(uuid, str, false);
        } catch (IOException e) {
            throw new FileNotFoundException();
        }
    }

    static synchronized File a() {
        File file;
        synchronized (v.class) {
            if (b == null) {
                b = new File(com.facebook.d.f().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
            }
            file = b;
        }
        return file;
    }

    static File b() {
        File a2 = a();
        a2.mkdirs();
        return a2;
    }

    static File a(UUID uuid, boolean z) {
        if (b == null) {
            return null;
        }
        File file = new File(b, uuid.toString());
        if (z && !file.exists()) {
            file.mkdirs();
            return file;
        }
        return file;
    }

    static File a(UUID uuid, String str, boolean z) {
        File a2 = a(uuid, z);
        if (a2 == null) {
            return null;
        }
        try {
            return new File(a2, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static void c() {
        ab.a(a());
    }

    /* compiled from: NativeAppCallAttachmentStore.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f217a;
        private final String b;
        private final String c;
        private Bitmap d;
        private Uri e;
        private boolean f;
        private boolean g;

        private a(UUID uuid, Bitmap bitmap, Uri uri) {
            String a2;
            boolean z = true;
            this.f217a = uuid;
            this.d = bitmap;
            this.e = uri;
            if (uri != null) {
                String scheme = uri.getScheme();
                if ("content".equalsIgnoreCase(scheme)) {
                    this.f = true;
                    this.g = (uri.getAuthority() == null || uri.getAuthority().startsWith("media")) ? false : false;
                } else if ("file".equalsIgnoreCase(uri.getScheme())) {
                    this.g = true;
                } else if (!ab.b(uri)) {
                    throw new FacebookException("Unsupported scheme for media Uri : " + scheme);
                }
            } else if (bitmap != null) {
                this.g = true;
            } else {
                throw new FacebookException("Cannot share media without a bitmap or Uri set");
            }
            this.c = !this.g ? null : UUID.randomUUID().toString();
            if (!this.g) {
                a2 = this.e.toString();
            } else {
                a2 = FacebookContentProvider.a(com.facebook.d.j(), uuid, this.c);
            }
            this.b = a2;
        }

        public String a() {
            return this.b;
        }
    }
}