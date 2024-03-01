.class Lcom/ksjhgd/xx/an;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/am;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/am;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/an;->a:Lcom/ksjhgd/xx/am;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ksjhgd/xx/an;->a:Lcom/ksjhgd/xx/am;

    invoke-static {v0}, Lcom/ksjhgd/xx/am;->a(Lcom/ksjhgd/xx/am;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v0

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/an;->a:Lcom/ksjhgd/xx/am;

    invoke-static {v0}, Lcom/ksjhgd/xx/am;->a(Lcom/ksjhgd/xx/am;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->b(Lcom/ksjhgd/xx/Klsjfgswas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ksjhgd/xx/an;->a:Lcom/ksjhgd/xx/am;

    invoke-static {v0}, Lcom/ksjhgd/xx/am;->a(Lcom/ksjhgd/xx/am;)Lcom/ksjhgd/xx/Klsjfgswas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->finish()V

    goto :goto_0
.end method
