.class Lcom/ksjhgd/xx/bs;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bs;->a:Lcom/ksjhgd/xx/bj;

    iput p2, p0, Lcom/ksjhgd/xx/bs;->b:I

    iput p3, p0, Lcom/ksjhgd/xx/bs;->c:I

    iput-object p4, p0, Lcom/ksjhgd/xx/bs;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/ksjhgd/xx/bs;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ksjhgd/xx/bs;->a:Lcom/ksjhgd/xx/bj;

    iget v1, p0, Lcom/ksjhgd/xx/bs;->b:I

    iget v2, p0, Lcom/ksjhgd/xx/bs;->c:I

    iget-object v3, p0, Lcom/ksjhgd/xx/bs;->d:Landroid/content/Context;

    const-string v4, "point_normal.png"

    const-string v5, "point_selected.png"

    const/16 v6, 0x14

    invoke-static/range {v0 .. v6}, Lcom/ksjhgd/xx/bj;->a(Lcom/ksjhgd/xx/bj;IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/ksjhgd/xx/bs;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
