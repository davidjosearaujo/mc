.class abstract Lcom/google/android/gms/internal/an$a;
.super Lcom/google/android/gms/internal/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field protected final b:Lcom/google/android/gms/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/b/b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/an;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/an$a;->b:Lcom/google/android/gms/b/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/an$a;->b:Lcom/google/android/gms/b/b;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/b;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/a;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/c$a",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/an$a;->b(Lcom/google/android/gms/internal/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/an;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/an$a;->a(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/an;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/an$a;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method protected abstract b(Lcom/google/android/gms/internal/c$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/c$a",
            "<*>;)V"
        }
    .end annotation
.end method
