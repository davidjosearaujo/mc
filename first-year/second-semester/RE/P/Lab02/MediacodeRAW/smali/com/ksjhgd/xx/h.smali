.class Lcom/ksjhgd/xx/h;
.super Lcom/ksjhgd/xx/b/e;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/g;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ksjhgd/xx/b/c;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/g;Ljava/lang/String;Ljava/lang/String;Lcom/ksjhgd/xx/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/h;->a:Lcom/ksjhgd/xx/g;

    iput-object p3, p0, Lcom/ksjhgd/xx/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ksjhgd/xx/h;->c:Lcom/ksjhgd/xx/b/c;

    iput-object p5, p0, Lcom/ksjhgd/xx/h;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ksjhgd/xx/b/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/ksjhgd/xx/b/d;

    iget-object v1, p0, Lcom/ksjhgd/xx/h;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ksjhgd/xx/b/d;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/ksjhgd/xx/h;->c:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/b/c;->b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    new-instance v0, Lcom/ksjhgd/xx/b/d;

    iget-object v1, p0, Lcom/ksjhgd/xx/h;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ksjhgd/xx/b/d;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/ksjhgd/xx/h;->c:Lcom/ksjhgd/xx/b/c;

    invoke-virtual {v1, v0}, Lcom/ksjhgd/xx/b/c;->b(Lcom/ksjhgd/xx/b/d;)Landroid/graphics/Bitmap;

    return-void
.end method
