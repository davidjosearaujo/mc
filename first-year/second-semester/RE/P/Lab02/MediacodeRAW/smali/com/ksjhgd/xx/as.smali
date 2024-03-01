.class Lcom/ksjhgd/xx/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/Klsjfgswas;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/Klsjfgswas;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsertADActivity.requestCallBack()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    check-cast p1, Lcom/ksjhgd/xx/c/k;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ksjhgd/xx/c/b;

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iput-object p1, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v0, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget-object v1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v1, v1, Lcom/ksjhgd/xx/c/b;->c:I

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v0, v0, Lcom/ksjhgd/xx/c/b;->c:I

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v1, v1, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v1, v1, Lcom/ksjhgd/xx/c/b;->c:I

    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget v1, v1, Lcom/ksjhgd/xx/a;->j:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_8

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    invoke-virtual {v0, v1}, Lcom/ksjhgd/xx/c/b;->a([Lcom/ksjhgd/xx/c/c;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v1, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget v2, p1, Lcom/ksjhgd/xx/c/b;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ksjhgd/xx/c/b;->d:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iput-object p1, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget v1, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget v2, p1, Lcom/ksjhgd/xx/c/b;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ksjhgd/xx/c/b;->d:I

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v1, v1, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget v2, v1, Lcom/ksjhgd/xx/a;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ksjhgd/xx/a;->j:I

    const-string v1, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v3, v3, Lcom/ksjhgd/xx/Klsjfgswas;->h:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->i:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/Klsjfgswas;->a(Lcom/ksjhgd/xx/Klsjfgswas;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    iget-object v0, v0, Lcom/ksjhgd/xx/Klsjfgswas;->b:Lcom/ksjhgd/xx/a;

    iget-object v0, v0, Lcom/ksjhgd/xx/a;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/as;->a:Lcom/ksjhgd/xx/Klsjfgswas;

    invoke-static {v0}, Lcom/ksjhgd/xx/Klsjfgswas;->b(Lcom/ksjhgd/xx/Klsjfgswas;)V

    goto/16 :goto_0
.end method
