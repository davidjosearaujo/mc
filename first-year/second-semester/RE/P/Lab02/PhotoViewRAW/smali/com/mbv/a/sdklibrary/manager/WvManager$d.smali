.class Lcom/mbv/a/sdklibrary/manager/WvManager$d;
.super Ljava/lang/Object;
.source "WvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final a:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/manager/WvManager;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/manager/WvManager$d;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    return-void
.end method

.method static synthetic a()Lcom/mbv/a/sdklibrary/manager/WvManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/WvManager$d;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    return-object v0
.end method
