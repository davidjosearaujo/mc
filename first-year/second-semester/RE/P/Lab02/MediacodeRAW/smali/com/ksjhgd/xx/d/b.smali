.class Lcom/ksjhgd/xx/d/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/d/a;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/d/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iput p2, p0, Lcom/ksjhgd/xx/d/b;->b:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->b(Lcom/ksjhgd/xx/d/a;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startAd1(\u521d\u59cb\u5316\u9519\u8bef \u4f20\u5165\u7684contex\u4e3anull)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "startAd1(\u521d\u59cb\u5316\u9519\u8bef \u4f20\u5165\u7684contex\u4e3aFinishing\u72b6\u6001)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->b(Lcom/ksjhgd/xx/d/a;)Landroid/content/Context;

    move-result-object v0

    :goto_1
    new-instance v2, Lcom/ksjhgd/xx/bj;

    invoke-direct {v2, v0}, Lcom/ksjhgd/xx/bj;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/bj;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->a()V

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    iget v1, p0, Lcom/ksjhgd/xx/d/b;->b:I

    iput v1, v0, Lcom/ksjhgd/xx/bj;->n:I

    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/d/a;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->k()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/d/b;->a:Lcom/ksjhgd/xx/d/a;

    invoke-static {v0}, Lcom/ksjhgd/xx/d/a;->a(Lcom/ksjhgd/xx/d/a;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_1
.end method
