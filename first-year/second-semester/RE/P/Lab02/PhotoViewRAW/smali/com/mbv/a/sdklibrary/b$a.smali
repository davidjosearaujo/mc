.class Lcom/mbv/a/sdklibrary/b$a;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mbv/a/sdklibrary/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/mbv/a/sdklibrary/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbv/a/sdklibrary/b;-><init>(Lcom/mbv/a/sdklibrary/b$1;)V

    sput-object v0, Lcom/mbv/a/sdklibrary/b$a;->a:Lcom/mbv/a/sdklibrary/b;

    return-void
.end method

.method static synthetic a()Lcom/mbv/a/sdklibrary/b;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/mbv/a/sdklibrary/b$a;->a:Lcom/mbv/a/sdklibrary/b;

    return-object v0
.end method
