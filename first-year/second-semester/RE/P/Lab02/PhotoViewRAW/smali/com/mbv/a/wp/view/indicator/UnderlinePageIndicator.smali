.class public Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;
.super Landroid/view/View;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Lcom/mbv/a/wp/view/indicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:F

.field private m:I

.field private n:Z

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f020163

    invoke-direct {p0, p1, p2, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    .line 59
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    .line 63
    new-instance v0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;

    invoke-direct {v0, p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;-><init>(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)V

    iput-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 92
    const v2, 0x7f080007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 93
    const v3, 0x7f080008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 94
    const v4, 0x7f040053

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 97
    sget-object v4, Lcom/mbv/a/wp/R$styleable;->UnderlinePageIndicator:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 99
    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setFades(Z)V

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v4, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setSelectedColor(I)V

    .line 101
    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setFadeDelay(I)V

    .line 102
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setFadeLength(I)V

    .line 104
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_1
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic c(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->e:I

    return v0
.end method

.method static synthetic d(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public getFadeDelay()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->c:I

    return v0
.end method

.method public getFadeLength()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->d:I

    return v0
.end method

.method public getFades()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b:Z

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 170
    iget v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    if-lt v1, v0, :cond_2

    .line 171
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getPaddingLeft()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v0, v2, v0

    .line 177
    int-to-float v1, v1

    iget v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->j:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 178
    add-float v3, v1, v0

    .line 179
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 180
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    .line 181
    iget-object v5, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 314
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->h:I

    .line 316
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 323
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    .line 324
    iput p2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->j:F

    .line 325
    iget-boolean v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 326
    if-lez p3, :cond_2

    .line 327
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 335
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 338
    :cond_1
    return-void

    .line 329
    :cond_2
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    iget v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->c:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->h:I

    if-nez v0, :cond_0

    .line 343
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->j:F

    .line 345
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 346
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 351
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 360
    check-cast p1, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    .line 361
    invoke-virtual {p1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 362
    iget v0, p1, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    .line 363
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->requestLayout()V

    .line 364
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 370
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    iput v0, v1, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;->a:I

    .line 371
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 185
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v1, v0

    .line 189
    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 193
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    goto :goto_0

    .line 200
    :pswitch_2
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 201
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 202
    iget v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    sub-float v2, v0, v2

    .line 204
    iget-boolean v3, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->n:Z

    if-nez v3, :cond_4

    .line 205
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 206
    iput-boolean v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->n:Z

    .line 210
    :cond_4
    iget-boolean v3, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->n:Z

    if-eqz v3, :cond_0

    .line 211
    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    .line 212
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-boolean v3, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->n:Z

    if-nez v3, :cond_7

    .line 223
    iget-object v3, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->getWidth()I

    move-result v4

    .line 225
    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 226
    int-to-float v4, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    .line 228
    iget v6, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    if-lez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v7, v5, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 229
    if-eq v2, v8, :cond_0

    .line 230
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 233
    :cond_6
    iget v6, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 234
    if-eq v2, v8, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 241
    :cond_7
    iput-boolean v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->n:Z

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    .line 243
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 248
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    .line 249
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    goto/16 :goto_0

    .line 254
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 255
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 256
    iget v4, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    if-ne v3, v4, :cond_9

    .line 257
    if-nez v2, :cond_8

    move v0, v1

    .line 258
    :cond_8
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    .line 260
    :cond_9
    iget v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->m:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->l:F

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 303
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->i:I

    .line 304
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 305
    return-void
.end method

.method public setFadeDelay(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->c:I

    .line 138
    return-void
.end method

.method public setFadeLength(I)V
    .locals 2

    .prologue
    .line 145
    iput p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->d:I

    .line 146
    const/16 v0, 0xff

    iget v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->d:I

    div-int/lit8 v1, v1, 0x1e

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->e:I

    .line 147
    return-void
.end method

.method public setFades(Z)V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b:Z

    if-eq p1, v0, :cond_0

    .line 121
    iput-boolean p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b:Z

    .line 122
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->g:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 356
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 156
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 276
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    iput-object p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    .line 280
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 281
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 282
    new-instance v0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;

    invoke-direct {v0, p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;-><init>(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)V

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
