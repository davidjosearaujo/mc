.class final Lcom/mbv/a/sdklibrary/a$1;
.super Ljava/lang/Object;
.source "NewOC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/mbv/a/sdklibrary/b/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/b/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/mbv/a/sdklibrary/a/a/a;->a()Lcom/mbv/a/sdklibrary/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbv/a/sdklibrary/a/a/a;->b()V

    .line 54
    :cond_0
    return-void
.end method
