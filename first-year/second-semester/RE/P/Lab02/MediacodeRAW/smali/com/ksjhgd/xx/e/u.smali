.class public Lcom/ksjhgd/xx/e/u;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    return-void
.end method

.method public static varargs a([I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    invoke-static {}, Lcom/ksjhgd/xx/e/u;->a()V

    :cond_0
    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ksjhgd/xx/e/u;->a()V

    :cond_1
    const-string v0, ""

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_2

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget v3, p0, v1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a()V
    .locals 6

    const/16 v5, 0x1a

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_0

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_1

    :goto_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v1, 0x34

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v1, 0x35

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v1, 0x36

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v1, 0x37

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v1, 0x38

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    :cond_0
    sget-object v2, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1a

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x39

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
