.class public final Lcom/facebook/share/model/ShareMessengerURLActionButton;
.super Lcom/facebook/share/model/ShareMessengerActionButton;
.source "ShareMessengerURLActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareMessengerURLActionButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/share/model/ShareMessengerURLActionButton$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerActionButton;-><init>(Landroid/os/Parcel;)V

    .line 66
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->a:Landroid/net/Uri;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->c:Z

    .line 68
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->b:Landroid/net/Uri;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->e:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->d:Z

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0

    :cond_1
    move v1, v2

    .line 70
    goto :goto_1
.end method


# virtual methods
.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->c:Z

    return v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->e:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;->d:Z

    return v0
.end method
