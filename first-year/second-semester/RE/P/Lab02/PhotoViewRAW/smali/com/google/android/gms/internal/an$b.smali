.class public final Lcom/google/android/gms/internal/an$b;
.super Lcom/google/android/gms/internal/an$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/f$a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/f$a;Lcom/google/android/gms/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/f$a",
            "<*>;",
            "Lcom/google/android/gms/b/b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/an$a;-><init>(ILcom/google/android/gms/b/b;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/an$b;->c:Lcom/google/android/gms/internal/f$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/an$a;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/gms/internal/a;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/an$a;->a(Lcom/google/android/gms/internal/a;Z)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/c$a",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/c$a;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/an$b;->c:Lcom/google/android/gms/internal/f$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/i;->a:Lcom/google/android/gms/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/h;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UnregisterListenerTask"

    const-string v1, "Received call to unregister a listener without a matching registration call."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/an$b;->b:Lcom/google/android/gms/b/b;

    new-instance v1, Lcom/google/android/gms/common/api/zza;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/b;->b(Ljava/lang/Exception;)Z

    goto :goto_0
.end method
