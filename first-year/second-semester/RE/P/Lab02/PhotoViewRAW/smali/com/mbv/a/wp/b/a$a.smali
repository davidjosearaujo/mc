.class Lcom/mbv/a/wp/b/a$a;
.super Ljava/lang/Object;
.source "PaperDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mbv/a/wp/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/mbv/a/wp/b/a;

    invoke-direct {v0}, Lcom/mbv/a/wp/b/a;-><init>()V

    sput-object v0, Lcom/mbv/a/wp/b/a$a;->a:Lcom/mbv/a/wp/b/a;

    return-void
.end method

.method static synthetic a()Lcom/mbv/a/wp/b/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mbv/a/wp/b/a$a;->a:Lcom/mbv/a/wp/b/a;

    return-object v0
.end method
