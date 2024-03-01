.class Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->c(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->b(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    iget-object v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-virtual {v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->invalidate()V

    .line 70
    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
