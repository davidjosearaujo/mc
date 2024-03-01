.class Lcom/ksjhgd/xx/bw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bv;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bw;->a:Lcom/ksjhgd/xx/bv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/bw;->a:Lcom/ksjhgd/xx/bv;

    invoke-static {v0}, Lcom/ksjhgd/xx/bv;->a(Lcom/ksjhgd/xx/bv;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->c(Lcom/ksjhgd/xx/bj;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
