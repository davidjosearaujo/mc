.class public Lcom/ksjhgd/xx/c/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field final synthetic j:Lcom/ksjhgd/xx/c/b;


# direct methods
.method public constructor <init>(Lcom/ksjhgd/xx/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/c/c;->j:Lcom/ksjhgd/xx/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
