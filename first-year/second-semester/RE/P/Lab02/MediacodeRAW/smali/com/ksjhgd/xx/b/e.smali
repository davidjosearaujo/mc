.class public abstract Lcom/ksjhgd/xx/b/e;
.super Ljava/lang/Object;


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ksjhgd/xx/b/e;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/ksjhgd/xx/b/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/ksjhgd/xx/b/e;

    iget-object v0, p0, Lcom/ksjhgd/xx/b/e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
