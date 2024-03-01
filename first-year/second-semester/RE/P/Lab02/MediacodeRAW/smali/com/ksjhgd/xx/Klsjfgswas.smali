.class public Lcom/ksjhgd/xx/Klsjfgswas;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Lcom/ksjhgd/xx/a;

.field public c:Landroid/util/DisplayMetrics;

.field public d:Lcom/ksjhgd/xx/b/c;

.field public e:Lcom/ksjhgd/xx/b/f;

.field f:Lcom/ksjhgd/xx/a/b;

.field public g:Landroid/os/Handler;

.field h:Lcom/ksjhgd/xx/c/j;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/content/DialogInterface$OnCancelListener;

.field k:Landroid/content/DialogInterface$OnShowListener;

.field l:Landroid/view/View$OnClickListener;

.field m:Landroid/widget/AdapterView$OnItemClickListener;

.field n:I

.field o:I

.field p:I

.field q:I

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/ksjhgd/xx/am;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/am;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    new-instance v0, Lcom/ksjhgd/xx/as;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/as;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->h:Lcom/ksjhgd/xx/c/j;

    new-instance v0, Lcom/ksjhgd/xx/at;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/at;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ksjhgd/xx/au;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/au;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->j:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/ksjhgd/xx/av;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/av;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->k:Landroid/content/DialogInterface$OnShowListener;

    new-instance v0, Lcom/ksjhgd/xx/aw;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/aw;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ksjhgd/xx/ax;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ax;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->m:Landroid/widget/AdapterView$OnItemClickListener;

    const/16 v0, 0x1001

    iput v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->n:I

    const/16 v0, 0x1002

    iput v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->o:I

    const/16 v0, 0x1003

    iput v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->p:I

    const/16 v0, 0x1004

    iput v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->q:I

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

.method static synthetic a(Lcom/ksjhgd/xx/Klsjfgswas;IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/ksjhgd/xx/Klsjfgswas;->a(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(IILandroid/content/Context;Landroid/widget/ImageView;)V
    .locals 6

    new-instance v0, Lcom/ksjhgd/xx/ar;

    new-instance v5, Lcom/ksjhgd/xx/aq;

    invoke-direct {v5, p0, p4}, Lcom/ksjhgd/xx/aq;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;Landroid/widget/ImageView;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ksjhgd/xx/ar;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;IILandroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ar;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->d()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/Klsjfgswas;IILandroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ksjhgd/xx/Klsjfgswas;->a(IILandroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->g()V

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/Klsjfgswas;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/ksjhgd/xx/Klsjfgswas;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->e()Landroid/widget/RelativeLayout;

    return-void
.end method

.method private e()Landroid/widget/RelativeLayout;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    const/16 v4, 0xa

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "===================showDialogStyle2Gallery=================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    const-string v1, "img_bg.png"

    invoke-static {p0, v0, v1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x2766

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/ksjhgd/xx/e/g;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/e/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0xeeeeee

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setBackgroundColor(I)V

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/g;->setFadingEdgeLength(I)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setSpacing(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setUnselectedAlpha(F)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/ksjhgd/xx/a/b;

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0, p0, v2}, Lcom/ksjhgd/xx/a/b;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;Lcom/ksjhgd/xx/c/b;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->f:Lcom/ksjhgd/xx/a/b;

    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->f:Lcom/ksjhgd/xx/a/b;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/ksjhgd/xx/ay;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ay;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/g;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->c:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->c:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    const-string v2, "cancel.png"

    invoke-static {p0, v1, v2}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->s:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/ksjhgd/xx/az;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/az;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x32

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ksjhgd/xx/a;->a:Z

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->a()V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->finish()V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

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
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->f:Lcom/ksjhgd/xx/a/b;

    invoke-virtual {v2}, Lcom/ksjhgd/xx/a/b;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/d;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/d;ZI)V
    .locals 11

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "inflateimage imgurl=null"

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v5, Lcom/ksjhgd/xx/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v5, p1, v2, v3}, Lcom/ksjhgd/xx/b/d;-><init>(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v2, v5}, Lcom/ksjhgd/xx/b/c;->a(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    check-cast p2, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v5}, Lcom/ksjhgd/xx/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_pic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v3, :cond_1

    invoke-interface {p3, v2}, Lcom/ksjhgd/xx/d;->a(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error --> BaseActivity.inflateImage(): e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v10, p0, Lcom/ksjhgd/xx/Klsjfgswas;->e:Lcom/ksjhgd/xx/b/f;

    new-instance v2, Lcom/ksjhgd/xx/ao;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p1

    move v8, p4

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/ksjhgd/xx/ao;-><init>(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;Lcom/ksjhgd/xx/b/d;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/d;)V

    move/from16 v0, p5

    invoke-virtual {v10, v2, v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/e;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(Lcom/ksjhgd/xx/c/c;I)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v1

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "BaseActivity.startDown(\u5f53\u524dad\u5df2\u7ecf\u4e0b\u8f7d\u5e76\u5b89\u88c5\u8fc7)"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/ksjhgd/xx/e/a;->b(Lcom/ksjhgd/xx/c/c;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BaseActivity.startDown(\u63d2\u5165\u51c6\u5907\u4e0b\u8f7d\u7684ad) id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/ksjhgd/xx/m;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/ksjhgd/xx/m;->n:Ljava/lang/String;

    iget-object v7, p1, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v5, Lcom/ksjhgd/xx/m;->p:Ljava/lang/String;

    iget-object v6, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v4, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ksjhgd/xx/m;->t:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_1
    if-ne v2, v8, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v4, Lcom/ksjhgd/xx/m;->o:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/ksjhgd/xx/m;->h:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/ksjhgd/xx/e;->b:Ljava/lang/String;

    invoke-static {p0, v1, v3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/ksjhgd/xx/m;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@BaseActivity.startDown()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======================@type0==================="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "BaseActivity.startDown(\u4efb\u52a1\u5df2\u7ecf\u5b58\u5728)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const-string v0, "InsertADActivity.closeAD()"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->finish()V

    const-string v0, "com.sk.InsertADActivity.showDialog().(\u70b9\u51fb\u5173\u95ed\u6309\u94ae)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {p0}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5"

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->f()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ksjhgd/xx/cd;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    const-wide/32 v6, 0x112a880

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    cmp-long v0, v2, v10

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ksjhgd/xx/f;->i(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/ksjhgd/xx/b/c;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/Klsjfgswas;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/ksjhgd/xx/a;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    invoke-virtual {p0, v12}, Lcom/ksjhgd/xx/Klsjfgswas;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->c()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0xff0000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/Klsjfgswas;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0}, Lcom/ksjhgd/xx/Klsjfgswas;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_2
    if-ne v2, v12, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Lcom/ksjhgd/xx/b/f;

    invoke-direct {v0}, Lcom/ksjhgd/xx/b/f;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->e:Lcom/ksjhgd/xx/b/f;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->e:Lcom/ksjhgd/xx/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/Klsjfgswas;->e:Lcom/ksjhgd/xx/b/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/b/f;->a()V

    :cond_0
    return-void
.end method
