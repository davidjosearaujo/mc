.class public Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerAdapterWithHF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;,
        Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;,
        Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$b;,
        Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;,
        Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

.field private e:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;

.field private f:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;)Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->d:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

    return-object v0
.end method

.method private a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 137
    iget v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 138
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 142
    iget-object v1, p1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_1
    iget-object v0, p1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 152
    iget-object v0, p1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method static synthetic b(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;)Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->e:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;

    return-object v0
.end method

.method private d(I)Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->f:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->f:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->f:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 132
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->notifyItemInserted(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->f:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->notifyItemRemoved(I)V

    .line 225
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->f:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method protected c(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .prologue
    const/16 v1, 0x1edb

    const/16 v0, 0x1eda

    .line 177
    invoke-direct {p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    :goto_0
    return v0

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 180
    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->c(I)I

    move-result v2

    .line 183
    if-eq v2, v0, :cond_2

    if-ne v2, v1, :cond_3

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item type cannot equal 7898 or 7899"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 186
    goto :goto_0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    check-cast p1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;Landroid/view/View;)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, p2}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 117
    check-cast p1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;

    invoke-direct {v1, p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$a;-><init>(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$b;

    invoke-direct {v1, p0, p1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$b;-><init>(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->b(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    .line 93
    const/16 v0, 0x1eda

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1edb

    if-eq p2, v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;

    invoke-direct {v0, v1}, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$HeaderFooterViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;)V
    .locals 3

    .prologue
    .line 244
    iput-object p1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->d:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

    .line 245
    const-string v0, "eeee"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnItemClickListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->d:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF;->e:Lcom/chanven/lib/cptr/recyclerview/RecyclerAdapterWithHF$d;

    .line 254
    return-void
.end method
