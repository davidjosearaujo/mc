.class Lcom/ksjhgd/xx/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/o;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/o;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "ExitpopupsActivity.enclosing_method(\u663e\u793a\u5e7f\u544a)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->i:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v0, v0, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/a/f;->getCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    const-string v2, "3"

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v1, v1, Lcom/ksjhgd/xx/o;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->h:Lcom/ksjhgd/xx/a/f;

    invoke-virtual {v2}, Lcom/ksjhgd/xx/a/f;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/ksjhgd/xx/t;->a:Lcom/ksjhgd/xx/o;

    iget-object v2, v2, Lcom/ksjhgd/xx/o;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
