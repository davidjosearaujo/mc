package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.provider.FontsContractCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.ab;
import com.facebook.internal.o;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.facebook.internal.u;
import com.facebook.login.R;

/* loaded from: classes.dex */
public class ProfilePictureView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public static final String f269a = ProfilePictureView.class.getSimpleName();
    private String b;
    private int c;
    private int d;
    private boolean e;
    private Bitmap f;
    private ImageView g;
    private int h;
    private p i;
    private a j;
    private Bitmap k;

    /* loaded from: classes.dex */
    public interface a {
        void a(FacebookException facebookException);
    }

    public ProfilePictureView(Context context) {
        super(context);
        this.c = 0;
        this.d = 0;
        this.e = true;
        this.h = -1;
        this.k = null;
        a(context);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
        this.d = 0;
        this.e = true;
        this.h = -1;
        this.k = null;
        a(context);
        a(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.d = 0;
        this.e = true;
        this.h = -1;
        this.k = null;
        a(context);
        a(attributeSet);
    }

    public final int getPresetSize() {
        return this.h;
    }

    public final void setPresetSize(int i) {
        switch (i) {
            case FontsContractCompat.FontRequestCallback.FAIL_REASON_SECURITY_VIOLATION /* -4 */:
            case -3:
            case -2:
            case -1:
                this.h = i;
                requestLayout();
                return;
            default:
                throw new IllegalArgumentException("Must use a predefined preset size");
        }
    }

    public final boolean a() {
        return this.e;
    }

    public final void setCropped(boolean z) {
        this.e = z;
        a(false);
    }

    public final String getProfileId() {
        return this.b;
    }

    public final void setProfileId(String str) {
        boolean z = false;
        if (ab.a(this.b) || !this.b.equalsIgnoreCase(str)) {
            b();
            z = true;
        }
        this.b = str;
        a(z);
    }

    public final a getOnErrorListener() {
        return this.j;
    }

    public final void setOnErrorListener(a aVar) {
        this.j = aVar;
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.k = bitmap;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z = true;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        boolean z2 = false;
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) != 1073741824 && layoutParams.height == -2) {
            size = c(true);
            i2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
            z2 = true;
        }
        if (View.MeasureSpec.getMode(i) == 1073741824 || layoutParams.width != -2) {
            z = z2;
            i3 = size2;
        } else {
            i3 = c(true);
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        if (z) {
            setMeasuredDimension(i3, size);
            measureChildren(i, i2);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a(false);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.b);
        bundle.putInt("ProfilePictureView_presetSize", this.h);
        bundle.putBoolean("ProfilePictureView_isCropped", this.e);
        bundle.putInt("ProfilePictureView_width", this.d);
        bundle.putInt("ProfilePictureView_height", this.c);
        bundle.putBoolean("ProfilePictureView_refresh", this.i != null);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
        this.b = bundle.getString("ProfilePictureView_profileId");
        this.h = bundle.getInt("ProfilePictureView_presetSize");
        this.e = bundle.getBoolean("ProfilePictureView_isCropped");
        this.d = bundle.getInt("ProfilePictureView_width");
        this.c = bundle.getInt("ProfilePictureView_height");
        a(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i = null;
    }

    private void a(Context context) {
        removeAllViews();
        this.g = new ImageView(context);
        this.g.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        addView(this.g);
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_profile_picture_view);
        setPresetSize(obtainStyledAttributes.getInt(R.styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
        this.e = obtainStyledAttributes.getBoolean(R.styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
        obtainStyledAttributes.recycle();
    }

    private void a(boolean z) {
        boolean c = c();
        if (this.b == null || this.b.length() == 0 || (this.d == 0 && this.c == 0)) {
            b();
        } else if (c || z) {
            b(true);
        }
    }

    private void b() {
        if (this.i != null) {
            o.b(this.i);
        }
        if (this.k == null) {
            setImageBitmap(BitmapFactory.decodeResource(getResources(), a() ? R.drawable.com_facebook_profile_picture_blank_square : R.drawable.com_facebook_profile_picture_blank_portrait));
            return;
        }
        c();
        setImageBitmap(Bitmap.createScaledBitmap(this.k, this.d, this.c, false));
    }

    private void setImageBitmap(Bitmap bitmap) {
        if (this.g != null && bitmap != null) {
            this.f = bitmap;
            this.g.setImageBitmap(bitmap);
        }
    }

    private void b(boolean z) {
        p a2 = new p.a(getContext(), p.a(this.b, this.d, this.c)).a(z).a(this).a(new p.b() { // from class: com.facebook.login.widget.ProfilePictureView.1
            @Override // com.facebook.internal.p.b
            public void a(q qVar) {
                ProfilePictureView.this.a(qVar);
            }
        }).a();
        if (this.i != null) {
            o.b(this.i);
        }
        this.i = a2;
        o.a(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(q qVar) {
        if (qVar.a() == this.i) {
            this.i = null;
            Bitmap c = qVar.c();
            Exception b = qVar.b();
            if (b != null) {
                a aVar = this.j;
                if (aVar != null) {
                    aVar.a(new FacebookException("Error in downloading profile picture for profileId: " + getProfileId(), b));
                } else {
                    u.a(LoggingBehavior.REQUESTS, 6, f269a, b.toString());
                }
            } else if (c != null) {
                setImageBitmap(c);
                if (qVar.d()) {
                    b(false);
                }
            }
        }
    }

    private boolean c() {
        int i;
        boolean z = false;
        int height = getHeight();
        int width = getWidth();
        if (width >= 1 && height >= 1) {
            int c = c(false);
            if (c != 0) {
                height = c;
            } else {
                c = width;
            }
            if (c <= height) {
                i = a() ? c : 0;
            } else {
                c = a() ? height : 0;
                i = height;
            }
            if (c != this.d || i != this.c) {
                z = true;
            }
            this.d = c;
            this.c = i;
        }
        return z;
    }

    private int c(boolean z) {
        int i;
        switch (this.h) {
            case FontsContractCompat.FontRequestCallback.FAIL_REASON_SECURITY_VIOLATION /* -4 */:
                i = R.dimen.com_facebook_profilepictureview_preset_size_large;
                break;
            case -3:
                i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            case -2:
                i = R.dimen.com_facebook_profilepictureview_preset_size_small;
                break;
            case -1:
                if (z) {
                    i = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                    break;
                } else {
                    return 0;
                }
            default:
                return 0;
        }
        return getResources().getDimensionPixelSize(i);
    }
}