.class Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
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
    .line 282
    iput-object p1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->a(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    iget-object v1, p0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$2;->a:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-static {v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->d(Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_0
    return-void
.end method
