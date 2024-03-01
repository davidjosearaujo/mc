.class Lcom/facebook/share/widget/a$a;
.super Lcom/facebook/internal/g$a;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/g",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Ljava/lang/Object;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/widget/a;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/a;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/share/widget/a$a;->b:Lcom/facebook/share/widget/a;

    invoke-direct {p0, p1}, Lcom/facebook/internal/g$a;-><init>(Lcom/facebook/internal/g;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/widget/a$1;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/a$a;-><init>(Lcom/facebook/share/widget/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 215
    invoke-static {p1}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/share/model/ShareContent;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/share/widget/a$a;->b:Lcom/facebook/share/widget/a;

    invoke-virtual {v0}, Lcom/facebook/share/widget/a;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/facebook/share/widget/a$a;->b:Lcom/facebook/share/widget/a;

    invoke-virtual {v1}, Lcom/facebook/share/widget/a;->e()Z

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/facebook/share/widget/a$a;->b:Lcom/facebook/share/widget/a;

    invoke-static {v2}, Lcom/facebook/share/widget/a;->a(Lcom/facebook/share/widget/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/facebook/share/widget/a;->a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/a;)V

    .line 222
    new-instance v2, Lcom/facebook/share/widget/a$a$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/a$a$1;-><init>(Lcom/facebook/share/widget/a$a;Lcom/facebook/internal/a;Lcom/facebook/share/model/ShareContent;Z)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/a;->b(Ljava/lang/Class;)Lcom/facebook/internal/e;

    move-result-object v1

    .line 222
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/f;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/f$a;Lcom/facebook/internal/e;)V

    .line 243
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 206
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/a$a;->a(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 1

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 206
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/a$a;->a(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method
