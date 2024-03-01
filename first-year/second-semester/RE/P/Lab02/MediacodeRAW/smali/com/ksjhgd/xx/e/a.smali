.class public Lcom/ksjhgd/xx/e/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x27

    const/16 v6, 0x25

    const/16 v5, 0x1b

    const/16 v4, 0x2d

    const/16 v3, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ksjhgd/xx/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ksjhgd/xx/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ksjhgd/xx/e/a;
    .locals 2

    new-instance v0, Lcom/ksjhgd/xx/e/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/ksjhgd/xx/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private a(Lcom/ksjhgd/xx/c/c;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    const-string v0, "package"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseHelper.getDowloadTaskInfo(\u83b7\u53d6\u4e0b\u8f7d\u4efb\u52a1)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const-string v0, "dowload_state"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ksjhgd/xx/c/c;->h:Ljava/lang/String;

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLjava/lang/String;)Lcom/ksjhgd/xx/c/c;
    .locals 11

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-instance v0, Lcom/ksjhgd/xx/c/b;

    invoke-direct {v0}, Lcom/ksjhgd/xx/c/b;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/ksjhgd/xx/c/c;

    invoke-direct {v8, v0}, Lcom/ksjhgd/xx/c/c;-><init>(Lcom/ksjhgd/xx/c/b;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v9

    const-string v3, "package"

    aput-object v3, v2, v6

    const-string v3, "dowload_state"

    aput-object v3, v2, v10

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "dowload_state=?"

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_1
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "-1"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v8, v1, v0}, Lcom/ksjhgd/xx/e/a;->a(Lcom/ksjhgd/xx/c/c;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v8

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ksjhgd/xx/m;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/ksjhgd/xx/m;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez p2, :cond_3

    if-lt v2, v10, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DatabaseHelper.getDowloadTaskInfo(\u5f53\u524d\u4efb\u52a1\u8d85\u8fc7\u4e86\u91cd\u8bd5\u6b21\u6570)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8, v1, v0}, Lcom/ksjhgd/xx/e/a;->a(Lcom/ksjhgd/xx/c/c;Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v8

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v6

    const-string v3, "package"

    aput-object v3, v2, v7

    const/4 v3, 0x2

    const-string v4, "state"

    aput-object v4, v2, v3

    const-string v3, "state like ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    return-object v8

    :cond_0
    new-instance v1, Lcom/ksjhgd/xx/e/b;

    invoke-direct {v1, p0}, Lcom/ksjhgd/xx/e/b;-><init>(Lcom/ksjhgd/xx/e/a;)V

    const-string v2, "id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ksjhgd/xx/e/b;->a:Ljava/lang/String;

    const-string v2, "package"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ksjhgd/xx/e/b;->b:Ljava/lang/String;

    const-string v2, "state"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ksjhgd/xx/e/b;->c:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/ksjhgd/xx/c/c;)V
    .locals 5

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "dowload_state"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "package"

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    iget-object v3, p1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "action"

    const-string v4, "id=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------update------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----------update\u5f71\u54cd\u7684\u884c\u6570------------"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/ksjhgd/xx/c/c;)I
    .locals 4

    iget-object v0, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/e/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ksjhgd/xx/e/a;->a(Lcom/ksjhgd/xx/c/c;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dowload_state"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "view"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "click"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    long-to-int v0, v2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT id FROM action WHERE id=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DatabaseHelper.find()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    if-eqz v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v8, v4, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v8, v9

    const-string v0, ""

    aput-object v0, v8, v10

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v9

    const-string v3, "package"

    aput-object v3, v2, v10

    const-string v3, "state"

    aput-object v3, v2, v4

    const/4 v3, 0x3

    const-string v4, "view"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "click"

    aput-object v4, v2, v3

    const-string v3, "package like ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v3, "state"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v2, v8, v9

    aput-object v3, v8, v10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v8

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v9

    const-string v3, "package"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "state"

    aput-object v4, v2, v3

    const-string v3, "package like ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_0
    return v9

    :cond_0
    const-string v1, "state"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v8

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/a;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "-------------selectInstall \u5f53\u524dad\u662f\u5426\u5df2\u7ecf\u5b89\u88c5:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    move v9, v1

    goto :goto_0

    :cond_1
    move v1, v9

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create a database"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    const-string v0, "create table action(id int,package varchar(30),state varchar(2),view int,click int,title varchar(20),url varchar(100),dowload_state varchar(2))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "upgrade a database"

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method
