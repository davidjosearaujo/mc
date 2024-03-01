.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;
.super Ljava/lang/Object;
.source "ViewPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-direct {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;->a:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    .line 38
    return-void
.end method
