.class Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;
.super Ljava/lang/Object;
.source "RecyclerAdapterWithHF.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

.field private b:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p2, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 266
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b(I)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    invoke-static {v1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;)Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    invoke-static {v1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;)Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

    move-result-object v1

    iget-object v2, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    iget-object v3, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-interface {v1, v2, v3, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;->a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->a:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;

    iget-object v2, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v2, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 275
    return-void
.end method