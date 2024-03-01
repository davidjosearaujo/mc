.class public Lcom/facebook/share/internal/DeviceShareDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    }
.end annotation


# static fields
.field private static f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/app/Dialog;

.field private volatile d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

.field private volatile e:Ljava/util/concurrent/ScheduledFuture;

.field private g:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 161
    :cond_0
    return-void
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/a/a;->c(Ljava/lang/String;)V

    .line 145
    :cond_0
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_2
    return-void
.end method

.method private a(Lcom/facebook/FacebookRequestError;)V
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(ILandroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 5

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 240
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    invoke-static {}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    .line 251
    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->b()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 253
    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    return-void
.end method

.method private b()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/model/ShareContent;

    .line 169
    if-nez v0, :cond_0

    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_0
    instance-of v2, v0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_1

    .line 173
    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/internal/l;->a(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    instance-of v2, v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_2

    .line 175
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v0}, Lcom/facebook/share/internal/l;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 177
    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->b()Landroid/os/Bundle;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    new-instance v0, Lcom/facebook/FacebookRequestError;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v4, "Failed to get share content"

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/FacebookRequestError;)V

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/internal/ac;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "device_info"

    .line 190
    invoke-static {}, Lcom/facebook/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/share"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;)V

    .line 220
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->j()Lcom/facebook/e;

    .line 221
    return-void
.end method

.method private static declared-synchronized d()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    .prologue
    .line 232
    const-class v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 235
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->g:Lcom/facebook/share/model/ShareContent;

    .line 165
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Landroid/app/Dialog;

    .line 98
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    sget v1, Lcom/facebook/common/R$layout;->com_facebook_device_auth_dialog_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 100
    sget v0, Lcom/facebook/common/R$id;->progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a:Landroid/widget/ProgressBar;

    .line 101
    sget v0, Lcom/facebook/common/R$id;->confirmation_code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->b:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/facebook/common/R$id;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    new-instance v2, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lcom/facebook/common/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    sget v2, Lcom/facebook/common/R$string;->com_facebook_device_auth_instructions:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c()V

    .line 119
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 85
    if-eqz p3, :cond_0

    .line 86
    const-string v0, "request_state"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    .line 91
    :cond_0
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(ILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->d:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    :cond_0
    return-void
.end method
