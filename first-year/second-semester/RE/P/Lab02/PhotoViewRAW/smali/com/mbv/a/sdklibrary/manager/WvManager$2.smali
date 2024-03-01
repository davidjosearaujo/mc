.class Lcom/mbv/a/sdklibrary/manager/WvManager$2;
.super Ljava/lang/Object;
.source "WvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$2;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    iput-object p2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v1, "X-Requested-With"

    const-string v2, "com.facebook.katana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$2;->b:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$300(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method
