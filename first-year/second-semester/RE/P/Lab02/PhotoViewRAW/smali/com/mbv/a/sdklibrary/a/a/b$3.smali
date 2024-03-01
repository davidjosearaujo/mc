.class Lcom/mbv/a/sdklibrary/a/a/b$3;
.super Ljava/lang/Object;
.source "OneClickPresenterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/a/a/b;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/a/a/b;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/a/a/b$3;->a:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$3;->a:Lcom/mbv/a/sdklibrary/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/a/a/b;Z)Z

    .line 182
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$3;->a:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0, v2}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/a/a/b;Lcom/mbv/a/sdklibrary/entity/JsData;)Lcom/mbv/a/sdklibrary/entity/JsData;

    .line 183
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$3;->a:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0, v2}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/a/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/a/a/b$3;->a:Lcom/mbv/a/sdklibrary/a/a/b;

    invoke-static {v0}, Lcom/mbv/a/sdklibrary/a/a/b;->a(Lcom/mbv/a/sdklibrary/a/a/b;)V

    .line 185
    return-void
.end method
