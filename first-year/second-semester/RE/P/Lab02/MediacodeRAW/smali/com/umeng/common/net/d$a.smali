.class Lcom/umeng/common/net/d$a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/umeng/common/net/DownloadingService$b;

.field b:Landroid/app/Notification;

.field c:I

.field d:I

.field e:Lcom/umeng/common/net/a$a;

.field f:[J


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/a$a;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/common/net/d$a;->f:[J

    iput p2, p0, Lcom/umeng/common/net/d$a;->c:I

    iput-object p1, p0, Lcom/umeng/common/net/d$a;->e:Lcom/umeng/common/net/a$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;)V
    .locals 1

    iget v0, p0, Lcom/umeng/common/net/d$a;->c:I

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/util/SparseArray;)V
    .locals 1

    iget v0, p0, Lcom/umeng/common/net/d$a;->c:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/umeng/common/net/d$a;->c:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
