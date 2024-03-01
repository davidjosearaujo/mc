.class public Lmvrvrc/tbncqapz/n/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x47

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static varargs a([I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x43

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    invoke-static {}, Lmvrvrc/tbncqapz/n/a;->a()V

    :cond_0
    sget-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    sget-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    invoke-static {}, Lmvrvrc/tbncqapz/n/a;->a()V

    :cond_1
    const-string v1, ""

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    aget v3, p0, v0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

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

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x34

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x35

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x36

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x37

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x38

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x43

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x44

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x45

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    const/16 v1, 0x46

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void

    :cond_0
    sget-object v2, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1a

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lmvrvrc/tbncqapz/n/a;->a:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x39

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method
