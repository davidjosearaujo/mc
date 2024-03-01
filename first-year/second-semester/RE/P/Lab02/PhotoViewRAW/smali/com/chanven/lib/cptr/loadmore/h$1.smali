.class Lcom/chanven/lib/cptr/loadmore/h$1;
.super Ljava/lang/Object;
.source "RecyclerViewHandler.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chanven/lib/cptr/loadmore/h;->a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/c$b;Landroid/view/View$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView;

.field final synthetic c:Lcom/chanven/lib/cptr/loadmore/h;


# direct methods
.method constructor <init>(Lcom/chanven/lib/cptr/loadmore/h;Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->c:Lcom/chanven/lib/cptr/loadmore/h;

    iput-object p2, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->b:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->c:Lcom/chanven/lib/cptr/loadmore/h;

    invoke-static {v1, v0}, Lcom/chanven/lib/cptr/loadmore/h;->a(Lcom/chanven/lib/cptr/loadmore/h;Landroid/view/View;)Landroid/view/View;

    .line 30
    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/loadmore/h$1;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/h$1;->c:Lcom/chanven/lib/cptr/loadmore/h;

    invoke-static {v0}, Lcom/chanven/lib/cptr/loadmore/h;->a(Lcom/chanven/lib/cptr/loadmore/h;)Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Landroid/view/View;)V

    .line 36
    return-object p1
.end method
