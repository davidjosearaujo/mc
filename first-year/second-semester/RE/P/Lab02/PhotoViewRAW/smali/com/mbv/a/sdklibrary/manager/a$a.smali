.class Lcom/mbv/a/sdklibrary/manager/a$a;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbv/a/sdklibrary/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mbv/a/sdklibrary/manager/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/mbv/a/sdklibrary/manager/a;

    invoke-direct {v0}, Lcom/mbv/a/sdklibrary/manager/a;-><init>()V

    sput-object v0, Lcom/mbv/a/sdklibrary/manager/a$a;->a:Lcom/mbv/a/sdklibrary/manager/a;

    return-void
.end method

.method static synthetic a()Lcom/mbv/a/sdklibrary/manager/a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/mbv/a/sdklibrary/manager/a$a;->a:Lcom/mbv/a/sdklibrary/manager/a;

    return-object v0
.end method
