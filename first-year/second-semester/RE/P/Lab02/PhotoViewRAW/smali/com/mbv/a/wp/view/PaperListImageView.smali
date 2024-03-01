.class public Lcom/mbv/a/wp/view/PaperListImageView;
.super Landroid/widget/ImageView;
.source "PaperListImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Lcom/mbv/a/wp/view/PaperListImageView;->getMeasuredWidth()I

    move-result v0

    .line 36
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mbv/a/wp/view/PaperListImageView;->setMeasuredDimension(II)V

    .line 37
    return-void
.end method
