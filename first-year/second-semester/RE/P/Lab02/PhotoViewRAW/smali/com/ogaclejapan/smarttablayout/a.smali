.class public abstract Lcom/ogaclejapan/smarttablayout/a;
.super Ljava/lang/Object;
.source "SmartTabIndicationInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/a$a;,
        Lcom/ogaclejapan/smarttablayout/a$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/ogaclejapan/smarttablayout/a;

.field public static final b:Lcom/ogaclejapan/smarttablayout/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/ogaclejapan/smarttablayout/a$b;

    invoke-direct {v0}, Lcom/ogaclejapan/smarttablayout/a$b;-><init>()V

    sput-object v0, Lcom/ogaclejapan/smarttablayout/a;->a:Lcom/ogaclejapan/smarttablayout/a;

    .line 26
    new-instance v0, Lcom/ogaclejapan/smarttablayout/a$a;

    invoke-direct {v0}, Lcom/ogaclejapan/smarttablayout/a$a;-><init>()V

    sput-object v0, Lcom/ogaclejapan/smarttablayout/a;->b:Lcom/ogaclejapan/smarttablayout/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/ogaclejapan/smarttablayout/a;
    .locals 3

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/ogaclejapan/smarttablayout/a;->a:Lcom/ogaclejapan/smarttablayout/a;

    .line 36
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/ogaclejapan/smarttablayout/a;->b:Lcom/ogaclejapan/smarttablayout/a;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract a(F)F
.end method

.method public abstract b(F)F
.end method

.method public c(F)F
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
