.class Lcom/ksjhgd/xx/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ca;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Utils.checkKitUpdate(\u83b7\u53d6appconfig\u5931\u8d25)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/ksjhgd/xx/c/k;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/ksjhgd/xx/c/f;

    if-eqz v0, :cond_0

    const-string v0, "Utils.checkKitUpdate(\u83b7\u53d6appconfig)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/ksjhgd/xx/c/f;

    iget-object v0, p0, Lcom/ksjhgd/xx/ca;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0, p1}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/c/f;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ca;->a:Lcom/ksjhgd/xx/bj;

    invoke-static {v0}, Lcom/ksjhgd/xx/bj;->d(Lcom/ksjhgd/xx/bj;)V

    goto :goto_0
.end method
