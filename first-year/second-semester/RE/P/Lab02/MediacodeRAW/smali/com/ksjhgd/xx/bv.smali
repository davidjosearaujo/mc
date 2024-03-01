.class Lcom/ksjhgd/xx/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/bv;)Lcom/ksjhgd/xx/bj;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "StartpopupsActivity.showListener(\u663e\u793a\u5e7f\u544a)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ksjhgd/xx/bw;

    invoke-direct {v0, p0}, Lcom/ksjhgd/xx/bw;-><init>(Lcom/ksjhgd/xx/bv;)V

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->h:Lcom/ksjhgd/xx/a/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/f;->getCount()I

    move-result v0

    if-ge v0, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget v1, v1, Lcom/ksjhgd/xx/bj;->n:I

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->h:Lcom/ksjhgd/xx/a/f;

    invoke-virtual {v2}, Lcom/ksjhgd/xx/a/f;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ksjhgd/xx/bv;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
