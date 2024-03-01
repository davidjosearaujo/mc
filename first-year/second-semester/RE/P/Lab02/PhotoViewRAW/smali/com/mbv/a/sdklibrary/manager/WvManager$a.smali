.class Lcom/mbv/a/sdklibrary/manager/WvManager$a;
.super Ljava/lang/Object;
.source "WvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method public constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->a:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$900(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->getPresenter()Lcom/mbv/a/sdklibrary/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$800(Lcom/mbv/a/sdklibrary/manager/WvManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/sdklibrary/entity/HtmData;

    invoke-interface {v1, v2, v0}, Lcom/mbv/a/sdklibrary/a/a;->a(Ljava/lang/String;Lcom/mbv/a/sdklibrary/entity/HtmData;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$a;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
