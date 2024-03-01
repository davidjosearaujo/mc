.class public Lcom/ksjhgd/xx/a/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:[I

.field public b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field private g:Lcom/ksjhgd/xx/c/b;

.field private h:Lcom/ksjhgd/xx/a;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/ksjhgd/xx/a;Lcom/ksjhgd/xx/c/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksjhgd/xx/a/f;-><init>(Lcom/ksjhgd/xx/a;Lcom/ksjhgd/xx/c/b;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ksjhgd/xx/a;Lcom/ksjhgd/xx/c/b;Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x1001

    iput v0, p0, Lcom/ksjhgd/xx/a/f;->c:I

    const/16 v0, 0x1002

    iput v0, p0, Lcom/ksjhgd/xx/a/f;->d:I

    const/16 v0, 0x1003

    iput v0, p0, Lcom/ksjhgd/xx/a/f;->e:I

    const/16 v0, 0x1004

    iput v0, p0, Lcom/ksjhgd/xx/a/f;->f:I

    iput-object p2, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iput-object p1, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iput-boolean p3, p0, Lcom/ksjhgd/xx/a/f;->i:Z

    iget-object v0, p2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    array-length v0, v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    aput v2, v0, v2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    const/high16 v8, 0x42480000    # 50.0f

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v7, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/ksjhgd/xx/a/f;->f:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v3, v3, Lcom/ksjhgd/xx/a;->c:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v3, v3, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/a/f;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v3, v3, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v3, v3, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/a/f;->d:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iget v4, p0, Lcom/ksjhgd/xx/a/f;->d:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v4, v4, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/ksjhgd/xx/a/f;->e:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    const v4, -0xc6c6c7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/c/b;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/a/f;Lcom/ksjhgd/xx/a/i;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/i;I)V

    return-void
.end method

.method private a(Lcom/ksjhgd/xx/a/i;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    aget v1, v1, p2

    iget-object v1, p1, Lcom/ksjhgd/xx/a/i;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->a:[I

    aget v2, v2, p2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/ksjhgd/xx/a/f;->i:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/ksjhgd/xx/a/f;->b:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-le v0, v1, :cond_3

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    if-gt v1, v0, :cond_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-gt v0, v1, :cond_0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_2

    const-string v0, "title"

    const-string v1, "msg"

    const-string v2, "url"

    invoke-direct {p0, v0, v1, v2}, Lcom/ksjhgd/xx/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ksjhgd/xx/a/i;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/a/i;-><init>(Lcom/ksjhgd/xx/a/f;)V

    iget v0, p0, Lcom/ksjhgd/xx/a/f;->c:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/i;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/ksjhgd/xx/a/f;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/i;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/ksjhgd/xx/a/f;->e:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/i;->c:Landroid/widget/TextView;

    iget v0, p0, Lcom/ksjhgd/xx/a/f;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/ksjhgd/xx/a/i;->d:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/ksjhgd/xx/a/f;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/ksjhgd/xx/a/i;->d:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ksjhgd/xx/a/f;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/a/h;

    invoke-direct {v0, p0, p1, v1}, Lcom/ksjhgd/xx/a/h;-><init>(Lcom/ksjhgd/xx/a/f;ILcom/ksjhgd/xx/a/i;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/i;I)V

    move-object v0, v1

    :goto_1
    iget-object v1, v0, Lcom/ksjhgd/xx/a/i;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/ksjhgd/xx/a/i;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/a/f;->h:Lcom/ksjhgd/xx/a;

    iget-object v2, p0, Lcom/ksjhgd/xx/a/f;->g:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/a;->a(Ljava/lang/String;Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object v0, v1, Lcom/ksjhgd/xx/a/i;->d:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ksjhgd/xx/a/g;

    invoke-direct {v2, p0, p1, v1}, Lcom/ksjhgd/xx/a/g;-><init>(Lcom/ksjhgd/xx/a/f;ILcom/ksjhgd/xx/a/i;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/a/i;

    goto :goto_1
.end method
