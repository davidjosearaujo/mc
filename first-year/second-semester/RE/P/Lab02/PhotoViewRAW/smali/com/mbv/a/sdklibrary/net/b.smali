.class public abstract Lcom/mbv/a/sdklibrary/net/b;
.super Ljava/lang/Object;
.source "HttpCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbv/a/sdklibrary/net/BaseRequest;Ljava/lang/Exception;[B)V
    .locals 0

    .prologue
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/mbv/a/sdklibrary/net/b;->a(Ljava/lang/Exception;[B)V

    .line 6
    return-void
.end method

.method public a(Ljava/lang/Exception;[B)V
    .locals 0

    .prologue
    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :cond_0
    return-void
.end method
