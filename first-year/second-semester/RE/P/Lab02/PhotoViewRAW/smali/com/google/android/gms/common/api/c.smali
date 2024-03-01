.class public abstract Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a;,
        Lcom/google/android/gms/common/api/c$c;,
        Lcom/google/android/gms/common/api/c$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/c;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract registerConnectionFailedListener(Lcom/google/android/gms/common/api/c$c;)V
    .param p1    # Lcom/google/android/gms/common/api/c$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/c$c;)V
    .param p1    # Lcom/google/android/gms/common/api/c$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
