.class final Lcom/facebook/appevents/AppEventsLogger$a$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1200
    invoke-static {}, Lcom/facebook/d;->f()Landroid/content/Context;

    move-result-object v0

    .line 1199
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger$a;->a(Landroid/content/Context;)V

    .line 1201
    return-void
.end method
