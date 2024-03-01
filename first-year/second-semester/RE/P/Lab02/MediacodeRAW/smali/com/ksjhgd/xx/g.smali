.class Lcom/ksjhgd/xx/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ksjhgd/xx/c/j;


# instance fields
.field a:Lcom/ksjhgd/xx/c/b;

.field final synthetic b:Lcom/ksjhgd/xx/f;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/f;)V
    .locals 1

    iput-object p1, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/r;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bootreceiver.requestCallBack()"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/ksjhgd/xx/c/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    check-cast p1, Lcom/ksjhgd/xx/c/k;

    iget-object v1, p1, Lcom/ksjhgd/xx/c/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/ksjhgd/xx/c/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ksjhgd/xx/c/b;

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_a

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v0, v0, Lcom/ksjhgd/xx/c/b;->c:I

    div-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v2, v2, Lcom/ksjhgd/xx/c/b;->c:I

    rem-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget-object v2, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    iget v2, v2, Lcom/ksjhgd/xx/f;->i:I

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/r;->t:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    const-string v1, "\u5df2\u52a0\u8f7d\u6240\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v2, p1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    invoke-virtual {v0, v2}, Lcom/ksjhgd/xx/c/b;->a([Lcom/ksjhgd/xx/c/c;)V

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v2, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget v3, p1, Lcom/ksjhgd/xx/c/b;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/ksjhgd/xx/c/b;->d:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v2, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget v3, p1, Lcom/ksjhgd/xx/c/b;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/ksjhgd/xx/c/b;->d:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v0, v0, Lcom/ksjhgd/xx/c/b;->d:I

    iget-object v1, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget v1, v1, Lcom/ksjhgd/xx/c/b;->c:I

    if-ge v0, v1, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    iget v2, v1, Lcom/ksjhgd/xx/f;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ksjhgd/xx/f;->i:I

    const-string v1, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "inbackground"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    invoke-static {v1}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    iget-object v3, v3, Lcom/ksjhgd/xx/f;->h:Lcom/ksjhgd/xx/c/j;

    invoke-static {v1, v2, v0, v3}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-ge v0, v4, :cond_a

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    const-string v1, "\u6ca1\u6709\u6709\u6548\u5e7f\u544a\u6570\u636e"

    invoke-static {v0, v1}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v4, Lcom/ksjhgd/xx/b/c;

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->b:Lcom/ksjhgd/xx/f;

    invoke-static {v0}, Lcom/ksjhgd/xx/f;->a(Lcom/ksjhgd/xx/f;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ksjhgd/xx/b/c;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/ksjhgd/xx/b/f;

    invoke-direct {v7}, Lcom/ksjhgd/xx/b/f;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v0, v0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v0, v0, v6

    iget-object v2, v0, Lcom/ksjhgd/xx/c/c;->g:Ljava/lang/String;

    new-instance v0, Lcom/ksjhgd/xx/h;

    iget-object v1, p0, Lcom/ksjhgd/xx/g;->a:Lcom/ksjhgd/xx/c/b;

    iget-object v1, v1, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v1, v1, v6

    iget-object v5, v1, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    move-object v1, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/ksjhgd/xx/h;-><init>(Lcom/ksjhgd/xx/g;Ljava/lang/String;Ljava/lang/String;Lcom/ksjhgd/xx/b/c;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/ksjhgd/xx/b/f;->a(Lcom/ksjhgd/xx/b/e;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2
.end method
