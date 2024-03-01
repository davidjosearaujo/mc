.class Lcom/ksjhgd/xx/e/l;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ksjhgd/xx/e/j;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ksjhgd/xx/e/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksjhgd/xx/e/l;->a:Lcom/ksjhgd/xx/e/j;

    iput-object p2, p0, Lcom/ksjhgd/xx/e/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ksjhgd/xx/e/l;->a:Lcom/ksjhgd/xx/e/j;

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v2, v3

    const-string v1, "dowload"

    aput-object v1, v2, v4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/ksjhgd/xx/e/l;->b:Ljava/lang/String;

    aput-object v1, v4, v3

    const-string v1, "action"

    const-string v3, "id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dowload"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "dowload"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ksjhgd/xx/e/l;->a:Lcom/ksjhgd/xx/e/j;

    iget-object v3, p0, Lcom/ksjhgd/xx/e/l;->b:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/ksjhgd/xx/e/j;->a(Lcom/ksjhgd/xx/e/j;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method
