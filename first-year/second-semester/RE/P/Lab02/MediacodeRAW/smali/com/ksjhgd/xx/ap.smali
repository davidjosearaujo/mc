.class Lcom/ksjhgd/xx/ap;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/ao;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z

.field private final synthetic e:Lcom/ksjhgd/xx/d;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/ao;Landroid/view/View;Ljava/lang/String;ZLcom/ksjhgd/xx/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    iput-object p2, p0, Lcom/ksjhgd/xx/ap;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/ksjhgd/xx/ap;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ksjhgd/xx/ap;->d:Z

    iput-object p5, p0, Lcom/ksjhgd/xx/ap;->e:Lcom/ksjhgd/xx/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksjhgd/xx/ap;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    iget-object v0, v0, Lcom/ksjhgd/xx/ao;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ksjhgd/xx/ap;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    iget-object v1, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    invoke-static {v1}, Lcom/ksjhgd/xx/ao;->a(Lcom/ksjhgd/xx/ao;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v1

    const-string v2, "img_bg.png"

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/ksjhgd/xx/ao;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    iget-object v1, v1, Lcom/ksjhgd/xx/ao;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    invoke-static {v0}, Lcom/ksjhgd/xx/ao;->a(Lcom/ksjhgd/xx/ao;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/ap;->e:Lcom/ksjhgd/xx/d;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/ksjhgd/xx/ap;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/ap;->c:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ksjhgd/xx/ap;->a:Lcom/ksjhgd/xx/ao;

    invoke-static {v3}, Lcom/ksjhgd/xx/ao;->a(Lcom/ksjhgd/xx/ao;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v3

    iget-object v3, v3, Lcom/ksjhgd/xx/Klsjfgswas;->d:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v3}, Lcom/ksjhgd/xx/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ksjhgd/xx/ap;->e:Lcom/ksjhgd/xx/d;

    invoke-interface {v1, v0}, Lcom/ksjhgd/xx/d;->a(Landroid/graphics/BitmapFactory$Options;)V

    :cond_1
    return-void
.end method
