.class public Lcom/ksjhgd/xx/e/j;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:I

.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x2b

    const/16 v3, 0x1d

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ksjhgd/xx/e/u;->a:[Ljava/lang/String;

    aget-object v1, v1, v3

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

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ksjhgd/xx/e/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ksjhgd/xx/e/j;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput p5, p0, Lcom/ksjhgd/xx/e/j;->b:I

    iput-object p1, p0, Lcom/ksjhgd/xx/e/j;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/ksjhgd/xx/e/j;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ksjhgd/xx/e/j;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/ksjhgd/xx/e/j;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ksjhgd/xx/e/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ksjhgd/xx/e/j;
    .locals 2

    new-instance v0, Lcom/ksjhgd/xx/e/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/ksjhgd/xx/e/j;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method static synthetic a(Lcom/ksjhgd/xx/e/j;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ksjhgd/xx/e/j;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------new update\u5f71\u54cd\u7684\u884c\u6570------------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->close()V

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private b(Lcom/ksjhgd/xx/c/c;)J
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ksjhgd/xx/e/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ksjhgd/xx/e/j;->d(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package"

    iget-object v2, p1, Lcom/ksjhgd/xx/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dowload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "view"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "click"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->close()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v2, v6

    const-string v3, "view"

    aput-object v3, v2, v4

    const-string v3, "id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "view"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "view"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Lcom/ksjhgd/xx/e/j;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "action"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ksjhgd/xx/e/j;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " new getAllData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->close()V

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "view"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "click"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dowload"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/ksjhgd/xx/e/j;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public a(Lcom/ksjhgd/xx/c/c;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NewDatabaseHelper.insertRecord()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ksjhgd/xx/e/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/ksjhgd/xx/e/j;->b(Lcom/ksjhgd/xx/c/c;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT id FROM action WHERE id=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NewDatabaseHelper.find(new )"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ksjhgd/xx/e/h;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eqz v4, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->close()V

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DROP TABLE action"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "create table action(id TEXT,package TEXT,dowload int,view int,click int)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ksjhgd/xx/e/j;->close()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ksjhgd/xx/e/k;

    invoke-direct {v0, p0, p1}, Lcom/ksjhgd/xx/e/k;-><init>(Lcom/ksjhgd/xx/e/j;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e/k;->start()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ksjhgd/xx/e/l;

    invoke-direct {v0, p0, p1}, Lcom/ksjhgd/xx/e/l;-><init>(Lcom/ksjhgd/xx/e/j;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ksjhgd/xx/e/l;->start()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "create a database"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "create table action(id TEXT,package TEXT,dowload int,view int,click int)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upgrade a database"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
