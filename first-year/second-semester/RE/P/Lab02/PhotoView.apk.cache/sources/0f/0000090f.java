package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.a;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ShareContent<P extends ShareContent, E extends a> implements ShareModel {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f335a;
    private final List<String> b;
    private final String c;
    private final String d;
    private final String e;
    private final ShareHashtag f;

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(a aVar) {
        this.f335a = aVar.f336a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(Parcel parcel) {
        this.f335a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.b = a(parcel);
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = new ShareHashtag.a().a(parcel).a();
    }

    @Nullable
    public Uri h() {
        return this.f335a;
    }

    @Nullable
    public List<String> i() {
        return this.b;
    }

    @Nullable
    public String j() {
        return this.c;
    }

    @Nullable
    public String k() {
        return this.d;
    }

    @Nullable
    public String l() {
        return this.e;
    }

    @Nullable
    public ShareHashtag m() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f335a, 0);
        parcel.writeStringList(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeParcelable(this.f, 0);
    }

    private List<String> a(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes.dex */
    public static abstract class a<P extends ShareContent, E extends a> {

        /* renamed from: a  reason: collision with root package name */
        private Uri f336a;
        private List<String> b;
        private String c;
        private String d;
        private String e;
        private ShareHashtag f;

        public E a(@Nullable Uri uri) {
            this.f336a = uri;
            return this;
        }

        public E a(@Nullable List<String> list) {
            this.b = list == null ? null : Collections.unmodifiableList(list);
            return this;
        }

        public E a(@Nullable String str) {
            this.c = str;
            return this;
        }

        public E b(@Nullable String str) {
            this.d = str;
            return this;
        }

        public E c(@Nullable String str) {
            this.e = str;
            return this;
        }

        public E a(P p) {
            if (p == null) {
                return this;
            }
            return (E) a(p.h()).a(p.i()).a(p.j()).b(p.k()).c(p.l());
        }
    }
}