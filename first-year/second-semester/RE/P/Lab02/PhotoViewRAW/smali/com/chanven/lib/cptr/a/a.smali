.class public Lcom/chanven/lib/cptr/a/a;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# instance fields
.field protected a:I

.field private b:Landroid/graphics/PointF;

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v1, p0, Lcom/chanven/lib/cptr/a/a;->a:I

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/chanven/lib/cptr/a/a;->b:Landroid/graphics/PointF;

    .line 12
    iput v1, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    .line 13
    iput v1, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    .line 15
    iput v1, p0, Lcom/chanven/lib/cptr/a/a;->h:I

    .line 17
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->i:F

    .line 18
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->j:F

    .line 19
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/a/a;->k:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->l:I

    .line 22
    iput v1, p0, Lcom/chanven/lib/cptr/a/a;->m:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->j:F

    .line 34
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/a/a;->k:Z

    .line 72
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->h:I

    .line 73
    iget-object v0, p0, Lcom/chanven/lib/cptr/a/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 74
    return-void
.end method

.method protected a(FFFF)V
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->j:F

    div-float v0, p4, v0

    invoke-virtual {p0, p3, v0}, Lcom/chanven/lib/cptr/a/a;->c(FF)V

    .line 50
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    div-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->i:F

    .line 67
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->a:I

    .line 68
    return-void
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public a(Lcom/chanven/lib/cptr/a/a;)V
    .locals 1

    .prologue
    .line 131
    iget v0, p1, Lcom/chanven/lib/cptr/a/a;->e:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    .line 132
    iget v0, p1, Lcom/chanven/lib/cptr/a/a;->f:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    .line 133
    iget v0, p1, Lcom/chanven/lib/cptr/a/a;->g:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    .line 134
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/a/a;->k:Z

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->j:F

    return v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 53
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->i:F

    .line 54
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->a:I

    .line 55
    return-void
.end method

.method public final b(FF)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/chanven/lib/cptr/a/a;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    .line 78
    iget-object v1, p0, Lcom/chanven/lib/cptr/a/a;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    .line 79
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/chanven/lib/cptr/a/a;->a(FFFF)V

    .line 80
    iget-object v0, p0, Lcom/chanven/lib/cptr/a/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    .line 109
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    .line 110
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/chanven/lib/cptr/a/a;->a(II)V

    .line 111
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/a/a;->k:Z

    .line 38
    return-void
.end method

.method protected c(FF)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->c:F

    .line 85
    iput p2, p0, Lcom/chanven/lib/cptr/a/a;->d:F

    .line 86
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    .line 123
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->l()V

    .line 124
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->m:I

    .line 42
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/chanven/lib/cptr/a/a;->l:I

    .line 174
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->m:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->i:F

    return v0
.end method

.method public f(I)Z
    .locals 1

    .prologue
    .line 195
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->a:I

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->c:F

    return v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->d:F

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    return v0
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->i:F

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/chanven/lib/cptr/a/a;->a:I

    .line 128
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->h:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->g()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->g()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->f:I

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    invoke-virtual {p0}, Lcom/chanven/lib/cptr/a/a;->v()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->l:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->l:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    goto :goto_0
.end method

.method public w()F
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    iget v0, p0, Lcom/chanven/lib/cptr/a/a;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/chanven/lib/cptr/a/a;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
