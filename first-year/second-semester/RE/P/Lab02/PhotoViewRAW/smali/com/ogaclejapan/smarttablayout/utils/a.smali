.class public abstract Lcom/ogaclejapan/smarttablayout/utils/a;
.super Ljava/lang/Object;
.source "PagerItem.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:F


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;F)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/a;->a:Ljava/lang/CharSequence;

    .line 27
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/utils/a;->b:F

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/utils/a;->b:F

    return v0
.end method
