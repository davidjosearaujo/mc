.class Lcom/mbv/a/sdklibrary/b$1;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/b;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$1;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$1;->a:Lcom/mbv/a/sdklibrary/b;

    const-string v1, "is_send_install"

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)Z

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/mbv/a/sdklibrary/b$1;->a:Lcom/mbv/a/sdklibrary/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v0}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;I)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
