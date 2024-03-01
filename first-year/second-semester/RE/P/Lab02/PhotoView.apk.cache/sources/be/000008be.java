package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;

/* loaded from: classes.dex */
public class ShareFeedContent extends ShareContent<ShareFeedContent, Object> {
    public static final Parcelable.Creator<ShareFeedContent> CREATOR = new Parcelable.Creator<ShareFeedContent>() { // from class: com.facebook.share.internal.ShareFeedContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent createFromParcel(Parcel parcel) {
            return new ShareFeedContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ShareFeedContent[] newArray(int i) {
            return new ShareFeedContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f295a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;

    ShareFeedContent(Parcel parcel) {
        super(parcel);
        this.f295a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
    }

    public String a() {
        return this.f295a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f295a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
    }
}