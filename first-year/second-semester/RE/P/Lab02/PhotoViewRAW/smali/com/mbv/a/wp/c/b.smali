.class public Lcom/mbv/a/wp/c/b;
.super Ljava/lang/Object;
.source "ImageUrlsUtil.java"


# static fields
.field private static b:Lcom/mbv/a/wp/c/b;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbv/a/wp/c/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/mbv/a/wp/c/b;->b:Lcom/mbv/a/wp/c/b;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/mbv/a/wp/c/b;

    invoke-direct {v0}, Lcom/mbv/a/wp/c/b;-><init>()V

    sput-object v0, Lcom/mbv/a/wp/c/b;->b:Lcom/mbv/a/wp/c/b;

    .line 17
    :cond_0
    sget-object v0, Lcom/mbv/a/wp/c/b;->b:Lcom/mbv/a/wp/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mbv/a/wp/c/b;->a:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mbv/a/wp/c/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method
