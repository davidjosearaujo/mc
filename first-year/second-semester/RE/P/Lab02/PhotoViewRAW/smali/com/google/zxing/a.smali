.class public final Lcom/google/zxing/a;
.super Ljava/lang/Object;
.source "Dimension.java"


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/zxing/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/a;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    instance-of v1, p1, Lcom/google/zxing/a;

    if-eqz v1, :cond_0

    .line 46
    check-cast p1, Lcom/google/zxing/a;

    .line 47
    iget v1, p0, Lcom/google/zxing/a;->a:I

    iget v2, p1, Lcom/google/zxing/a;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/zxing/a;->b:I

    iget v2, p1, Lcom/google/zxing/a;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/zxing/a;->a:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/zxing/a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
