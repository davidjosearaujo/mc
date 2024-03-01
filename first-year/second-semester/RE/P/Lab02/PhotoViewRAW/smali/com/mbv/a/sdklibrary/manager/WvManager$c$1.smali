.class Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;
.super Ljava/lang/Object;
.source "WvManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager$c;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbv/a/sdklibrary/manager/WvManager$c;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;->b:Lcom/mbv/a/sdklibrary/manager/WvManager$c;

    iput-object p2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    const-string v1, "X-Requested-With"

    const-string v2, "com.facebook.katana"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;->b:Lcom/mbv/a/sdklibrary/manager/WvManager$c;

    iget-object v1, v1, Lcom/mbv/a/sdklibrary/manager/WvManager$c;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-static {v1}, Lcom/mbv/a/sdklibrary/manager/WvManager;->access$300(Lcom/mbv/a/sdklibrary/manager/WvManager;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$c$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    return-void
.end method
