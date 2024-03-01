.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.source "ViewPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItems",
        "<",
        "Lcom/ogaclejapan/smarttablayout/utils/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;

    invoke-direct {v0, p0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
