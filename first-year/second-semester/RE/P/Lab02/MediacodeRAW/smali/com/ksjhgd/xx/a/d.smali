.class Lcom/ksjhgd/xx/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/a/c;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    iput p2, p0, Lcom/ksjhgd/xx/a/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/c;->a(Lcom/ksjhgd/xx/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/c;->b(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/d;->b:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/q;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/c;->a(Lcom/ksjhgd/xx/a/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/c;->b(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/d;->b:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v0}, Lcom/ksjhgd/xx/a/c;->c(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksjhgd/xx/x;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/a/d;->a:Lcom/ksjhgd/xx/a/c;

    invoke-static {v1}, Lcom/ksjhgd/xx/a/c;->b(Lcom/ksjhgd/xx/a/c;)Lcom/ksjhgd/xx/c/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget v2, p0, Lcom/ksjhgd/xx/a/d;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/a/c;->a(Lcom/ksjhgd/xx/c/c;)Z

    goto :goto_0
.end method
