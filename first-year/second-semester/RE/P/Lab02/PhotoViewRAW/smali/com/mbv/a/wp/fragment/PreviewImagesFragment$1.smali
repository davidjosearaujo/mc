.class Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;
.super Ljava/lang/Object;
.source "PreviewImagesFragment.java"

# interfaces
.implements Lcom/squareup/picasso/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/fragment/PreviewImagesFragment;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/fragment/PreviewImagesFragment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;->a:Lcom/mbv/a/wp/fragment/PreviewImagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;->a:Lcom/mbv/a/wp/fragment/PreviewImagesFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->a(Lcom/mbv/a/wp/fragment/PreviewImagesFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/PreviewImagesFragment$1;->a:Lcom/mbv/a/wp/fragment/PreviewImagesFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/PreviewImagesFragment;->a(Lcom/mbv/a/wp/fragment/PreviewImagesFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    return-void
.end method
