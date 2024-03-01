.class Lcom/ksjhgd/xx/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/HashMap;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/ksjhgd/xx/c/j;

.field private final synthetic f:I


# direct methods
.method constructor <init>(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Lcom/ksjhgd/xx/c/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/c/i;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    iput p3, p0, Lcom/ksjhgd/xx/c/i;->c:I

    iput-object p4, p0, Lcom/ksjhgd/xx/c/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    iput p6, p0, Lcom/ksjhgd/xx/c/i;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ksjhgd/xx/c/i;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-object v1, Lcom/ksjhgd/xx/c/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/ksjhgd/xx/e/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksjhgd/xx/e/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ksjhgd/xx/e/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->d:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->e:Ljava/lang/String;

    sget-object v2, Lcom/ksjhgd/xx/e/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/ksjhgd/xx/c/e;

    iget v2, p0, Lcom/ksjhgd/xx/c/i;->c:I

    invoke-direct {v1, v2}, Lcom/ksjhgd/xx/c/e;-><init>(I)V

    :try_start_0
    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->d:Ljava/lang/String;

    sget-object v3, Lcom/ksjhgd/xx/c/h;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ksjhgd/xx/c/i;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ksjhgd/xx/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ksjhgd/xx/e/h;->b(ZLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    new-instance v2, Lcom/ksjhgd/xx/c/k;

    const-string v3, "DataRequestTask.request"

    invoke-direct {v2, v3, v0}, Lcom/ksjhgd/xx/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ksjhgd/xx/c/j;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/ksjhgd/xx/c/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/ksjhgd/xx/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/ksjhgd/xx/c/i;->f:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lcom/ksjhgd/xx/c/d;

    invoke-direct {v1}, Lcom/ksjhgd/xx/c/d;-><init>()V

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    :pswitch_0
    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    invoke-interface {v1, v0}, Lcom/ksjhgd/xx/c/j;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    new-instance v2, Lcom/ksjhgd/xx/c/k;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff0c\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    invoke-direct {v2, v0, v3}, Lcom/ksjhgd/xx/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ksjhgd/xx/c/j;->a(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    :try_start_2
    new-instance v1, Lcom/ksjhgd/xx/c/m;

    invoke-direct {v1}, Lcom/ksjhgd/xx/c/m;-><init>()V

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/c/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    new-instance v1, Lcom/ksjhgd/xx/c/g;

    invoke-direct {v1}, Lcom/ksjhgd/xx/c/g;-><init>()V

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/c/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    new-instance v1, Lcom/ksjhgd/xx/c/o;

    invoke-direct {v1}, Lcom/ksjhgd/xx/c/o;-><init>()V

    iget-object v2, p0, Lcom/ksjhgd/xx/c/i;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/ksjhgd/xx/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    new-instance v2, Lcom/ksjhgd/xx/c/k;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff0c\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    invoke-direct {v2, v0, v3}, Lcom/ksjhgd/xx/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ksjhgd/xx/c/j;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/i;->e:Lcom/ksjhgd/xx/c/j;

    new-instance v2, Lcom/ksjhgd/xx/c/k;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff0c\u521d\u59cb\u5316\u672a\u5b8c\u6210Exception"

    invoke-direct {v2, v0, v3}, Lcom/ksjhgd/xx/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/ksjhgd/xx/c/j;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
