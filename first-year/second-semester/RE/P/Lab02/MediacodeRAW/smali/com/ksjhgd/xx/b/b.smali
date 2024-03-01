.class Lcom/ksjhgd/xx/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/b/a;


# direct methods
.method private constructor <init>(Lcom/ksjhgd/xx/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/b/b;->a:Lcom/ksjhgd/xx/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksjhgd/xx/b/a;Lcom/ksjhgd/xx/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/b/b;-><init>(Lcom/ksjhgd/xx/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksjhgd/xx/b/d;Lcom/ksjhgd/xx/b/d;)I
    .locals 4

    invoke-virtual {p1}, Lcom/ksjhgd/xx/b/d;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ksjhgd/xx/b/d;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ksjhgd/xx/b/d;

    check-cast p2, Lcom/ksjhgd/xx/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/ksjhgd/xx/b/b;->a(Lcom/ksjhgd/xx/b/d;Lcom/ksjhgd/xx/b/d;)I

    move-result v0

    return v0
.end method
