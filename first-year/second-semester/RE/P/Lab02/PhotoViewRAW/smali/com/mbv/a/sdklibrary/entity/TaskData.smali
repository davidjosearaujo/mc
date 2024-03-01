.class public Lcom/mbv/a/sdklibrary/entity/TaskData;
.super Ljava/lang/Object;
.source "TaskData.java"


# instance fields
.field private end_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private start_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->end_time:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setService(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->service:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mbv/a/sdklibrary/entity/TaskData;->start_time:Ljava/lang/String;

    .line 29
    return-void
.end method
