.class Lcom/mbv/a/sdklibrary/manager/a$1;
.super Lcom/mbv/a/sdklibrary/net/b;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/manager/a;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/a$1;->a:Lcom/mbv/a/sdklibrary/manager/a;

    invoke-direct {p0}, Lcom/mbv/a/sdklibrary/net/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;[B)V
    .locals 0

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    :cond_0
    return-void
.end method
