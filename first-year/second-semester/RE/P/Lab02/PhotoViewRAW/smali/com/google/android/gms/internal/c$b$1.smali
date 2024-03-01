.class Lcom/google/android/gms/internal/c$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/common/ConnectionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic b:Lcom/google/android/gms/internal/c$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/c$b;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/c$b$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/c$b;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/c$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/c$b;->b(Lcom/google/android/gms/internal/c$b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/c$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/u;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/c$b;->a:Lcom/google/android/gms/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/internal/c;->j(Lcom/google/android/gms/internal/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b$1;->b:Lcom/google/android/gms/internal/c$b;

    invoke-static {v1}, Lcom/google/android/gms/internal/c$b;->c(Lcom/google/android/gms/internal/c$b;)Lcom/google/android/gms/internal/ao;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b$1;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c$a;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
