package com.squareup.picasso;

import android.content.Context;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.s;
import java.io.InputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContentStreamRequestHandler.java */
/* loaded from: classes.dex */
public class g extends s {

    /* renamed from: a  reason: collision with root package name */
    final Context f774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context) {
        this.f774a = context;
    }

    @Override // com.squareup.picasso.s
    public boolean a(q qVar) {
        return "content".equals(qVar.d.getScheme());
    }

    @Override // com.squareup.picasso.s
    public s.a a(q qVar, int i) {
        return new s.a(b(qVar), Picasso.LoadedFrom.DISK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream b(q qVar) {
        return this.f774a.getContentResolver().openInputStream(qVar.d);
    }
}