.class public Lcom/google/android/gms/internal/b;
.super Lcom/google/android/gms/internal/aq;


# instance fields
.field private final e:Lcom/google/android/gms/common/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/internal/ao",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/c;


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aq;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->e:Lcom/google/android/gms/common/util/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->f:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/b;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->f:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/aq;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->f:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/c;->b(Lcom/google/android/gms/internal/b;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->f:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->a()V

    return-void
.end method

.method d()Lcom/google/android/gms/common/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/internal/ao",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->e:Lcom/google/android/gms/common/util/a;

    return-object v0
.end method
