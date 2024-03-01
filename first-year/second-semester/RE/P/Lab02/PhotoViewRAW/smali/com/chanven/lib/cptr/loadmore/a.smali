.class public Lcom/chanven/lib/cptr/loadmore/a;
.super Ljava/lang/Object;
.source "DefaultLoadMoreViewFooter.java"

# interfaces
.implements Lcom/chanven/lib/cptr/loadmore/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chanven/lib/cptr/loadmore/a$1;,
        Lcom/chanven/lib/cptr/loadmore/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/chanven/lib/cptr/loadmore/c$b;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/chanven/lib/cptr/loadmore/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chanven/lib/cptr/loadmore/a$a;-><init>(Lcom/chanven/lib/cptr/loadmore/a;Lcom/chanven/lib/cptr/loadmore/a$1;)V

    return-object v0
.end method
