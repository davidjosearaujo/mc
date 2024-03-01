.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ac$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ac;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/lang/Long;

.field private final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ac$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ac$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ac$a;->a()Lcom/google/android/gms/internal/ac;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/ac;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ac;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ac;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ac;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ac;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ac;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ac;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ac;->h:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/ac;->i:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/ac$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/ac;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ac;->g:Z

    return v0
.end method

.method public g()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->i:Ljava/lang/Long;

    return-object v0
.end method
