.class Lcom/ksjhgd/xx/e/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/e/s;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Utils.checkKitUpdate(\u67e5\u8be2\u5347\u7ea7\u5931\u8d25\u5931\u8d25)"

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
    instance-of v0, p1, Lcom/ksjhgd/xx/c/n;

    if-eqz v0, :cond_0

    const-string v0, "Utils.checkKitUpdate(\u83b7\u53d6\u5347\u7ea7\u4fe1\u606f)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    check-cast p1, Lcom/ksjhgd/xx/c/n;

    iget-object v0, p1, Lcom/ksjhgd/xx/c/n;->b:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ksjhgd/xx/c/n;->b:Ljava/lang/String;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/ksjhgd/xx/c/n;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ksjhgd/xx/c/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/e/s;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/n;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
