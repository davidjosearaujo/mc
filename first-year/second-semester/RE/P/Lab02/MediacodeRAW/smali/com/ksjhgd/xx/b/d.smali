.class public Lcom/ksjhgd/xx/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ksjhgd/xx/b/d;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ksjhgd/xx/b/d;->b:J

    iput-object p1, p0, Lcom/ksjhgd/xx/b/d;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/ksjhgd/xx/b/d;->b:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ksjhgd/xx/b/d;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/ksjhgd/xx/b/d;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lcom/ksjhgd/xx/b/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/ksjhgd/xx/b/d;

    iget-object v1, p0, Lcom/ksjhgd/xx/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
