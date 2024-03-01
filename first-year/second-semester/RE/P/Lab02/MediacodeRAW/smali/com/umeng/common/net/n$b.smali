.class Lcom/umeng/common/net/n$b;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/n;

.field private b:Lcom/umeng/common/net/o;

.field private c:Lcom/umeng/common/net/n$a;


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/n;Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/common/net/n$b;->a:Lcom/umeng/common/net/n;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/umeng/common/net/n$b;->b:Lcom/umeng/common/net/o;

    iput-object p3, p0, Lcom/umeng/common/net/n$b;->c:Lcom/umeng/common/net/n$a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Lcom/umeng/common/net/p$a;
    .locals 2

    iget-object v0, p0, Lcom/umeng/common/net/n$b;->a:Lcom/umeng/common/net/n;

    iget-object v1, p0, Lcom/umeng/common/net/n$b;->b:Lcom/umeng/common/net/o;

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/n;->a(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/common/net/p$a;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/n$b;->c:Lcom/umeng/common/net/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/n$b;->c:Lcom/umeng/common/net/n$a;

    invoke-interface {v0, p1}, Lcom/umeng/common/net/n$a;->a(Lcom/umeng/common/net/p$a;)V

    :cond_0
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/common/net/n$b;->a([Ljava/lang/Integer;)Lcom/umeng/common/net/p$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/umeng/common/net/p$a;

    invoke-virtual {p0, p1}, Lcom/umeng/common/net/n$b;->a(Lcom/umeng/common/net/p$a;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/umeng/common/net/n$b;->c:Lcom/umeng/common/net/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/n$b;->c:Lcom/umeng/common/net/n$a;

    invoke-interface {v0}, Lcom/umeng/common/net/n$a;->a()V

    :cond_0
    return-void
.end method
