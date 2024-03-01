.class Lcom/ksjhgd/xx/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/au;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "InsertADActivity.cancelListener(OnCancelListener)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/au;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->onStop()V

    iget-object v0, p0, Lcom/ksjhgd/xx/au;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->onDestroy()V

    return-void
.end method
