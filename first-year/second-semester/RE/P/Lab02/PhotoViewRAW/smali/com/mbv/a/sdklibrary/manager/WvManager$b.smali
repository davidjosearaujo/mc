.class Lcom/mbv/a/sdklibrary/manager/WvManager$b;
.super Ljava/lang/Object;
.source "WvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method private constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Lcom/mbv/a/sdklibrary/manager/WvManager$1;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/mbv/a/sdklibrary/manager/WvManager$b;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V

    return-void
.end method


# virtual methods
.method public getSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$b;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$700(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbv/a/sdklibrary/manager/WvManager$b$1;-><init>(Lcom/mbv/a/sdklibrary/manager/WvManager$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method
