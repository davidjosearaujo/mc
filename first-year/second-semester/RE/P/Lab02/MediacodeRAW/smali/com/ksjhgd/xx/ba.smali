.class public Lcom/ksjhgd/xx/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:F

.field public static c:Landroid/view/WindowManager;

.field public static d:Landroid/view/WindowManager$LayoutParams;

.field public static e:Landroid/view/View;


# instance fields
.field b:I

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/RelativeLayout;

.field h:Lcom/ksjhgd/xx/e/i;

.field i:Z

.field protected j:Landroid/content/SharedPreferences;

.field protected k:I

.field l:Landroid/content/Context;

.field public m:Landroid/os/Handler;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sput-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ksjhgd/xx/ba;->k:I

    new-instance v0, Lcom/ksjhgd/xx/bb;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bb;-><init>(Lcom/ksjhgd/xx/ba;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->m:Landroid/os/Handler;

    new-instance v0, Lcom/ksjhgd/xx/bc;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bc;-><init>(Lcom/ksjhgd/xx/ba;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->u:Landroid/content/BroadcastReceiver;

    const-string v0, "FloatService.onCreate(bat)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/ba;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/ba;->p:F

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/ksjhgd/xx/ba;
    .locals 1

    invoke-static {}, Lcom/ksjhgd/xx/bf;->a()Lcom/ksjhgd/xx/ba;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/ba;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/ba;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/ksjhgd/xx/bf;->a(Lcom/ksjhgd/xx/ba;)V

    :cond_0
    invoke-static {}, Lcom/ksjhgd/xx/bf;->a()Lcom/ksjhgd/xx/ba;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->p:F

    return-void
.end method

.method static synthetic b(Lcom/ksjhgd/xx/ba;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/ba;->q:F

    return v0
.end method

.method static synthetic b(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->q:F

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/ba;->d()V

    return-void
.end method

.method static synthetic c(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->r:F

    return-void
.end method

.method static synthetic d(Lcom/ksjhgd/xx/ba;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/ba;->r:F

    return v0
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/ksjhgd/xx/ba;->q:F

    iget v1, p0, Lcom/ksjhgd/xx/ba;->s:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/ksjhgd/xx/ba;->q:F

    iget v2, p0, Lcom/ksjhgd/xx/ba;->o:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->s:F

    return-void
.end method

.method static synthetic e(Lcom/ksjhgd/xx/ba;)F
    .locals 1

    iget v0, p0, Lcom/ksjhgd/xx/ba;->s:F

    return v0
.end method

.method private e()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->n:F

    return-void
.end method

.method static synthetic f(Lcom/ksjhgd/xx/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/ksjhgd/xx/ba;->e()V

    return-void
.end method

.method static synthetic f(Lcom/ksjhgd/xx/ba;F)V
    .locals 0

    iput p1, p0, Lcom/ksjhgd/xx/ba;->o:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    const-string v1, "test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->j:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ksjhgd/xx/ba;->a:F

    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/ksjhgd/xx/ba;->t:I

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/ba;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ksjhgd/xx/ba;->j:Landroid/content/SharedPreferences;

    const-string v2, "x"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/ksjhgd/xx/ba;->j:Landroid/content/SharedPreferences;

    const-string v2, "y"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ksjhgd/xx/ba;->p:F

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ksjhgd/xx/ba;->q:F

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget-object v0, Lcom/ksjhgd/xx/ba;->c:Landroid/view/WindowManager;

    sget-object v1, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    sget-object v2, Lcom/ksjhgd/xx/ba;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/ksjhgd/xx/ba;->e()V

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 7

    const/4 v1, -0x2

    const/4 v6, 0x1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    new-instance v0, Lcom/ksjhgd/xx/e/i;

    invoke-direct {v0, p1}, Lcom/ksjhgd/xx/e/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/e/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/i;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/i;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/ksjhgd/xx/ba;->t:I

    add-int/lit8 v0, v0, -0x78

    iget v2, p0, Lcom/ksjhgd/xx/ba;->t:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

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

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x78

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    const v1, 0x11ffffff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/ksjhgd/xx/bd;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/bd;-><init>(Lcom/ksjhgd/xx/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/ksjhgd/xx/be;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/be;-><init>(Lcom/ksjhgd/xx/ba;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    iget-object v1, p0, Lcom/ksjhgd/xx/ba;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/i;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    return-object v0

    :cond_1
    if-ne v2, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/ksjhgd/xx/ba;->t:I

    add-int/lit8 v0, v0, -0x78

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksjhgd/xx/ba;->i:Z

    sget-object v0, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksjhgd/xx/ba;->i:Z

    sget-object v0, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/ksjhgd/xx/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->h:Lcom/ksjhgd/xx/e/i;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/ba;->l:Landroid/content/Context;

    const-string v1, "floatservice on clikc 123"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
