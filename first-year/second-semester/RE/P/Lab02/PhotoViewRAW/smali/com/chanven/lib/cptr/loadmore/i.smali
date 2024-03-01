.class public Lcom/chanven/lib/cptr/loadmore/i;
.super Ljava/lang/Object;
.source "SwipeRefreshHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/loadmore/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private b:Landroid/view/View;

.field private c:Lcom/chanven/lib/cptr/loadmore/i$a;

.field private d:Lcom/chanven/lib/cptr/loadmore/e;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/chanven/lib/cptr/loadmore/c;

.field private j:Lcom/chanven/lib/cptr/loadmore/f;

.field private k:Lcom/chanven/lib/cptr/loadmore/c$b;

.field private l:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private m:Lcom/chanven/lib/cptr/loadmore/g;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->e:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->f:Z

    .line 26
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    .line 27
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    .line 28
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/a;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/loadmore/a;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    .line 33
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/i$1;

    invoke-direct {v0, p0}, Lcom/chanven/lib/cptr/loadmore/i$1;-><init>(Lcom/chanven/lib/cptr/loadmore/i;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->l:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 143
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/i$2;

    invoke-direct {v0, p0}, Lcom/chanven/lib/cptr/loadmore/i$2;-><init>(Lcom/chanven/lib/cptr/loadmore/i;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->m:Lcom/chanven/lib/cptr/loadmore/g;

    .line 153
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/i$3;

    invoke-direct {v0, p0}, Lcom/chanven/lib/cptr/loadmore/i$3;-><init>(Lcom/chanven/lib/cptr/loadmore/i;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->n:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 51
    invoke-direct {p0}, Lcom/chanven/lib/cptr/loadmore/i;->d()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/loadmore/i;)Lcom/chanven/lib/cptr/loadmore/i$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->c:Lcom/chanven/lib/cptr/loadmore/i$a;

    return-object v0
.end method

.method static synthetic b(Lcom/chanven/lib/cptr/loadmore/i;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/chanven/lib/cptr/loadmore/i;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SwipRefreshLayout has no child view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTarget"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/chanven/lib/cptr/loadmore/i;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/chanven/lib/cptr/loadmore/i;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->e:Z

    .line 165
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/c$b;->b()V

    .line 166
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->j:Lcom/chanven/lib/cptr/loadmore/f;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->j:Lcom/chanven/lib/cptr/loadmore/f;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/f;->a()V

    .line 169
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 78
    return-void
.end method

.method public a(Lcom/chanven/lib/cptr/loadmore/c;)V
    .locals 4

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    if-ne v0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    .line 87
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/e;->b()V

    .line 89
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/c;->a()Lcom/chanven/lib/cptr/loadmore/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    .line 90
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    iget-object v3, p0, Lcom/chanven/lib/cptr/loadmore/i;->n:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/chanven/lib/cptr/loadmore/e;->a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/c$b;Landroid/view/View$OnClickListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    .line 92
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/e;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    if-ne v0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-boolean p1, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    .line 103
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->i:Lcom/chanven/lib/cptr/loadmore/c;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/c;->a()Lcom/chanven/lib/cptr/loadmore/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    .line 106
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/b;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/loadmore/b;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    .line 116
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    if-nez v0, :cond_5

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unSupported contentView !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    .line 110
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/d;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/loadmore/d;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    goto :goto_1

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/h;

    invoke-direct {v0}, Lcom/chanven/lib/cptr/loadmore/h;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    iget-object v3, p0, Lcom/chanven/lib/cptr/loadmore/i;->n:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/chanven/lib/cptr/loadmore/e;->a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/c$b;Landroid/view/View$OnClickListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    .line 122
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/chanven/lib/cptr/loadmore/i;->m:Lcom/chanven/lib/cptr/loadmore/g;

    invoke-interface {v0, v1, v2}, Lcom/chanven/lib/cptr/loadmore/e;->a(Landroid/view/View;Lcom/chanven/lib/cptr/loadmore/g;)V

    goto :goto_0

    .line 126
    :cond_6
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->h:Z

    if-eqz v0, :cond_0

    .line 127
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->g:Z

    if-eqz v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/e;->a()V

    goto :goto_0

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->d:Lcom/chanven/lib/cptr/loadmore/e;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/e;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->e:Z

    .line 182
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/c$b;->c()V

    .line 183
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->e:Z

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->k:Lcom/chanven/lib/cptr/loadmore/c$b;

    invoke-interface {v0}, Lcom/chanven/lib/cptr/loadmore/c$b;->a()V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/loadmore/i;->b()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->e:Z

    return v0
.end method

.method public setOnLoadMoreListener(Lcom/chanven/lib/cptr/loadmore/f;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/i;->j:Lcom/chanven/lib/cptr/loadmore/f;

    .line 74
    return-void
.end method

.method public setOnSwipeRefreshListener(Lcom/chanven/lib/cptr/loadmore/i$a;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/chanven/lib/cptr/loadmore/i;->c:Lcom/chanven/lib/cptr/loadmore/i$a;

    .line 69
    iget-object v0, p0, Lcom/chanven/lib/cptr/loadmore/i;->a:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/chanven/lib/cptr/loadmore/i;->l:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 70
    return-void
.end method
