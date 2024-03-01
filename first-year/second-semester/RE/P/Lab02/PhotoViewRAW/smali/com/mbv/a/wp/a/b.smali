.class public Lcom/mbv/a/wp/a/b;
.super Ljava/lang/Object;
.source "ImgTypeBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/mbv/a/wp/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/mbv/a/wp/a/b;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mbv/a/wp/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/mbv/a/wp/a/b;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
