package com.squareup.picasso;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContactsPhotoRequestHandler.java */
/* loaded from: classes.dex */
public class f extends s {

    /* renamed from: a  reason: collision with root package name */
    private static final UriMatcher f773a = new UriMatcher(-1);
    private final Context b;

    static {
        f773a.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f773a.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f773a.addURI("com.android.contacts", "contacts/#/photo", 2);
        f773a.addURI("com.android.contacts", "contacts/#", 3);
        f773a.addURI("com.android.contacts", "display_photo/#", 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context) {
        this.b = context;
    }

    @Override // com.squareup.picasso.s
    public boolean a(q qVar) {
        Uri uri = qVar.d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f773a.match(qVar.d) != -1;
    }

    @Override // com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        InputStream b = b(qVar);
        if (b != null) {
            return new s.a(b, Picasso.LoadedFrom.DISK);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private InputStream b(q qVar) {
        ContentResolver contentResolver = this.b.getContentResolver();
        Uri uri = qVar.d;
        switch (f773a.match(uri)) {
            case 1:
                uri = ContactsContract.Contacts.lookupContact(contentResolver, uri);
                if (uri == null) {
                    return null;
                }
                break;
            case 2:
            case 4:
                return contentResolver.openInputStream(uri);
            case 3:
                break;
            default:
                throw new IllegalStateException("Invalid uri: " + uri);
        }
        if (Build.VERSION.SDK_INT < 14) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri);
        }
        return a.a(contentResolver, uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ContactsPhotoRequestHandler.java */
    @TargetApi(14)
    /* loaded from: classes.dex */
    public static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }
}