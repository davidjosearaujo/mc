.class Lcom/ksjhgd/xx/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v0, v0, Lcom/ksjhgd/xx/bj;->l:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v1, v1, Lcom/ksjhgd/xx/bj;->l:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v1, v1, Lcom/ksjhgd/xx/bj;->l:[I

    aget v1, v1, v0

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v1, v1, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

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

    const-string v4, "/appdata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ksjhgd/xx/bz;->a:Lcom/ksjhgd/xx/bj;

    iget-object v2, v2, Lcom/ksjhgd/xx/bj;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
