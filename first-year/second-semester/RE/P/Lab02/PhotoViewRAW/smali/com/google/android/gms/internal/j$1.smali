.class Lcom/google/android/gms/internal/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/j;->a(Lcom/google/android/gms/internal/zzayb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/zzayb;

.field final synthetic b:Lcom/google/android/gms/internal/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/j;Lcom/google/android/gms/internal/zzayb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/j$1;->b:Lcom/google/android/gms/internal/j;

    iput-object p2, p0, Lcom/google/android/gms/internal/j$1;->a:Lcom/google/android/gms/internal/zzayb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/j$1;->b:Lcom/google/android/gms/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/j$1;->a:Lcom/google/android/gms/internal/zzayb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/j;->a(Lcom/google/android/gms/internal/j;Lcom/google/android/gms/internal/zzayb;)V

    return-void
.end method
