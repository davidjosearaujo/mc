.class Lcom/ksjhgd/xx/ad;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/x;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/x;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/ad;->a:Lcom/ksjhgd/xx/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/ksjhgd/xx/ad;->a:Lcom/ksjhgd/xx/x;

    iget-object v3, v3, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v3, v3, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/ksjhgd/xx/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/ksjhgd/xx/c/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ksjhgd/xx/ad;->a:Lcom/ksjhgd/xx/x;

    iget-object v2, v2, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget v2, v2, Lcom/ksjhgd/xx/c/b;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ksjhgd/xx/ad;->a:Lcom/ksjhgd/xx/x;

    iget-object v0, v0, Lcom/ksjhgd/xx/x;->f:Landroid/content/Context;

    const-string v2, "/addata"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/ksjhgd/xx/e/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/ksjhgd/xx/ad;->a:Lcom/ksjhgd/xx/x;

    iget-object v4, v4, Lcom/ksjhgd/xx/x;->x:Lcom/ksjhgd/xx/c/b;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v0

    sget-object v5, Lcom/ksjhgd/xx/c/d;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->f:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->h:Ljava/lang/String;

    iget-object v6, v4, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v5, Lcom/ksjhgd/xx/c/d;->i:Ljava/lang/String;

    iget-object v4, v4, Lcom/ksjhgd/xx/c/c;->g:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
