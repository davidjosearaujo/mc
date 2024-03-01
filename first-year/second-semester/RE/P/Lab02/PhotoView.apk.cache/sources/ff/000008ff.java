package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;

@Deprecated
/* loaded from: classes.dex */
public final class AppInviteContent implements ShareModel {
    @Deprecated
    public static final Parcelable.Creator<AppInviteContent> CREATOR = new Parcelable.Creator<AppInviteContent>() { // from class: com.facebook.share.model.AppInviteContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent createFromParcel(Parcel parcel) {
            return new AppInviteContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AppInviteContent[] newArray(int i) {
            return new AppInviteContent[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f325a;
    private final String b;
    private final String c;
    private final String d;
    private final Builder.Destination e;

    @Deprecated
    AppInviteContent(Parcel parcel) {
        this.f325a = parcel.readString();
        this.b = parcel.readString();
        this.d = parcel.readString();
        this.c = parcel.readString();
        String readString = parcel.readString();
        if (readString.length() > 0) {
            this.e = Builder.Destination.valueOf(readString);
        } else {
            this.e = Builder.Destination.FACEBOOK;
        }
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f325a);
        parcel.writeString(this.b);
        parcel.writeString(this.d);
        parcel.writeString(this.c);
        parcel.writeString(this.e.toString());
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class Builder {

        @Deprecated
        /* loaded from: classes.dex */
        public enum Destination {
            FACEBOOK("facebook"),
            MESSENGER("messenger");
            
            private final String name;

            Destination(String str) {
                this.name = str;
            }

            public boolean equalsName(String str) {
                if (str == null) {
                    return false;
                }
                return this.name.equals(str);
            }

            @Override // java.lang.Enum
            public String toString() {
                return this.name;
            }
        }
    }
}