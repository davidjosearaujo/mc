.class Lcom/ogaclejapan/smarttablayout/b$a;
.super Ljava/lang/Object;
.source "SmartTabStrip.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/b$1;)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/b$a;->a:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/b$a;->a:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs a([I)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/b$a;->a:[I

    .line 438
    return-void
.end method

.method public final b(I)I
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/b$a;->b:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/b$a;->b:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs b([I)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/b$a;->b:[I

    .line 442
    return-void
.end method
