.class Lcom/ksjhgd/xx/br;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/br;->a:Lcom/ksjhgd/xx/bj;

    iput-object p2, p0, Lcom/ksjhgd/xx/br;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/ksjhgd/xx/br;->b:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
