package com.mbv.a.wp.view.indicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.mbv.a.wp.R;

/* loaded from: classes.dex */
public class UnderlinePageIndicator extends View implements PageIndicator {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f733a;
    private boolean b;
    private int c;
    private int d;
    private int e;
    private ViewPager f;
    private ViewPager.OnPageChangeListener g;
    private int h;
    private int i;
    private float j;
    private int k;
    private float l;
    private int m;
    private boolean n;
    private final Runnable o;

    public UnderlinePageIndicator(Context context) {
        this(context, null);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.vpiUnderlinePageIndicatorStyle);
    }

    public UnderlinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f733a = new Paint(1);
        this.l = -1.0f;
        this.m = -1;
        this.o = new Runnable() { // from class: com.mbv.a.wp.view.indicator.UnderlinePageIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                if (UnderlinePageIndicator.this.b) {
                    int max = Math.max(UnderlinePageIndicator.this.f733a.getAlpha() - UnderlinePageIndicator.this.e, 0);
                    UnderlinePageIndicator.this.f733a.setAlpha(max);
                    UnderlinePageIndicator.this.invalidate();
                    if (max > 0) {
                        UnderlinePageIndicator.this.postDelayed(this, 30L);
                    }
                }
            }
        };
        if (!isInEditMode()) {
            Resources resources = getResources();
            boolean z = resources.getBoolean(R.bool.default_underline_indicator_fades);
            int integer = resources.getInteger(R.integer.default_underline_indicator_fade_delay);
            int integer2 = resources.getInteger(R.integer.default_underline_indicator_fade_length);
            int color = resources.getColor(R.color.default_underline_indicator_selected_color);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.UnderlinePageIndicator, i, 0);
            setFades(obtainStyledAttributes.getBoolean(3, z));
            setSelectedColor(obtainStyledAttributes.getColor(4, color));
            setFadeDelay(obtainStyledAttributes.getInteger(1, integer));
            setFadeLength(obtainStyledAttributes.getInteger(2, integer2));
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.k = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    public boolean getFades() {
        return this.b;
    }

    public void setFades(boolean z) {
        if (z != this.b) {
            this.b = z;
            if (z) {
                post(this.o);
                return;
            }
            removeCallbacks(this.o);
            this.f733a.setAlpha(255);
            invalidate();
        }
    }

    public int getFadeDelay() {
        return this.c;
    }

    public void setFadeDelay(int i) {
        this.c = i;
    }

    public int getFadeLength() {
        return this.d;
    }

    public void setFadeLength(int i) {
        this.d = i;
        this.e = 255 / (this.d / 30);
    }

    public int getSelectedColor() {
        return this.f733a.getColor();
    }

    public void setSelectedColor(int i) {
        this.f733a.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        if (this.f != null && (count = this.f.getAdapter().getCount()) != 0) {
            if (this.i >= count) {
                setCurrentItem(count - 1);
                return;
            }
            int paddingLeft = getPaddingLeft();
            float width = ((getWidth() - paddingLeft) - getPaddingRight()) / (count * 1.0f);
            float f = paddingLeft + ((this.i + this.j) * width);
            canvas.drawRect(f, getPaddingTop(), f + width, getHeight() - getPaddingBottom(), this.f733a);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        if (this.f == null || this.f.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        switch (action) {
            case 0:
                this.m = MotionEventCompat.getPointerId(motionEvent, 0);
                this.l = motionEvent.getX();
                return true;
            case 1:
            case 3:
                if (!this.n) {
                    int count = this.f.getAdapter().getCount();
                    int width = getWidth();
                    float f = width / 2.0f;
                    float f2 = width / 6.0f;
                    if (this.i > 0 && motionEvent.getX() < f - f2) {
                        if (action != 3) {
                            this.f.setCurrentItem(this.i - 1);
                            return true;
                        }
                        return true;
                    } else if (this.i < count - 1 && motionEvent.getX() > f2 + f) {
                        if (action != 3) {
                            this.f.setCurrentItem(this.i + 1);
                            return true;
                        }
                        return true;
                    }
                }
                this.n = false;
                this.m = -1;
                if (this.f.isFakeDragging()) {
                    this.f.endFakeDrag();
                    return true;
                }
                return true;
            case 2:
                float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.m));
                float f3 = x - this.l;
                if (!this.n && Math.abs(f3) > this.k) {
                    this.n = true;
                }
                if (this.n) {
                    this.l = x;
                    if (this.f.isFakeDragging() || this.f.beginFakeDrag()) {
                        this.f.fakeDragBy(f3);
                        return true;
                    }
                    return true;
                }
                return true;
            case 4:
            default:
                return true;
            case 5:
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                this.l = MotionEventCompat.getX(motionEvent, actionIndex);
                this.m = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                return true;
            case 6:
                int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.m) {
                    this.m = MotionEventCompat.getPointerId(motionEvent, actionIndex2 == 0 ? 1 : 0);
                }
                this.l = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.m));
                return true;
        }
    }

    public void setViewPager(ViewPager viewPager) {
        if (this.f != viewPager) {
            if (this.f != null) {
                this.f.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.f = viewPager;
            this.f.setOnPageChangeListener(this);
            invalidate();
            post(new Runnable() { // from class: com.mbv.a.wp.view.indicator.UnderlinePageIndicator.2
                @Override // java.lang.Runnable
                public void run() {
                    if (UnderlinePageIndicator.this.b) {
                        UnderlinePageIndicator.this.post(UnderlinePageIndicator.this.o);
                    }
                }
            });
        }
    }

    public void setCurrentItem(int i) {
        if (this.f == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        this.f.setCurrentItem(i);
        this.i = i;
        invalidate();
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        this.h = i;
        if (this.g != null) {
            this.g.onPageScrollStateChanged(i);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.i = i;
        this.j = f;
        if (this.b) {
            if (i2 > 0) {
                removeCallbacks(this.o);
                this.f733a.setAlpha(255);
            } else if (this.h != 1) {
                postDelayed(this.o, this.c);
            }
        }
        invalidate();
        if (this.g != null) {
            this.g.onPageScrolled(i, f, i2);
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        if (this.h == 0) {
            this.i = i;
            this.j = 0.0f;
            invalidate();
            this.o.run();
        }
        if (this.g != null) {
            this.g.onPageSelected(i);
        }
    }

    @Override // com.mbv.a.wp.view.indicator.PageIndicator
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.g = onPageChangeListener;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.i = savedState.f736a;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f736a = this.i;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.mbv.a.wp.view.indicator.UnderlinePageIndicator.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f736a;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f736a = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f736a);
        }
    }
}