.class Lcom/ksjhgd/xx/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==========bean======"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v2, v2, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  bean.list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v2, v2, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bean.list.length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v2, v2, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v2, v2, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v2, v2, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ksjhgd/xx/av;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/c/c;)V

    goto :goto_0
.end method
