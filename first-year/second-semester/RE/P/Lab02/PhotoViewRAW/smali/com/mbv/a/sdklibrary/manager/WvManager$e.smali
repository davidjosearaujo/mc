.class Lcom/mbv/a/sdklibrary/manager/WvManager$e;
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
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method private constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/manager/WvManager$e;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->getPresenter()Lcom/mbv/a/sdklibrary/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mbv/a/sdklibrary/a/a;->b(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$e;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$402(Lcom/mbv/a/sdklibrary/manager/WvManager;Z)Z

    .line 112
    return-void
.end method
