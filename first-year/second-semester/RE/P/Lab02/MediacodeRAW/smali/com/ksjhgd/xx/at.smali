.class Lcom/ksjhgd/xx/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/at;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ksjhgd/xx/at;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, p0, Lcom/ksjhgd/xx/at;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/ksjhgd/xx/a;->a(Lcom/ksjhgd/xx/c/c;I)Z

    iget-object v0, p0, Lcom/ksjhgd/xx/at;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const-string v0, "InsertADActivity.enclosing_method(\u70b9\u51fb\u786e\u5b9a\u6309\u94ae)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method
