.class Lcom/mbv/a/wp/TabWallPaperListActivity$4;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "TabWallPaperListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/wp/TabWallPaperListActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/wp/TabWallPaperListActivity;


# direct methods
.method constructor <init>(Lcom/mbv/a/wp/TabWallPaperListActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mbv/a/wp/TabWallPaperListActivity$4;->a:Lcom/mbv/a/wp/TabWallPaperListActivity;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 5

    .prologue
    .line 116
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    new-instance v3, Lcom/mbv/a/wp/a/b;

    invoke-direct {v3}, Lcom/mbv/a/wp/a/b;-><init>()V

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Lcom/mbv/a/wp/a/b;->a(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mbv/a/wp/a/b;->b(Ljava/lang/String;)V

    .line 133
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 135
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mbv/a/wp/b/a;->a()Lcom/mbv/a/wp/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mbv/a/wp/b/a;->a(Ljava/util/List;)V

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mbv/a/wp/TabWallPaperListActivity$4;->a:Lcom/mbv/a/wp/TabWallPaperListActivity;

    new-instance v1, Lcom/mbv/a/wp/TabWallPaperListActivity$4$1;

    invoke-direct {v1, p0}, Lcom/mbv/a/wp/TabWallPaperListActivity$4$1;-><init>(Lcom/mbv/a/wp/TabWallPaperListActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/TabWallPaperListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
