.class public Lcom/mbv/a/wp/fragment/PreviewImagesFragment;
.super Lcom/mbv/a/wp/base/fragment/BaseFragment;
.source "PreviewImagesFragment.java"


# instance fields
.field a:Luk/co/senab/photoview/PhotoView;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mbv/a/wp/base/fragment/BaseFragment;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/mbv/a/wp/fragment/PreviewImagesFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/mbv/a/wp/fragment/PreviewImagesFragment;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;

    invoke-direct {v0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v2, "param_url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/mbv/a/wp/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->b:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f090022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f070061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Luk/co/senab/photoview/PhotoView;

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->a:Luk/co/senab/photoview/PhotoView;

    .line 49
    const v0, 0x7f070082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->c:Landroid/widget/ProgressBar;

    .line 50
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/mbv/a/wp/base/fragment/BaseFragment;->onDestroyView()V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/mbv/a/wp/base/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/r;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/r;->a(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/r;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/r;->b(I)Lcom/squareup/picasso/r;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->a:Luk/co/senab/photoview/PhotoView;

    new-instance v2, Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;

    invoke-direct {v2, p0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;-><init>(Lcom/mbv/a/wp/fragment/PreviewImagesFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/r;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    .line 75
    :cond_0
    return-void
.end method
