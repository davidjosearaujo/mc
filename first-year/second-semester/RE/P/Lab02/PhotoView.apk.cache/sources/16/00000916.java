package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ShareMedia implements ShareModel {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f340a;

    /* loaded from: classes.dex */
    public enum Type {
        PHOTO,
        VIDEO
    }

    public abstract Type b();

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareMedia(a aVar) {
        this.f340a = new Bundle(aVar.f342a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareMedia(Parcel parcel) {
        this.f340a = parcel.readBundle();
    }

    @Deprecated
    public Bundle a() {
        return new Bundle(this.f340a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f340a);
    }

    /* loaded from: classes.dex */
    public static abstract class a<M extends ShareMedia, B extends a> {

        /* renamed from: a  reason: collision with root package name */
        private Bundle f342a = new Bundle();

        @Deprecated
        public B a(Bundle bundle) {
            this.f342a.putAll(bundle);
            return this;
        }

        public B a(M m) {
            return m == null ? this : a(m.a());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static List<ShareMedia> a(Parcel parcel) {
            Parcelable[] readParcelableArray = parcel.readParcelableArray(ShareMedia.class.getClassLoader());
            ArrayList arrayList = new ArrayList(readParcelableArray.length);
            for (Parcelable parcelable : readParcelableArray) {
                arrayList.add((ShareMedia) parcelable);
            }
            return arrayList;
        }
    }
}