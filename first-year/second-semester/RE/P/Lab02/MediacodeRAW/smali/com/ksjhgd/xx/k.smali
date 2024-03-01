.class Lcom/ksjhgd/xx/k;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/k;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x6

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    array-length v0, v6

    new-array v2, v0, [Lcom/ksjhgd/xx/e/j;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v3, v6

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ad"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ksjhgd/xx/k;->a:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Lcom/ksjhgd/xx/c/h;->l:Ljava/lang/String;

    new-instance v5, Lcom/ksjhgd/xx/l;

    iget-object v7, p0, Lcom/ksjhgd/xx/k;->a:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v7}, Lcom/ksjhgd/xx/l;-><init>(Lcom/ksjhgd/xx/k;[ILandroid/content/Context;)V

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/ksjhgd/xx/k;->a:Landroid/content/Context;

    aget v4, v6, v0

    invoke-static {v3, v4}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v3

    aput-object v3, v2, v0

    aget v3, v6, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/ksjhgd/xx/e/j;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v0, "BootReceiver.uploadNewUR(\u6570\u636e\u4e3a\u7a7a\u4e0d\u4e0a\u62a5)"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
