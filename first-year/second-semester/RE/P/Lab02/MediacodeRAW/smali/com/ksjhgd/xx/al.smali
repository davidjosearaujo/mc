.class public Lcom/ksjhgd/xx/al;
.super Lcom/ksjhgd/xx/e;


# instance fields
.field g:Lcom/ksjhgd/xx/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;II)I
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/al;->g:Lcom/ksjhgd/xx/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ksjhgd/xx/d/a;

    invoke-direct {v0}, Lcom/ksjhgd/xx/d/a;-><init>()V

    iput-object v0, p0, Lcom/ksjhgd/xx/al;->g:Lcom/ksjhgd/xx/d/a;

    iget-object v0, p0, Lcom/ksjhgd/xx/al;->g:Lcom/ksjhgd/xx/d/a;

    iget-object v1, p0, Lcom/ksjhgd/xx/al;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/d/a;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/al;->g:Lcom/ksjhgd/xx/d/a;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/d/a;->a(II)V

    invoke-super {p0, p1, p2, p3}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/ksjhgd/xx/e;->a()V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ksjhgd/xx/e;->a(Landroid/content/Intent;I)V

    return-void
.end method
