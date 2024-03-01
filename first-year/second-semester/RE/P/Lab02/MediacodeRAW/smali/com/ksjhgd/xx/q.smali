.class Lcom/ksjhgd/xx/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/p;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/p;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/q;->a:Lcom/ksjhgd/xx/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/q;->a:Lcom/ksjhgd/xx/p;

    invoke-static {v0}, Lcom/ksjhgd/xx/p;->a(Lcom/ksjhgd/xx/p;)Lcom/ksjhgd/xx/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/o;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/q;->a:Lcom/ksjhgd/xx/p;

    invoke-static {v0}, Lcom/ksjhgd/xx/p;->a(Lcom/ksjhgd/xx/p;)Lcom/ksjhgd/xx/o;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/o;->a(Lcom/ksjhgd/xx/o;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
