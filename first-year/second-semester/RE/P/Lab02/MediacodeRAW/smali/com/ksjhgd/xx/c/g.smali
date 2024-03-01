.class public Lcom/ksjhgd/xx/c/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/ksjhgd/xx/c/f;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/f;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ksjhgd/xx/c/f;->a:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ksjhgd/xx/c/f;->b:Ljava/lang/String;

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ksjhgd/xx/c/f;->c:Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ksjhgd/xx/c/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 4
        0x2d
        0x2e
        0x22
        0x2d
        0x32
        0x29
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0x2c
        0x2d
        0x1a
        0x2d
        0x2e
        0x2c
    .end array-data

    :array_2
    .array-data 4
        0x2d
        0x22
        0x26
        0x1e
        0x38
        0x22
        0x27
        0x2d
        0x1e
        0x2b
        0x2f
        0x1a
        0x25
    .end array-data

    :array_3
    .array-data 4
        0x1f
        0x2b
        0x1e
        0x2a
        0x2e
        0x1e
        0x27
        0x1c
        0x32
    .end array-data
.end method
