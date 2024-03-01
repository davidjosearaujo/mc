.class Lcom/mbv/a/sdklibrary/manager/JniManager$a;
.super Ljava/lang/Object;
.source "JniManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/JniManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mbv/a/sdklibrary/manager/JniManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/mbv/a/sdklibrary/manager/JniManager;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/manager/JniManager;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/manager/JniManager$a;->a:Lcom/mbv/a/sdklibrary/manager/JniManager;

    return-void
.end method

.method static synthetic a()Lcom/mbv/a/sdklibrary/manager/JniManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/JniManager$a;->a:Lcom/mbv/a/sdklibrary/manager/JniManager;

    return-object v0
.end method
