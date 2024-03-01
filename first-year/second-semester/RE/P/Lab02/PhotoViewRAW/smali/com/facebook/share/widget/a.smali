.class public final Lcom/facebook/share/widget/a;
.super Lcom/facebook/internal/g;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/g",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 57
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/a;->b:I

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/g;-><init>(Landroid/app/Activity;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/a;->c:Z

    .line 157
    invoke-static {p2}, Lcom/facebook/share/internal/k;->a(I)V

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/a;-><init>(Lcom/facebook/internal/n;I)V

    .line 168
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/facebook/internal/n;

    invoke-direct {v0, p1}, Lcom/facebook/internal/n;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/a;-><init>(Lcom/facebook/internal/n;I)V

    .line 164
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/n;I)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/g;-><init>(Lcom/facebook/internal/n;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/a;->c:Z

    .line 173
    invoke-static {p2}, Lcom/facebook/share/internal/k;->a(I)V

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/widget/a;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/share/widget/a;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/a;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/facebook/share/widget/a;->b(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/a;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0}, Lcom/facebook/share/widget/a;->c(Ljava/lang/Class;)Lcom/facebook/internal/e;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/internal/f;->a(Lcom/facebook/internal/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/Class;)Lcom/facebook/internal/e;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/share/widget/a;->c(Ljava/lang/Class;)Lcom/facebook/internal/e;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/a;)V
    .locals 4

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/a;->c(Ljava/lang/Class;)Lcom/facebook/internal/e;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_0

    .line 271
    const-string v0, "status"

    .line 288
    :goto_0
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->b(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 289
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 290
    const-string v3, "fb_share_dialog_content_type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "fb_share_dialog_content_uuid"

    .line 295
    invoke-virtual {p2}, Lcom/facebook/internal/a;->c()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "fb_share_dialog_content_page_id"

    .line 298
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->k()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "fb_messenger_share_dialog_show"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 301
    return-void

    .line 272
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->PHOTOS:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_1

    .line 273
    const-string v0, "photo"

    goto :goto_0

    .line 274
    :cond_1
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->VIDEO:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_2

    .line 275
    const-string v0, "video"

    goto :goto_0

    .line 276
    :cond_2
    sget-object v1, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    if-ne v0, v1, :cond_3

    .line 277
    const-string v0, "open_graph"

    goto :goto_0

    .line 278
    :cond_3
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_4

    .line 279
    const-string v0, "GenericTemplate"

    goto :goto_0

    .line 280
    :cond_4
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_5

    .line 281
    const-string v0, "MediaTemplate"

    goto :goto_0

    .line 282
    :cond_5
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_6

    .line 283
    const-string v0, "OpenGraphMusicTemplate"

    goto :goto_0

    .line 285
    :cond_6
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private static c(Ljava/lang/Class;)Lcom/facebook/internal/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/e;"
        }
    .end annotation

    .prologue
    .line 249
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 264
    :goto_0
    return-object v0

    .line 251
    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->PHOTOS:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 253
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->VIDEO:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 255
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    sget-object v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    goto :goto_0

    .line 257
    :cond_3
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 259
    :cond_4
    const-class v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 261
    :cond_5
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 264
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/g",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Ljava/lang/Object;",
            ">.a;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v1, Lcom/facebook/share/widget/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/a$a;-><init>(Lcom/facebook/share/widget/a;Lcom/facebook/share/widget/a$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-object v0
.end method

.method protected d()Lcom/facebook/internal/a;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/facebook/internal/a;

    invoke-virtual {p0}, Lcom/facebook/share/widget/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/a;-><init>(I)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/facebook/share/widget/a;->c:Z

    return v0
.end method
