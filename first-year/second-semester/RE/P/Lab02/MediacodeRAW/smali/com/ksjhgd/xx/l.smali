.class Lcom/ksjhgd/xx/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/k;

.field private final synthetic b:[I

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/k;[ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/l;->a:Lcom/ksjhgd/xx/k;

    iput-object p2, p0, Lcom/ksjhgd/xx/l;->b:[I

    iput-object p3, p0, Lcom/ksjhgd/xx/l;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.uploadNewUR(\u4e0a\u62a5\u6570\u636e\u5931\u8d25)"

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
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "BootReceiver.uploadNewUR(\u4e0a\u62a5\u6570\u636e\u6210\u529f)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ksjhgd/xx/l;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ksjhgd/xx/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ksjhgd/xx/l;->b:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksjhgd/xx/e/j;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.uploadNewUR(...\u6570\u636e\u4e0a\u62a5\u5931\u8d25)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
