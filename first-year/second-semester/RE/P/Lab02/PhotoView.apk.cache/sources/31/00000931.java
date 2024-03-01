package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.ShareOpenGraphValueContainer.a;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends a> implements ShareModel {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f354a;

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareOpenGraphValueContainer(a<P, E> aVar) {
        this.f354a = (Bundle) ((a) aVar).f355a.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareOpenGraphValueContainer(Parcel parcel) {
        this.f354a = parcel.readBundle(a.class.getClassLoader());
    }

    @Nullable
    public Object a(String str) {
        return this.f354a.get(str);
    }

    @Nullable
    public String b(String str) {
        return this.f354a.getString(str);
    }

    public Bundle b() {
        return (Bundle) this.f354a.clone();
    }

    public Set<String> c() {
        return this.f354a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f354a);
    }

    /* loaded from: classes.dex */
    public static abstract class a<P extends ShareOpenGraphValueContainer, E extends a> {

        /* renamed from: a  reason: collision with root package name */
        private Bundle f355a = new Bundle();

        public E a(String str, @Nullable String str2) {
            this.f355a.putString(str, str2);
            return this;
        }

        public E a(P p) {
            if (p != null) {
                this.f355a.putAll(p.b());
            }
            return this;
        }
    }
}