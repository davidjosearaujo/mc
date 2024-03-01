.class final Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;
    .locals 1

    .prologue
    .line 401
    new-array v0, p1, [Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState$1;->a(I)[Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
