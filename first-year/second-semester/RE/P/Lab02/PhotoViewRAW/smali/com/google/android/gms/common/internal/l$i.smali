.class public Lcom/google/android/gms/common/internal/l$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/l$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/l$i;->a:Lcom/google/android/gms/common/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$i;->a:Lcom/google/android/gms/common/internal/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/l$i;->a:Lcom/google/android/gms/common/internal/l;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/l;->s()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/l;->a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$i;->a:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->d(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l$i;->a:Lcom/google/android/gms/common/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->d(Lcom/google/android/gms/common/internal/l;)Lcom/google/android/gms/common/internal/l$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/l$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method