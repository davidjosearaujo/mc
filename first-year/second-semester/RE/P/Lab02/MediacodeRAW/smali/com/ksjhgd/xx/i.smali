.class Lcom/ksjhgd/xx/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/f;

.field private final synthetic b:Lcom/ksjhgd/xx/e/a;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/f;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/i;->a:Lcom/ksjhgd/xx/f;

    iput-object p2, p0, Lcom/ksjhgd/xx/i;->b:Lcom/ksjhgd/xx/e/a;

    iput-object p3, p0, Lcom/ksjhgd/xx/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ksjhgd/xx/i;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/i;->a:Lcom/ksjhgd/xx/f;

    iget-object v1, p0, Lcom/ksjhgd/xx/i;->b:Lcom/ksjhgd/xx/e/a;

    iget-object v2, p0, Lcom/ksjhgd/xx/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/i;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;Lcom/ksjhgd/xx/e/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver.onReceive(\u5b89\u88c5\u4e0a\u62a5\u6210\u529f)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BootReceiver.onReceive(\u5b89\u88c5\u4e0a\u62a5\u5931\u8d25)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const-string v1, "state"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/i;->b:Lcom/ksjhgd/xx/e/a;

    iget-object v2, p0, Lcom/ksjhgd/xx/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/e/a;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
