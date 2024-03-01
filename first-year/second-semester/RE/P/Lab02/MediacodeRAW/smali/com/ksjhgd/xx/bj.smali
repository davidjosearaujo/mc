.class public Lcom/ksjhgd/xx/bj;
.super Lcom/ksjhgd/xx/a;


# instance fields
.field private A:Landroid/widget/BaseAdapter;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/Button;

.field public l:[I

.field public m:I

.field public n:I

.field public o:Landroid/os/Handler;

.field p:Lcom/ksjhgd/xx/c/j;

.field q:Landroid/content/DialogInterface$OnCancelListener;

.field r:Landroid/content/DialogInterface$OnShowListener;

.field s:Landroid/view/View$OnClickListener;

.field t:Landroid/widget/AdapterView$OnItemClickListener;

.field u:I

.field v:I

.field w:I

.field x:I

.field y:Landroid/content/DialogInterface$OnClickListener;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksjhgd/xx/bj;->z:Z

    iput v1, p0, Lcom/ksjhgd/xx/bj;->m:I

    iput v1, p0, Lcom/ksjhgd/xx/bj;->n:I

    new-instance v0, Lcom/ksjhgd/xx/bk;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bk;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    new-instance v0, Lcom/ksjhgd/xx/bt;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bt;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->p:Lcom/ksjhgd/xx/c/j;

    new-instance v0, Lcom/ksjhgd/xx/bu;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bu;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->q:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/ksjhgd/xx/bv;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bv;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->r:Landroid/content/DialogInterface$OnShowListener;

    new-instance v0, Lcom/ksjhgd/xx/bx;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bx;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ksjhgd/xx/by;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/by;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->t:Landroid/widget/AdapterView$OnItemClickListener;

    const/16 v0, 0x1001

    iput v0, p0, Lcom/ksjhgd/xx/bj;->u:I

    const/16 v0, 0x1002

    iput v0, p0, Lcom/ksjhgd/xx/bj;->v:I

    const/16 v0, 0x1003

    iput v0, p0, Lcom/ksjhgd/xx/bj;->w:I

    const/16 v0, 0x1004

    iput v0, p0, Lcom/ksjhgd/xx/bj;->x:I

    new-instance v0, Lcom/ksjhgd/xx/bz;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bz;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->y:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    invoke-static {p3, p4}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p3, p5}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v1, 0xa

    mul-int/2addr v0, v2

    add-int/lit8 v2, v1, 0xa

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v2, p1, :cond_0

    return-object v6

    :cond_0
    if-ne v2, p2, :cond_1

    int-to-float v7, v0

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v7, v1, 0xa

    add-int/2addr v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v7, v0

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/ksjhgd/xx/bj;->a(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ksjhgd/xx/bj;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 9

    const/high16 v8, 0x42480000    # 50.0f

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/ksjhgd/xx/bj;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/bj;->u:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/ksjhgd/xx/bj;->v:I

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

    iget v4, p0, Lcom/ksjhgd/xx/bj;->v:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/ksjhgd/xx/bj;->w:I

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

.method private a(IILandroid/content/Context;Landroid/widget/ImageView;)V
    .locals 6

    new-instance v0, Lcom/ksjhgd/xx/bs;

    new-instance v5, Lcom/ksjhgd/xx/br;

    invoke-direct {v5, p0, p4}, Lcom/ksjhgd/xx/br;-><init>(Lcom/ksjhgd/xx/bj;Landroid/widget/ImageView;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ksjhgd/xx/bs;-><init>(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bs;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->l()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksjhgd/xx/bj;->a(IILandroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;Lcom/ksjhgd/xx/cc;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/cc;I)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/bj;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ksjhgd/xx/cc;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/ksjhgd/xx/cc;->d:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->l:[I

    aget v2, v2, p2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->q()V

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/bj;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->p()V

    return-void
.end method

.method static synthetic e(Lcom/ksjhgd/xx/bj;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method private l()V
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "StartpopupsActivity.showDialog(\u4e0a\u4e0b\u6587\u5f02\u5e38)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "StartpopupsActivity.showDialog \u5df2\u7ecf\u663e\u793a "

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ksjhgd/xx/bj;->n:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->h:Lcom/ksjhgd/xx/a/f;

    iput-boolean v9, v0, Lcom/ksjhgd/xx/a/f;->b:Z

    :cond_3
    iget v0, p0, Lcom/ksjhgd/xx/bj;->n:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/ksjhgd/xx/bj;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->o()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "=====================================comein=========================="

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput v1, p0, Lcom/ksjhgd/xx/bj;->m:I

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/appdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/ksjhgd/xx/cb;

    invoke-direct {v2, p0}, Lcom/ksjhgd/xx/cb;-><init>(Lcom/ksjhgd/xx/bj;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v0, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ksjhgd/xx/bj;->m:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->l:[I

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->l:[I

    aput v9, v0, v1

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->m()V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    :goto_2
    iget-object v4, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v4, v4

    if-lt v2, v4, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v5, v5, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v5, v5, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v6, p0, Lcom/ksjhgd/xx/bj;->m:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v6, v6, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v7, p0, Lcom/ksjhgd/xx/bj;->m:I

    iget-object v8, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v8, v8, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v8, v8, v2

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v6, v6, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aput-object v5, v6, v2

    iget v2, p0, Lcom/ksjhgd/xx/bj;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ksjhgd/xx/bj;->m:I

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=====================================kitout====totalSize===fileName==================="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/ksjhgd/xx/bj;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->o()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a"

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/ksjhgd/xx/bj;->n()Landroid/widget/BaseAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    const-string v1, "\u5df2\u7ecf\u4e0b\u8f7d\u4e86\u4ee5\u4e0b\u5e94\u7528\uff0c\u522b\u5fd8\u4e86\u70b9\u51fb\u5b89\u88c5!"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private n()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/ksjhgd/xx/bm;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bm;-><init>(Lcom/ksjhgd/xx/bj;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/bj;->A:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->A:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private o()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const/16 v6, 0xa

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x2766

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/ksjhgd/xx/e/g;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ksjhgd/xx/e/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0xeeeeee

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setBackgroundColor(I)V

    invoke-virtual {v2, v7}, Lcom/ksjhgd/xx/e/g;->setFadingEdgeLength(I)V

    const/16 v1, 0x1e

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setSpacing(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setUnselectedAlpha(F)V

    new-instance v1, Lcom/ksjhgd/xx/a/a;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    invoke-direct {v1, p0, v3}, Lcom/ksjhgd/xx/a/a;-><init>(Lcom/ksjhgd/xx/a;Lcom/ksjhgd/xx/c/b;)V

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/ksjhgd/xx/bp;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/bp;-><init>(Lcom/ksjhgd/xx/bj;)V

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v1}, Lcom/ksjhgd/xx/e/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    const v3, 0x1080038

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    const-string v4, "cancel.png"

    invoke-static {v2, v3, v4}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->C:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ksjhgd/xx/bq;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/bq;-><init>(Lcom/ksjhgd/xx/bj;)V

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x32

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ksjhgd/xx/bj;->B:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v10, p0, Lcom/ksjhgd/xx/bj;->a:Z

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    const v3, 0x103000b

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v1, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->r:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->q:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v4, 0xff0000

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    const/high16 v0, 0x43960000    # 300.0f

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/high16 v0, 0x43960000    # 300.0f

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    if-ne v1, v10, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/bj;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    const-string v0, "StartpopupsActivity.closeAD()"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "com.zdt.exitpop.StartpopupsActivity.showDialog().(\u70b9\u51fb\u5173\u95ed\u6309\u94ae)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 6

    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/bj;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lcom/ksjhgd/xx/c/h;->n:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lcom/ksjhgd/xx/ca;

    invoke-direct {v5, p0}, Lcom/ksjhgd/xx/ca;-><init>(Lcom/ksjhgd/xx/bj;)V

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
