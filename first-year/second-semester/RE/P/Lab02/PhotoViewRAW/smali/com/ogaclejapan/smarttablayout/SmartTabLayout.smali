.class public Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SmartTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$f;
    }
.end annotation


# instance fields
.field protected final a:Lcom/ogaclejapan/smarttablayout/b;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/content/res/ColorStateList;

.field private f:F

.field private g:I

.field private h:I

.field private i:Landroid/support/v4/view/ViewPager;

.field private j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;

.field private l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;

.field private m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;

.field private n:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 98
    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 104
    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    .line 106
    const/4 v5, -0x1

    .line 107
    const/4 v6, 0x1

    .line 109
    const/4 v7, 0x2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 111
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    float-to-int v8, v3

    .line 112
    const/4 v3, 0x0

    mul-float/2addr v3, v4

    float-to-int v9, v3

    .line 113
    const/4 v10, 0x0

    .line 114
    const/4 v11, -0x1

    .line 115
    const/4 v12, -0x1

    .line 116
    const/4 v13, 0x1

    .line 117
    const/high16 v3, 0x41c00000    # 24.0f

    mul-float/2addr v3, v4

    float-to-int v4, v3

    .line 119
    sget-object v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 121
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabBackground:I

    invoke-virtual {v14, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 123
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextAllCaps:I

    invoke-virtual {v14, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 125
    sget v3, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextColor:I

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 127
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextSize:I

    invoke-virtual {v14, v15, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 129
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextHorizontalPadding:I

    invoke-virtual {v14, v15, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 131
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextMinWidth:I

    invoke-virtual {v14, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 133
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextLayoutId:I

    invoke-virtual {v14, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 135
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextViewId:I

    invoke-virtual {v14, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 137
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_distributeEvenly:I

    invoke-virtual {v14, v15, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 139
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_clickable:I

    invoke-virtual {v14, v15, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 141
    sget v15, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_titleOffset:I

    invoke-virtual {v14, v15, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    .line 143
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    move-object/from16 v0, p0

    iput v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    .line 146
    move-object/from16 v0, p0

    iput v5, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    .line 147
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->d:Z

    .line 148
    if-eqz v3, :cond_1

    .line 150
    :goto_0
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    .line 151
    move-object/from16 v0, p0

    iput v7, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->f:F

    .line 152
    move-object/from16 v0, p0

    iput v8, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    .line 153
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    .line 154
    if-eqz v13, :cond_2

    new-instance v3, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    :goto_1
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;

    .line 155
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    .line 157
    const/4 v3, -0x1

    if-eq v11, v3, :cond_0

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(II)V

    .line 161
    :cond_0
    new-instance v3, Lcom/ogaclejapan/smarttablayout/b;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/ogaclejapan/smarttablayout/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    .line 163
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/b;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "\'distributeEvenly\' and \'indicatorAlwaysInCenter\' both use does not support"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_1
    const/high16 v3, -0x4000000

    .line 150
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/b;->a()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setFillViewport(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->addView(Landroid/view/View;II)V

    .line 173
    return-void

    .line 169
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    move v1, v2

    .line 386
    :goto_0
    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {v4, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    move-object v3, v0

    .line 392
    :goto_1
    if-nez v3, :cond_1

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tabView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;

    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    .line 390
    invoke-interface {v0, v3, v1, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;->a(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 396
    :cond_1
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 399
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->m:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$a;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/b;->addView(Landroid/view/View;)V

    .line 408
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v1, v0, :cond_4

    .line 409
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 386
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 413
    :cond_5
    return-void
.end method

.method private a(IF)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v0

    .line 417
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/c;->l(Landroid/view/View;)Z

    move-result v3

    .line 422
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 423
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->k(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 426
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    cmpg-float v1, v6, p2

    if-gez v1, :cond_2

    cmpg-float v1, p2, v7

    if-gez v1, :cond_2

    .line 429
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 430
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 431
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    .line 432
    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 437
    if-eqz v3, :cond_3

    .line 438
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    .line 439
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 440
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->e(Landroid/view/View;)I

    move-result v5

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    sub-int v0, v4, v0

    .line 441
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 449
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    .line 444
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 445
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->d(Landroid/view/View;)I

    move-result v5

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    add-int/2addr v0, v4

    .line 446
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 455
    :cond_4
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_7

    .line 457
    cmpg-float v1, v6, p2

    if-gez v1, :cond_5

    cmpg-float v1, p2, v7

    if-gez v1, :cond_5

    .line 458
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 459
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 460
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->b(Landroid/view/View;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    .line 461
    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 464
    :cond_5
    if-eqz v3, :cond_6

    .line 465
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->c(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    .line 466
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/c;->f(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    .line 482
    :goto_2
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->d(Landroid/view/View;)I

    move-result v5

    .line 483
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v4

    .line 484
    if-eqz v3, :cond_d

    .line 485
    add-int v3, v5, v4

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/c;->h(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 490
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto/16 :goto_0

    .line 468
    :cond_6
    invoke-static {v4}, Lcom/ogaclejapan/smarttablayout/c;->c(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    .line 469
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/c;->f(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 474
    :cond_7
    if-eqz v3, :cond_a

    .line 475
    if-gtz p1, :cond_8

    cmpl-float v1, p2, v6

    if-lez v1, :cond_9

    :cond_8
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_2

    .line 477
    :cond_a
    if-gtz p1, :cond_b

    cmpl-float v1, p2, v6

    if-lez v1, :cond_c

    :cond_b
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->b:I

    neg-int v1, v1

    goto :goto_2

    :cond_c
    move v1, v2

    goto :goto_2

    .line 487
    :cond_d
    sub-int v3, v5, v4

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(IF)V

    return-void
.end method

.method static synthetic b(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->n:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;

    return-object v0
.end method

.method static synthetic c(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 347
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 348
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->f:F

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 353
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    if-eq v1, v3, :cond_3

    .line 357
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 367
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 369
    iget-boolean v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 372
    :cond_1
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->g:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    if-lez v1, :cond_2

    .line 377
    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 380
    :cond_2
    return-object v0

    .line 358
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 361
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 362
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 364
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$e;-><init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;

    .line 306
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(IF)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 178
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;

    invoke-interface {v0, p1, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;->a(II)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 186
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, v4}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v2}, Lcom/ogaclejapan/smarttablayout/b;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->a(Landroid/view/View;)I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/c;->i(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    .line 190
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->a(Landroid/view/View;)I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/c;->j(Landroid/view/View;)I

    move-result v1

    sub-int v1, v2, v1

    .line 191
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    iget-object v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v3}, Lcom/ogaclejapan/smarttablayout/b;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ogaclejapan/smarttablayout/b;->setMinimumWidth(I)V

    .line 192
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v0, v2, v1, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setClipToPadding(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$f;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/b;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$f;)V

    .line 224
    return-void
.end method

.method public setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->l:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$g;

    .line 315
    return-void
.end method

.method public setDefaultTabTextColor(I)V
    .locals 1

    .prologue
    .line 233
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    .line 234
    return-void
.end method

.method public setDefaultTabTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->e:Landroid/content/res/ColorStateList;

    .line 244
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->o:Z

    .line 251
    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/b;->b([I)V

    .line 267
    return-void
.end method

.method public setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/a;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/b;->a(Lcom/ogaclejapan/smarttablayout/a;)V

    .line 213
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->j:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 278
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->k:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$c;

    .line 287
    return-void
.end method

.method public setOnTabClickListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->n:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$d;

    .line 296
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/b;->a([I)V

    .line 259
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a:Lcom/ogaclejapan/smarttablayout/b;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/b;->removeAllViews()V

    .line 324
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->i:Landroid/support/v4/view/ViewPager;

    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$b;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 327
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a()V

    .line 329
    :cond_0
    return-void
.end method
