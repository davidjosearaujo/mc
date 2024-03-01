.class Lcom/ksjhgd/xx/ae;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ae;->a:Lcom/ksjhgd/xx/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/ae;->a:Lcom/ksjhgd/xx/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/x;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/ae;->a:Lcom/ksjhgd/xx/x;

    invoke-static {v0}, Lcom/ksjhgd/xx/x;->a(Lcom/ksjhgd/xx/x;)V

    :cond_0
    return-void
.end method
