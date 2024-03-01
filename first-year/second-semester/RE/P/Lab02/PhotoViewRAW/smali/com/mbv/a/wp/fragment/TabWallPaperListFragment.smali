.class public Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;
.super Lcom/mbv/a/wp/base/fragment/BaseFragment;
.source "TabWallPaperListFragment.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/f;
.implements Lcom/chanven/lib/cptr/loadmore/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private b:Lcom/chanven/lib/cptr/loadmore/i;

.field private c:Landroid/widget/GridView;

.field private d:Lcom/mbv/a/wp/adapter/a;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mbv/a/wp/base/fragment/BaseFragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    return-void
.end method

.method static synthetic a(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    return v0
.end method

.method static synthetic c(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/chanven/lib/cptr/loadmore/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    return-object v0
.end method

.method static synthetic d(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/mbv/a/wp/adapter/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d:Lcom/mbv/a/wp/adapter/a;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    const-string v1, "pageindex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "sc"

    const-string v2, "1860001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "kw"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "type"

    iget-object v2, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/mbv/a/sdklibrary/manager/JniManager;->nativeApkpaper()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    invoke-direct {v2, p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)V

    invoke-static {v1, v0, v2}, Lcom/mbv/a/sdklibrary/net/AsyncHttpGet;->get(Ljava/lang/String;Ljava/util/Map;Lcom/mbv/a/sdklibrary/net/b;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    .line 152
    invoke-direct {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d()V

    .line 153
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->g:I

    .line 158
    invoke-direct {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d()V

    .line 159
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->f:Z

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->f:Z

    .line 96
    invoke-direct {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    const v0, 0x7f090023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/mbv/a/wp/base/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 65
    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 66
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const-string v2, "#e1352f"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 67
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/i;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {v0, v1}, Lcom/chanven/lib/cptr/loadmore/i;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    .line 68
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-virtual {v0, p0}, Lcom/chanven/lib/cptr/loadmore/i;->setOnSwipeRefreshListener(Lcom/chanven/lib/cptr/loadmore/i$a;)V

    .line 69
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-virtual {v0, p0}, Lcom/chanven/lib/cptr/loadmore/i;->setOnLoadMoreListener(Lcom/chanven/lib/cptr/loadmore/f;)V

    .line 70
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    new-instance v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$a;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/loadmore/i;->a(Lcom/chanven/lib/cptr/loadmore/c;)V

    .line 71
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b:Lcom/chanven/lib/cptr/loadmore/i;

    invoke-virtual {v0, v4}, Lcom/chanven/lib/cptr/loadmore/i;->a(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->e:Ljava/lang/String;

    .line 75
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c:Landroid/widget/GridView;

    .line 76
    new-instance v0, Lcom/mbv/a/wp/adapter/a;

    invoke-virtual {p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mbv/a/wp/adapter/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d:Lcom/mbv/a/wp/adapter/a;

    .line 77
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d:Lcom/mbv/a/wp/adapter/a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c:Landroid/widget/GridView;

    new-instance v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$1;-><init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    return-void
.end method
