.class Lcom/ksjhgd/xx/bh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bg;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bh;->a:Lcom/ksjhgd/xx/bg;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bh;->a:Lcom/ksjhgd/xx/bg;

    iget-object v1, p0, Lcom/ksjhgd/xx/bh;->a:Lcom/ksjhgd/xx/bg;

    iget v1, v1, Lcom/ksjhgd/xx/bg;->p:I

    iget-object v2, p0, Lcom/ksjhgd/xx/bh;->a:Lcom/ksjhgd/xx/bg;

    iget-object v2, v2, Lcom/ksjhgd/xx/bg;->q:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/bg;->a(ILjava/io/File;)V

    :cond_0
    return-void
.end method
