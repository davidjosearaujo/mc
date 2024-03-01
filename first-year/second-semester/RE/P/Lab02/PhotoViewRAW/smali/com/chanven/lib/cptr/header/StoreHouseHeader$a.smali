.class Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;
.super Ljava/lang/Object;
.source "StoreHouseHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 282
    iput-object p1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    .line 285
    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->c:I

    .line 286
    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->d:I

    .line 287
    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->e:I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/chanven/lib/cptr/header/StoreHouseHeader;Lcom/chanven/lib/cptr/header/StoreHouseHeader$1;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;-><init>(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->f:Z

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    .line 294
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-static {v0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->a(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)I

    move-result v0

    iget-object v1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    iget-object v1, v1, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->e:I

    .line 295
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-static {v0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->b(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)I

    move-result v0

    iget v1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->e:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->c:I

    .line 296
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->d:I

    .line 297
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->run()V

    .line 298
    return-void
.end method

.method static synthetic a(Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->f:Z

    .line 329
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-virtual {v0, p0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method static synthetic b(Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 303
    iget v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    iget v1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->c:I

    rem-int v3, v0, v1

    move v1, v2

    .line 304
    :goto_0
    iget v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->d:I

    if-ge v1, v0, :cond_1

    .line 306
    iget v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->c:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 307
    iget v4, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    if-le v0, v4, :cond_0

    .line 304
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    iget-object v4, v4, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v0, v4

    .line 312
    iget-object v4, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    iget-object v4, v4, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chanven/lib/cptr/header/b;

    .line 314
    invoke-virtual {v0, v2}, Lcom/chanven/lib/cptr/header/b;->setFillAfter(Z)V

    .line 315
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/chanven/lib/cptr/header/b;->setFillEnabled(Z)V

    .line 316
    invoke-virtual {v0, v2}, Lcom/chanven/lib/cptr/header/b;->setFillBefore(Z)V

    .line 317
    iget-object v4, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-static {v4}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->c(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/chanven/lib/cptr/header/b;->setDuration(J)V

    .line 318
    iget-object v4, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-static {v4}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->d(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)F

    move-result v4

    iget-object v5, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    invoke-static {v5}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->e(Lcom/chanven/lib/cptr/header/StoreHouseHeader;)F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/chanven/lib/cptr/header/b;->a(FF)V

    goto :goto_1

    .line 321
    :cond_1
    iget v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->b:I

    .line 322
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->f:Z

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->a:Lcom/chanven/lib/cptr/header/StoreHouseHeader;

    iget v1, p0, Lcom/chanven/lib/cptr/header/StoreHouseHeader$a;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/chanven/lib/cptr/header/StoreHouseHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :cond_2
    return-void
.end method
