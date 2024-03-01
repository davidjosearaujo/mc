.class Lcom/ksjhgd/xx/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartpopupsActivity.gameCallBack()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    check-cast p1, Lcom/ksjhgd/xx/c/k;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/x;->a(Lcom/ksjhgd/xx/x;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iput v2, v0, Lcom/ksjhgd/xx/x;->w:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    check-cast p1, Lcom/ksjhgd/xx/c/b;

    iput-object p1, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/x;->a(Lcom/ksjhgd/xx/x;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iput v2, v0, Lcom/ksjhgd/xx/x;->w:I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ksjhgd/xx/x;->v:Lcom/ksjhgd/xx/a/c;

    if-nez v0, :cond_4

    new-instance v0, Lcom/ksjhgd/xx/a/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, v2, Lcom/ksjhgd/xx/x;->y:Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0, v1, v2}, Lcom/ksjhgd/xx/a/c;-><init>(Lcom/ksjhgd/xx/x;Lcom/ksjhgd/xx/c/b;)V

    sput-object v0, Lcom/ksjhgd/xx/x;->v:Lcom/ksjhgd/xx/a/c;

    sget-object v0, Lcom/ksjhgd/xx/x;->v:Lcom/ksjhgd/xx/a/c;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/c;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iget-object v1, v1, Lcom/ksjhgd/xx/x;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/ac;->a:Lcom/ksjhgd/xx/x;

    iput v3, v0, Lcom/ksjhgd/xx/x;->w:I

    goto :goto_0
.end method
