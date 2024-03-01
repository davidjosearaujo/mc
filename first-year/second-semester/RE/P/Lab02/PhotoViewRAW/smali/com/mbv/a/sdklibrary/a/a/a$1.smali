.class Lcom/mbv/a/sdklibrary/a/a/a$1;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "ExecuTaskPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/a/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/a/a/a;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/a/a/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 3

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/gson/d;

    invoke-direct {v1}, Lcom/google/gson/d;-><init>()V

    new-instance v2, Lcom/mbv/a/sdklibrary/a/a/a$1$1;

    invoke-direct {v2, p0}, Lcom/mbv/a/sdklibrary/a/a/a$1$1;-><init>(Lcom/mbv/a/sdklibrary/a/a/a$1;)V

    invoke-virtual {v2}, Lcom/mbv/a/sdklibrary/a/a/a$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v0, v0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v0, v0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    iget-object v0, v0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/a;->a(Lcom/mbv/a/sdklibrary/a/a/a;)V

    .line 69
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/a;->b(Lcom/mbv/a/sdklibrary/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/mbv/a/sdklibrary/a/a/a;->a:Ljava/util/List;

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/a$1;->a:Lcom/mbv/a/sdklibrary/a/a/a;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/mbv/a/sdklibrary/a/a/a;->b:Ljava/util/Queue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
