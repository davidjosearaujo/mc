package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SharePhoto[] newArray(int i) {
            return new SharePhoto[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f356a;
    private final Uri b;
    private final boolean c;
    private final String d;

    private SharePhoto(a aVar) {
        super(aVar);
        this.f356a = aVar.f357a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
    }

    SharePhoto(Parcel parcel) {
        super(parcel);
        this.f356a = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.c = parcel.readByte() != 0;
        this.d = parcel.readString();
    }

    @Nullable
    public Bitmap c() {
        return this.f356a;
    }

    @Nullable
    public Uri d() {
        return this.b;
    }

    public boolean e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f356a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeByte((byte) (this.c ? 1 : 0));
        parcel.writeString(this.d);
    }

    @Override // com.facebook.share.model.ShareMedia
    public ShareMedia.Type b() {
        return ShareMedia.Type.PHOTO;
    }

    /* loaded from: classes.dex */
    public static final class a extends ShareMedia.a<SharePhoto, a> {

        /* renamed from: a  reason: collision with root package name */
        private Bitmap f357a;
        private Uri b;
        private boolean c;
        private String d;

        public a a(@Nullable Bitmap bitmap) {
            this.f357a = bitmap;
            return this;
        }

        public a a(@Nullable Uri uri) {
            this.b = uri;
            return this;
        }

        public a a(boolean z) {
            this.c = z;
            return this;
        }

        public a a(@Nullable String str) {
            this.d = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Uri a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Bitmap b() {
            return this.f357a;
        }

        public SharePhoto c() {
            return new SharePhoto(this);
        }

        @Override // com.facebook.share.model.ShareMedia.a
        public a a(SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return ((a) super.a((a) sharePhoto)).a(sharePhoto.c()).a(sharePhoto.d()).a(sharePhoto.e()).a(sharePhoto.f());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b(Parcel parcel) {
            return a((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(Parcel parcel, int i, List<SharePhoto> list) {
            ShareMedia[] shareMediaArr = new ShareMedia[list.size()];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < list.size()) {
                    shareMediaArr[i3] = list.get(i3);
                    i2 = i3 + 1;
                } else {
                    parcel.writeParcelableArray(shareMediaArr, i);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static List<SharePhoto> c(Parcel parcel) {
            List<ShareMedia> a2 = a(parcel);
            ArrayList arrayList = new ArrayList();
            for (ShareMedia shareMedia : a2) {
                if (shareMedia instanceof SharePhoto) {
                    arrayList.add((SharePhoto) shareMedia);
                }
            }
            return arrayList;
        }
    }
}