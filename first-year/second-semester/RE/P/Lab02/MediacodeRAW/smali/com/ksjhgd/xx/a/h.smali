.class Lcom/ksjhgd/xx/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/a/f;

.field private final synthetic b:I

.field private final synthetic c:Lcom/ksjhgd/xx/a/i;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/a/f;ILcom/ksjhgd/xx/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iput p2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    iput-object p3, p0, Lcom/ksjhgd/xx/a/h;->c:Lcom/ksjhgd/xx/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LikeGridItemAdapter.onClick()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ksjhgd/xx/a/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v1, v1, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-boolean v1, v1, Lcom/ksjhgd/xx/a/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-boolean v0, v0, Lcom/ksjhgd/xx/a/f;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v1, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/f;->b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/f;->b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;

    move-result-object v0

    check-cast v0, Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->j()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/f;->b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/a;->a(Lcom/ksjhgd/xx/c/c;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/f;->b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->b:Landroid/content/Context;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v1, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v1, p0, Lcom/ksjhgd/xx/a/h;->b:I

    const/4 v2, 0x0

    aput v2, v0, v1

    :goto_2
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->c:Lcom/ksjhgd/xx/a/i;

    iget v2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    invoke-static {v0, v1, v2}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;Lcom/ksjhgd/xx/a/i;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    iget-object v0, v0, Lcom/ksjhgd/xx/a/f;->a:[I

    iget v1, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aput v3, v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/f;->b(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/h;->a:Lcom/ksjhgd/xx/a/f;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/f;->a(Lcom/ksjhgd/xx/a/f;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/h;->b:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/a;->a(Lcom/ksjhgd/xx/c/c;I)Z

    goto :goto_1

    :array_0
    .array-data 4
        0x36
        0x1a
        0x29
        0x29
        0x1d
        0x1a
        0x2d
        0x1a
    .end array-data
.end method
