.class Lcom/mbv/a/sdklibrary/b$2;
.super Ljava/lang/Object;
.source "Tracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/b;->c()V
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
    .line 61
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/b$2;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$2;->a:Lcom/mbv/a/sdklibrary/b;

    const-string v1, "is_request_install"

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;Ljava/lang/String;)Z

    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/b$2;->a:Lcom/mbv/a/sdklibrary/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/b;->a(Lcom/mbv/a/sdklibrary/b;)V

    .line 67
    :cond_0
    return-void
.end method
