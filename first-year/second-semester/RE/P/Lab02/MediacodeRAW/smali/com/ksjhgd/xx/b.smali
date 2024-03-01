.class Lcom/ksjhgd/xx/b;
.super Lcom/ksjhgd/xx/b/e;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/ksjhgd/xx/a;

.field private final synthetic e:Lcom/ksjhgd/xx/b/d;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/a;Ljava/lang/String;Lcom/ksjhgd/xx/b/d;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/d;)V
    .locals 6

    iput-object p1, p0, Lcom/ksjhgd/xx/b;->c:Lcom/ksjhgd/xx/a;

    iput-object p3, p0, Lcom/ksjhgd/xx/b;->e:Lcom/ksjhgd/xx/b/d;

    invoke-direct {p0, p2}, Lcom/ksjhgd/xx/b/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/b;->a:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/ksjhgd/xx/c;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/ksjhgd/xx/c;-><init>(Lcom/ksjhgd/xx/b;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/d;)V

    iput-object v0, p0, Lcom/ksjhgd/xx/b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ksjhgd/xx/b;)Lcom/ksjhgd/xx/a;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b;->c:Lcom/ksjhgd/xx/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/b;->c:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->d:Lcom/ksjhgd/xx/b/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/b;->e:Lcom/ksjhgd/xx/b/d;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/b/c;->b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ksjhgd/xx/b;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/ksjhgd/xx/b;->b:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
