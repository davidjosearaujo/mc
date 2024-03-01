.class Lcom/chanven/lib/cptr/loadmore/i$2;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/loadmore/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chanven/lib/cptr/loadmore/i;


# direct methods
.method constructor <init>(Lcom/chanven/lib/cptr/loadmore/i;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/i$2;->a:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i$2;->a:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-static {v0}, Lcom/chanven/lib/cptr/loadmore/i;->b(Lcom/chanven/lib/cptr/loadmore/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i$2;->a:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-static {v0}, Lcom/chanven/lib/cptr/loadmore/i;->c(Lcom/chanven/lib/cptr/loadmore/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i$2;->a:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i$2;->a:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-static {v0}, Lcom/chanven/lib/cptr/loadmore/i;->d(Lcom/chanven/lib/cptr/loadmore/i;)V

    .line 150
    :cond_0
    return-void
.end method
