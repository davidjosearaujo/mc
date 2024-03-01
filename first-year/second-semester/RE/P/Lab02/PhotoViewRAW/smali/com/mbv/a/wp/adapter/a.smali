.class public Lcom/mbv/a/wp/adapter/a;
.super Landroid/widget/BaseAdapter;
.source "WallPaperListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/mbv/a/wp/adapter/a;->b:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/mbv/a/wp/adapter/a;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public a(I)Lcom/mbv/a/wp/a/a;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/a/a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mbv/a/wp/adapter/a;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/adapter/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/mbv/a/wp/adapter/a;->a(I)Lcom/mbv/a/wp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/mbv/a/wp/view/PaperListImageView;

    iget-object v0, p0, Lcom/mbv/a/wp/adapter/a;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/mbv/a/wp/view/PaperListImageView;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/mbv/a/wp/adapter/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/mbv/a/wp/adapter/a;->a(I)Lcom/mbv/a/wp/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbv/a/wp/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/r;

    move-result-object v0

    const v1, 0x7f04001f

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/r;->a(I)Lcom/squareup/picasso/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/picasso/r;->a(Landroid/widget/ImageView;)V

    .line 60
    return-object p2

    .line 57
    :cond_0
    check-cast p2, Lcom/mbv/a/wp/view/PaperListImageView;

    goto :goto_0
.end method
