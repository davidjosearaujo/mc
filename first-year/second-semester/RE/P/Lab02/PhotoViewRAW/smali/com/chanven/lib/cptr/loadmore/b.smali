.class public Lcom/chanven/lib/cptr/loadmore/b;
.super Ljava/lang/Object;
.source "GridViewHandler.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/loadmore/b$b;,
        Lcom/chanven/lib/cptr/loadmore/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/loadmore/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/b;->b:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/loadmore/b;)Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->getFooterViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->a(Landroid/view/View;)V

    .line 71
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/g;)V
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    .line 83
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/b$b;

    invoke-direct {v0, p2}, Lcom/chanven/lib/cptr/loadmore/b$b;-><init>(Lcom/chanven/lib/cptr/loadmore/g;)V

    invoke-virtual {p1, v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/b$a;

    invoke-direct {v0, p0, p2}, Lcom/chanven/lib/cptr/loadmore/b$a;-><init>(Lcom/chanven/lib/cptr/loadmore/b;Lcom/chanven/lib/cptr/loadmore/g;)V

    invoke-virtual {p1, v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    return-void
.end method

.method public a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/c$b;Landroid/view/View$OnClickListener;)Z
    .locals 3

    .prologue
    .line 38
    check-cast p1, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    .line 39
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    new-instance v2, Lcom/chanven/lib/cptr/loadmore/b$1;

    invoke-direct {v2, p0, v0}, Lcom/chanven/lib/cptr/loadmore/b$1;-><init>(Lcom/chanven/lib/cptr/loadmore/b;Landroid/content/Context;)V

    invoke-interface {p2, v2, p3}, Lcom/chanven/lib/cptr/loadmore/c$b;->a(Lcom/chanven/lib/cptr/loadmore/c$a;Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v0, 0x1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    invoke-virtual {v2, v1}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->getFooterViewCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/b;->a:Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/loadmore/GridViewWithHeaderAndFooter;->b(Landroid/view/View;)Z

    .line 78
    :cond_0
    return-void
.end method
