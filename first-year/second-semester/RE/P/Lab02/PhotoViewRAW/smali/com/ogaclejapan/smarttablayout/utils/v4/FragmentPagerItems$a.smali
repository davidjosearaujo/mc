.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;
.super Ljava/lang/Object;
.source "FragmentPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-direct {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/ogaclejapan/smarttablayout/utils/v4/a;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->add(Ljava/lang/Object;)Z

    .line 70
    return-object p0
.end method

.method public a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;->a:Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    return-object v0
.end method
