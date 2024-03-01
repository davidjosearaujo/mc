.class public Lcom/chanven/lib/cptr/loadmore/d;
.super Ljava/lang/Object;
.source "ListViewHandler.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/loadmore/d$b;,
        Lcom/chanven/lib/cptr/loadmore/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/loadmore/d;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/d;->b:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/g;)V
    .locals 1

    .prologue
    .line 50
    check-cast p1, Landroid/widget/ListView;

    .line 51
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/d$b;

    invoke-direct {v0, p2}, Lcom/chanven/lib/cptr/loadmore/d$b;-><init>(Lcom/chanven/lib/cptr/loadmore/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/d$a;

    invoke-direct {v0, p0, p2}, Lcom/chanven/lib/cptr/loadmore/d$a;-><init>(Lcom/chanven/lib/cptr/loadmore/d;Lcom/chanven/lib/cptr/loadmore/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 53
    return-void
.end method

.method public a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/c$b;Landroid/view/View$OnClickListener;)Z
    .locals 2

    .prologue
    .line 23
    check-cast p1, Landroid/widget/ListView;

    .line 24
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/d;->a:Landroid/widget/ListView;

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/chanven/lib/cptr/loadmore/d$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/chanven/lib/cptr/loadmore/d$1;-><init>(Lcom/chanven/lib/cptr/loadmore/d;Landroid/content/Context;Landroid/widget/ListView;)V

    invoke-interface {p2, v1, p3}, Lcom/chanven/lib/cptr/loadmore/c$b;->a(Lcom/chanven/lib/cptr/loadmore/c$a;Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/d;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 60
    :cond_0
    return-void
.end method
