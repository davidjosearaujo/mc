.class Lcom/ksjhgd/xx/bq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bq;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/bq;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->c(Lcom/ksjhgd/xx/bj;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
