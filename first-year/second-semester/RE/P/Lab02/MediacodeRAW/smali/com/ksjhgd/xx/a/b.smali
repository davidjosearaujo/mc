.class public Lcom/ksjhgd/xx/a/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/ksjhgd/xx/Klsjfgswas;

.field private b:Lcom/ksjhgd/xx/c/b;


# direct methods
.method public constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;Lcom/ksjhgd/xx/c/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/ksjhgd/xx/a/b;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iput-object p2, p0, Lcom/ksjhgd/xx/a/b;->b:Lcom/ksjhgd/xx/c/b;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/ksjhgd/xx/a/b;->b:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/b;->b:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/b;->b:Lcom/ksjhgd/xx/c/b;

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
    .locals 2

    const/4 v1, -0x1

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ksjhgd/xx/a/b;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a/b;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    const-string v1, "img_bg.png"

    invoke-static {v0, p2, v1}, Lcom/ksjhgd/xx/e/q;->b(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/b;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/b;->b:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Ljava/lang/String;Landroid/view/View;)V

    return-object p2
.end method
