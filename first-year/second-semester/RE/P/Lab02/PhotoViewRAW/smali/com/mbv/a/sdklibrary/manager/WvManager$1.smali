.class Lcom/mbv/a/sdklibrary/manager/WvManager$1;
.super Landroid/webkit/WebChromeClient;
.source "WvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbv/a/sdklibrary/manager/WvManager;->init(Landroid/content/Context;)Lcom/mbv/a/sdklibrary/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbv/a/sdklibrary/manager/WvManager;


# direct methods
.method constructor <init>(Lcom/mbv/a/sdklibrary/manager/WvManager;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/manager/WvManager$1;->a:Lcom/mbv/a/sdklibrary/manager/WvManager;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method
