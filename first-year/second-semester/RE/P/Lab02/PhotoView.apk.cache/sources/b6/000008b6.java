package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;

@Deprecated
/* loaded from: classes.dex */
public class LikeContent implements ShareModel {
    @Deprecated
    public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator<LikeContent>() { // from class: com.facebook.share.internal.LikeContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LikeContent[] newArray(int i) {
            return new LikeContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f288a;
    private final String b;

    private LikeContent(a aVar) {
        this.f288a = aVar.f289a;
        this.b = aVar.b;
    }

    @Deprecated
    LikeContent(Parcel parcel) {
        this.f288a = parcel.readString();
        this.b = parcel.readString();
    }

    @Deprecated
    public String a() {
        return this.f288a;
    }

    @Deprecated
    public String b() {
        return this.b;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f288a);
        parcel.writeString(this.b);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f289a;
        private String b;

        @Deprecated
        public a a(String str) {
            this.f289a = str;
            return this;
        }

        @Deprecated
        public a b(String str) {
            this.b = str;
            return this;
        }

        @Deprecated
        public LikeContent a() {
            return new LikeContent(this);
        }
    }
}