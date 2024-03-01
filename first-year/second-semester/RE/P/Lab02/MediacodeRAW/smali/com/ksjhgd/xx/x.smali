.class public Lcom/ksjhgd/xx/x;
.super Lcom/ksjhgd/xx/e;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static g:F

.field public static i:Landroid/view/WindowManager;

.field public static j:Landroid/view/WindowManager$LayoutParams;

.field public static k:Landroid/view/View;

.field protected static u:Lcom/ksjhgd/xx/a/c;

.field protected static v:Lcom/ksjhgd/xx/a/c;


# instance fields
.field public A:Landroid/os/Handler;

.field B:Lcom/ksjhgd/xx/c/j;

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:I

.field private J:Lcom/ksjhgd/xx/c/j;

.field h:I

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/RelativeLayout;

.field n:Landroid/widget/GridView;

.field o:Landroid/widget/GridView;

.field p:Landroid/widget/LinearLayout;

.field q:Z

.field public r:Lcom/ksjhgd/xx/b/c;

.field public s:Lcom/ksjhgd/xx/b/f;

.field protected t:Landroid/content/SharedPreferences;

.field protected w:I

.field protected x:Lcom/ksjhgd/xx/c/b;

.field protected y:Lcom/ksjhgd/xx/c/b;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sput-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ksjhgd/xx/x;->z:I

    new-instance v0, Lcom/ksjhgd/xx/y;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/y;-><init>(Lcom/ksjhgd/xx/x;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    new-instance v0, Lcom/ksjhgd/xx/ab;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ab;-><init>(Lcom/ksjhgd/xx/x;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->B:Lcom/ksjhgd/xx/c/j;

    new-instance v0, Lcom/ksjhgd/xx/ac;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ac;-><init>(Lcom/ksjhgd/xx/x;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->J:Lcom/ksjhgd/xx/c/j;

    const-string v0, "FloatService.onCreate(bat)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->j()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->E:F

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/x;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/x;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/x;->F:F

    return v0
.end method

.method public static b(Landroid/content/Context;)Lcom/ksjhgd/xx/x;
    .locals 1

    invoke-static {}, Lcom/ksjhgd/xx/aj;->a()Lcom/ksjhgd/xx/x;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/x;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/x;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ksjhgd/xx/aj;->a(Lcom/ksjhgd/xx/x;)V

    :cond_0
    invoke-static {}, Lcom/ksjhgd/xx/aj;->a()Lcom/ksjhgd/xx/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->F:F

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/x;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/x;->H:F

    return v0
.end method

.method static synthetic c(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->G:F

    return-void
.end method

.method static synthetic d(Lcom/ksjhgd/xx/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->m()V

    return-void
.end method

.method static synthetic d(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->H:F

    return-void
.end method

.method static synthetic e(Lcom/ksjhgd/xx/x;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/x;->E:F

    return v0
.end method

.method static synthetic e(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->C:F

    return-void
.end method

.method static synthetic f(Lcom/ksjhgd/xx/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->l()V

    return-void
.end method

.method static synthetic f(Lcom/ksjhgd/xx/x;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/x;->D:F

    return-void
.end method

.method static synthetic g(Lcom/ksjhgd/xx/x;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/x;->G:F

    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

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

.method private k()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FloatService.init()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v0, "FloatService.init(\u5df2\u7ecf\u663e\u793a\u60ac\u6d6e\u7a97)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v2, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ksjhgd/xx/x;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ksjhgd/xx/x;->z:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/x;->B:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/ksjhgd/xx/ae;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ae;-><init>(Lcom/ksjhgd/xx/x;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ae;->start()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    iget v0, p0, Lcom/ksjhgd/xx/x;->F:F

    iget v1, p0, Lcom/ksjhgd/xx/x;->H:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/ksjhgd/xx/x;->F:F

    iget v2, p0, Lcom/ksjhgd/xx/x;->D:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 4

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FloatService.onStartCommand(==========)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v1, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "FloatService.onStartCommand(\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->k()V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "FloatService.onStart()"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ksjhgd/xx/x;->a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/ak;ZI)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/ksjhgd/xx/ak;ZI)V
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

    iget-object v2, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

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

    iget-object v2, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

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

    iget-object v5, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

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

    invoke-interface {p3, v2}, Lcom/ksjhgd/xx/ak;->a(Landroid/graphics/BitmapFactory$Options;)V
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
    iget-object v10, p0, Lcom/ksjhgd/xx/x;->s:Lcom/ksjhgd/xx/b/f;

    new-instance v2, Lcom/ksjhgd/xx/z;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p1

    move v8, p4

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/ksjhgd/xx/z;-><init>(Lcom/ksjhgd/xx/x;Ljava/lang/String;Lcom/ksjhgd/xx/b/d;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/ak;)V

    move/from16 v0, p5

    invoke-virtual {v10, v2, v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/e;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected a(Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/ksjhgd/xx/c/d;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/d;-><init>()V

    iget-object v3, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ksjhgd/xx/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ksjhgd/xx/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/c/b;

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatService.dataLoad2SDCard()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/ksjhgd/xx/a/c;

    iget-object v3, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0, p0, v3}, Lcom/ksjhgd/xx/a/c;-><init>(Lcom/ksjhgd/xx/x;Lcom/ksjhgd/xx/c/b;)V

    sput-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FloatService.dataLoad2SDCard()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatService.onDestroy()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sput-object v3, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "x"

    sget-object v2, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "y"

    sget-object v2, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->s:Lcom/ksjhgd/xx/b/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->s:Lcom/ksjhgd/xx/b/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/b/f;->a()V

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const-wide v6, 0x3fe3333333333333L    # 0.6

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/ksjhgd/xx/x;->I:I

    add-int/lit8 v0, v0, -0x78

    iget v2, p0, Lcom/ksjhgd/xx/x;->I:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    const-string v1, "front_bg.9.png"

    invoke-static {p1, v0, v1}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/x;->d(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    const-string v1, "front0.png"

    invoke-static {p1, v0, v1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/ksjhgd/xx/af;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/af;-><init>(Lcom/ksjhgd/xx/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/ksjhgd/xx/ag;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/ag;-><init>(Lcom/ksjhgd/xx/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    return-object v0

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/ksjhgd/xx/x;->I:I

    add-int/lit8 v0, v0, -0x78

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    new-instance v0, Lcom/ksjhgd/xx/ad;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ad;-><init>(Lcom/ksjhgd/xx/x;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/ad;->start()V

    return-void
.end method

.method public d()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FloatService.createFloat(=========)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ksjhgd/xx/b/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ksjhgd/xx/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->r:Lcom/ksjhgd/xx/b/c;

    new-instance v0, Lcom/ksjhgd/xx/b/f;

    invoke-direct {v0}, Lcom/ksjhgd/xx/b/f;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/x;->s:Lcom/ksjhgd/xx/b/f;

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ksjhgd/xx/x;->g:F

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ksjhgd/xx/x;->I:I

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/x;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    const-string v2, "x"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    const-string v2, "y"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ksjhgd/xx/x;->E:F

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ksjhgd/xx/x;->F:F

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/ksjhgd/xx/x;->i:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/x;->k:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/x;->j:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ksjhgd/xx/x;->m()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/x;->e()V

    goto/16 :goto_0
.end method

.method public d(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x5

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "cancel.png"

    invoke-static {p1, v0, v1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/ksjhgd/xx/ah;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/ah;-><init>(Lcom/ksjhgd/xx/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x37

    const/16 v3, 0x50

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/ksjhgd/xx/ai;

    invoke-direct {v1, p0, p1}, Lcom/ksjhgd/xx/ai;-><init>(Lcom/ksjhgd/xx/x;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x2

    const/16 v3, 0x3ef

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    const/16 v3, 0x3f0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setId(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0xff00

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    sget-object v2, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    const v2, 0xee1100

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->n:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setId(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setCacheColorHint(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0xff00

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    invoke-virtual {v1, v8}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    const/high16 v2, 0xff0000

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->o:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->getCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/ksjhgd/xx/e/r;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/e/r;->o:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/ksjhgd/xx/x;->u:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected f()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v5, -0x1

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    sget-object v4, Lcom/ksjhgd/xx/e/r;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v5, :cond_0

    sub-int v1, v2, v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "BaseActivity.isUpdate() \u8d85\u8fc7\u8bbe\u5b9a\u65f6\u95f4 \u542f\u52a8\u66f4\u65b0"

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->t:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v3, Lcom/ksjhgd/xx/e/r;->e:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksjhgd/xx/x;->q:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    const-string v2, "front1.png"

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ksjhgd/xx/x;->q:Z

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->m:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    const-string v2, "front0.png"

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->p:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    const-string v1, "floatservice on clikc 123"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
