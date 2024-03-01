.class public Lcom/ksjhgd/xx/c/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x6

    new-instance v0, Lcom/ksjhgd/xx/c/n;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/n;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ksjhgd/xx/c/n;->b:Ljava/lang/String;

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ksjhgd/xx/c/n;->c:Ljava/lang/String;

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ksjhgd/xx/c/n;->a:Ljava/lang/String;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2f
        0x1e
        0x2b
        0x2c
        0x22
        0x28
        0x27
    .end array-data

    :array_1
    .array-data 4
        0x2b
        0x1e
        0x2c
        0x2e
        0x25
        0x2d
    .end array-data

    :array_2
    .array-data 4
        0x29
        0x2b
        0x28
        0x26
        0x29
        0x2d
    .end array-data

    :array_3
    .array-data 4
        0x1a
        0x29
        0x29
        0x2e
        0x2b
        0x25
    .end array-data
.end method
