.class public Lcom/ksjhgd/xx/c/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x4

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->a:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->b:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->c:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->d:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->e:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->f:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->g:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->h:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/d;->i:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1a
        0x1d
        0x2c
    .end array-data

    :array_1
    .array-data 4
        0x2c
        0x22
        0x33
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x1d
    .end array-data

    :array_3
    .array-data 4
        0x27
        0x1a
        0x26
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x22
        0x1c
        0x28
        0x27
    .end array-data

    :array_5
    .array-data 4
        0x22
        0x27
        0x2d
        0x2b
        0x28
    .end array-data

    :array_6
    .array-data 4
        0x29
        0x1a
        0x1c
        0x24
        0x1a
        0x20
        0x1e
    .end array-data

    :array_7
    .array-data 4
        0x1a
        0x29
        0x29
        0x2e
        0x2b
        0x25
    .end array-data

    :array_8
    .array-data 4
        0x1b
        0x22
        0x20
        0x29
        0x22
        0x1c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Lcom/ksjhgd/xx/c/b;

    invoke-direct {v4}, Lcom/ksjhgd/xx/c/b;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ksjhgd/xx/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ksjhgd/xx/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;

    move-result-object v6

    sget-object v2, Lcom/ksjhgd/xx/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/ksjhgd/xx/c/b;->c:I

    :cond_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, v4, Lcom/ksjhgd/xx/c/b;->d:I

    invoke-static {p1, v3}, Lcom/ksjhgd/xx/e/q;->a(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/ksjhgd/xx/c/b;->a(I)V

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_6

    iget-object v2, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v2, v2

    if-eq v0, v2, :cond_5

    new-array v3, v0, [Lcom/ksjhgd/xx/c/c;

    move v0, v1

    :goto_2
    iget-object v2, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    iput-object v3, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    :cond_5
    invoke-virtual {v4}, Lcom/ksjhgd/xx/c/b;->a()V

    move-object v0, v4

    goto :goto_0

    :cond_6
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/ksjhgd/xx/c/c;

    invoke-direct {v8, v4}, Lcom/ksjhgd/xx/c/c;-><init>(Lcom/ksjhgd/xx/c/b;)V

    sget-object v9, Lcom/ksjhgd/xx/c/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->c:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->d:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->g:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->h:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    sget-object v9, Lcom/ksjhgd/xx/c/d;->i:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/ksjhgd/xx/c/c;->g:Ljava/lang/String;

    iget-object v3, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "app packageName is null "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_9

    iget-object v3, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "app Install "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v3, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/ksjhgd/xx/e/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "app db\u4e2d\u6709\u5b89\u88c5\u8bb0\u5f55 "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v8, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget-object v3, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aput-object v8, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    iget-object v2, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_d

    add-int/lit8 v2, v0, 0x1

    iget-object v5, v4, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v5, v5, v1

    aput-object v5, v3, v0

    move v0, v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method
