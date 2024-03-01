.class Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;
.super Ljava/lang/Object;
.source "TabWallPaperListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a(Ljava/lang/Exception;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iput-object p2, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 117
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v2, v0

    .line 119
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_0

    .line 120
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    new-instance v6, Lcom/mbv/a/wp/a/a;

    invoke-direct {v6}, Lcom/mbv/a/wp/a/a;-><init>()V

    .line 122
    const-string v7, "pic_url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mbv/a/wp/a/a;->a(Ljava/lang/String;)V

    .line 123
    const-string v7, "products_pic"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/mbv/a/wp/a/a;->b(Ljava/lang/String;)V

    .line 124
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v2, v2, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v2}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->b(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 127
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/mbv/a/wp/b/a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v0, v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/chanven/lib/cptr/loadmore/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chanven/lib/cptr/loadmore/i;->a()V

    .line 129
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v0, v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/chanven/lib/cptr/loadmore/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/loadmore/i;->a(Z)V

    .line 138
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v0, v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/mbv/a/wp/adapter/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/adapter/a;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v0, v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->d(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/mbv/a/wp/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/wp/adapter/a;->notifyDataSetChanged()V

    .line 143
    :goto_2
    return-void

    .line 131
    :cond_2
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v3, v3, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v3}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->a(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/mbv/a/wp/b/a;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_3

    .line 133
    :goto_3
    iget-object v1, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v1, v1, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v1}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/chanven/lib/cptr/loadmore/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chanven/lib/cptr/loadmore/i;->b(Z)V

    .line 134
    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2$1;->b:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;

    iget-object v0, v0, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment$2;->a:Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;

    invoke-static {v0}, Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;->c(Lcom/mbv/a/wp/fragment/TabWallPaperListFragment;)Lcom/chanven/lib/cptr/loadmore/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chanven/lib/cptr/loadmore/i;->a(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 132
    goto :goto_3
.end method
