.class public Lcom/ksjhgd/xx/c/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xc

    const/4 v1, 0x5

    const/16 v2, 0xb

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->b:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->c:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->d:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->e:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->f:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->g:Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/c/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->m:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/ksjhgd/xx/e/u;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/c/h;->n:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x2f
        0x1e
        0x2b
    .end array-data

    :array_1
    .array-data 4
        0x22
        0x26
        0x1e
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x1a
        0x29
        0x29
        0x24
        0x1e
        0x32
    .end array-data

    :array_3
    .array-data 4
        0x2f
        0x1e
        0x2b
        0x38
        0x29
    .end array-data

    :array_4
    .array-data 4
        0x29
        0x27
    .end array-data

    :array_5
    .array-data 4
        0x1a
        0x1d
        0x24
        0x1e
        0x32
    .end array-data

    :array_6
    .array-data 4
        0x2d
        0x2e
        0x22
        0x2d
        0x32
        0x29
        0x1e
    .end array-data

    :array_7
    .array-data 4
        0x21
        0x2d
        0x2d
        0x29
        0x37
        0x36
        0x36
        0x1a
        0x29
        0x22
        0x35
        0x1f
        0x1a
        0x27
        0x23
        0x22
        0x1e
        0x35
        0x1c
        0x28
        0x26
        0x37
        0x41
        0x39
        0x39
        0x3a
    .end array-data

    :array_8
    .array-data 4
        0x36
        0x20
        0x1e
        0x2d
        0x0
        0x1d
        0x2c
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_9
    .array-data 4
        0x36
        0x22
        0x27
        0x2c
        0x2d
        0x1a
        0x25
        0x25
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_a
    .array-data 4
        0x36
        0x1f
        0x22
        0x27
        0x22
        0x2c
        0x21
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_b
    .array-data 4
        0x36
        0x2e
        0x2b
        0x3a
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_c
    .array-data 4
        0x36
        0x2f
        0x1e
        0x2b
        0x2c
        0x22
        0x28
        0x27
        0x35
        0x29
        0x21
        0x29
    .end array-data

    :array_d
    .array-data 4
        0x36
        0x20
        0x1e
        0x2d
        0x0
        0x29
        0x29
        0x35
        0x29
        0x21
        0x29
    .end array-data
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V
    .locals 8

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/ksjhgd/xx/c/i;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ksjhgd/xx/c/i;-><init>(Ljava/util/HashMap;Landroid/content/Context;ILjava/lang/String;Lcom/ksjhgd/xx/c/j;I)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ksjhgd/xx/c/h;->a(Landroid/content/Context;IILjava/lang/String;Ljava/util/HashMap;Lcom/ksjhgd/xx/c/j;)V

    return-void
.end method
