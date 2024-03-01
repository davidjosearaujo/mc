.class Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;
.super Ljava/lang/Object;
.source "WvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager$b;->getSource(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbv/a/sdklibrary/manager/WvManager$b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->c:Lcom/mbv/a/sdklibrary/manager/WvManager$b;

    iput-object p2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    new-instance v0, Lcom/mbv/a/sdklibrary/entity/HtmData;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/entity/HtmData;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbv/a/sdklibrary/entity/HtmData;->setUrl(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbv/a/sdklibrary/entity/HtmData;->setHtml(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->c:Lcom/mbv/a/sdklibrary/manager/WvManager$b;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/manager/WvManager$b;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$800(Lcom/mbv/a/sdklibrary/manager/WvManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->c:Lcom/mbv/a/sdklibrary/manager/WvManager$b;

    iget-object v0, v0, Lcom/mbv/a/sdklibrary/manager/WvManager$b;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$a;

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->c:Lcom/mbv/a/sdklibrary/manager/WvManager$b;

    iget-object v2, v2, Lcom/mbv/a/sdklibrary/manager/WvManager$b;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    iget-object v3, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mbv/a/sdklibrary/manager/WvManager$a;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method
