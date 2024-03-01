.class public final Lcom/mbv/a/wp/c/a;
.super Ljava/lang/Object;
.source "CollectionUtil.java"


# direct methods
.method public static a(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method
