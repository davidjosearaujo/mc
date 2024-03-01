.class public Lcom/ksjhgd/xx/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# instance fields
.field public b:[Lcom/ksjhgd/xx/c/c;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ksjhgd/xx/c/b;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ksjhgd/xx/c/b;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget-object v4, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    aput-object v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    new-array v0, p1, [Lcom/ksjhgd/xx/c/c;

    iput-object v0, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    new-instance v2, Lcom/ksjhgd/xx/c/c;

    invoke-direct {v2, p0}, Lcom/ksjhgd/xx/c/c;-><init>(Lcom/ksjhgd/xx/c/b;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a([Lcom/ksjhgd/xx/c/c;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/ksjhgd/xx/c/c;

    iget-object v1, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    iget-object v2, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/ksjhgd/xx/c/b;->b:[Lcom/ksjhgd/xx/c/c;

    goto :goto_0
.end method
