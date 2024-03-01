.class public Lcom/umeng/common/util/DeltaUpdate;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static final b:Ljava/lang/String; = "bspatch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "bspatch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/common/util/DeltaUpdate;->a:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/common/util/DeltaUpdate;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/umeng/common/util/DeltaUpdate;->bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/umeng/common/util/DeltaUpdate;->a:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/umeng/common/util/DeltaUpdate;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/common/util/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static native bspatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
