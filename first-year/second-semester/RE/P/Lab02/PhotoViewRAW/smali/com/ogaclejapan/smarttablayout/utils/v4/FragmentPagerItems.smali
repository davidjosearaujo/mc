.class public Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItems;
.source "FragmentPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ogaclejapan/smarttablayout/utils/PagerItems",
        "<",
        "Lcom/ogaclejapan/smarttablayout/utils/v4/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/PagerItems;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;

    invoke-direct {v0, p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
