.class public abstract Lcom/google/android/gms/common/api/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ao",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final e:I


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/internal/c$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/c$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/m;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/m;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/h;->c:Lcom/google/android/gms/common/api/a$a;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/m;Ljava/lang/Object;Lcom/google/android/gms/common/api/c$b;Lcom/google/android/gms/common/api/c$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/android/gms/internal/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ao",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->d:Lcom/google/android/gms/internal/ao;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/j;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/j;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/j;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/h;->e:I

    return v0
.end method
