.class Lcom/ksjhgd/xx/bl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bk;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bl;->a:Lcom/ksjhgd/xx/bk;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/bl;->a:Lcom/ksjhgd/xx/bk;

    invoke-static {v0}, Lcom/ksjhgd/xx/bk;->a(Lcom/ksjhgd/xx/bk;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/bj;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/bl;->a:Lcom/ksjhgd/xx/bk;

    invoke-static {v0}, Lcom/ksjhgd/xx/bk;->a(Lcom/ksjhgd/xx/bk;)Lcom/ksjhgd/xx/bj;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->b(Lcom/ksjhgd/xx/bj;)V

    :cond_0
    return-void
.end method
