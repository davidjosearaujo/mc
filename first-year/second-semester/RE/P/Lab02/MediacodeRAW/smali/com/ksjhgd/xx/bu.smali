.class Lcom/ksjhgd/xx/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/bj;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/bu;->a:Lcom/ksjhgd/xx/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "StartpopupsActivity.cancelListener(OnCancelListener)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/bu;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->b()V

    iget-object v0, p0, Lcom/ksjhgd/xx/bu;->a:Lcom/ksjhgd/xx/bj;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/bj;->e()V

    return-void
.end method
