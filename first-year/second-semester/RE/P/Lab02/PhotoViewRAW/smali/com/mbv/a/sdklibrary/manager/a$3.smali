.class Lcom/mbv/a/sdklibrary/manager/a$3;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/manager/a;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/a;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/a$3;->a:Lcom/mbv/a/sdklibrary/manager/a;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 3

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/google/gson/d;

    invoke-direct {v1}, Lcom/google/gson/d;-><init>()V

    new-instance v2, Lcom/mbv/a/sdklibrary/manager/a$3$1;

    invoke-direct {v2, p0}, Lcom/mbv/a/sdklibrary/manager/a$3$1;-><init>(Lcom/mbv/a/sdklibrary/manager/a$3;)V

    invoke-virtual {v2}, Lcom/mbv/a/sdklibrary/manager/a$3$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 141
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/a$3;->a:Lcom/mbv/a/sdklibrary/manager/a;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/a;->a(Lcom/mbv/a/sdklibrary/manager/a;)Lcom/mbv/a/sdklibrary/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mbv/a/sdklibrary/a/a;->a(Ljava/util/ArrayList;)V

    .line 142
    invoke-static {}, Lcom/mbv/a/sdklibrary/b;->a()Lcom/mbv/a/sdklibrary/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
