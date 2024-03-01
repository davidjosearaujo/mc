.class public Lcom/mbv/a/wp/PreviewImagesActivity;
.super Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;
.source "PreviewImagesActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field b:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/widget/ImageView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ProgressBar;

.field private k:Ljava/lang/String;

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbv/a/wp/PreviewImagesActivity;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;-><init>()V

    .line 160
    new-instance v0, Lcom/mbv/a/wp/PreviewImagesActivity$1;

    invoke-direct {v0, p0}, Lcom/mbv/a/wp/PreviewImagesActivity$1;-><init>(Lcom/mbv/a/wp/PreviewImagesActivity;)V

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->m:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/mbv/a/wp/PreviewImagesActivity$2;

    invoke-direct {v0, p0}, Lcom/mbv/a/wp/PreviewImagesActivity$2;-><init>(Lcom/mbv/a/wp/PreviewImagesActivity;)V

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mbv/a/wp/PreviewImagesActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/mbv/a/wp/PreviewImagesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/mbv/a/wp/PreviewImagesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->h:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->c:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0700b3

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->d:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->e:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 152
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 153
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mbv/a/wp/PreviewImagesActivity;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 190
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mbv/a/wp/PreviewImagesActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 192
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 193
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 194
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 195
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    :cond_0
    invoke-super {p0}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->finish()V

    .line 215
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->finish()V

    .line 220
    invoke-super {p0}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->onBackPressed()V

    .line 221
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->finish()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->finish()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/16 v1, 0x2710

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 113
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    if-nez v1, :cond_4

    .line 130
    :cond_3
    :goto_0
    return-void

    .line 119
    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 121
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->setContentView(I)V

    .line 63
    invoke-direct {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->b()V

    .line 64
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->a:Landroid/support/v4/view/ViewPager;

    .line 65
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->b:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    .line 66
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/mbv/a/wp/c/b;->a()Lcom/mbv/a/wp/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbv/a/wp/c/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    .line 69
    const-string v1, "param_current_position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mbv/a/wp/TabWallPaperListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/mbv/a/wp/adapter/PreviewImagesAdapter;

    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mbv/a/wp/adapter/PreviewImagesAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 76
    iget-object v2, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mbv/a/wp/adapter/PreviewImagesAdapter;->a(Ljava/util/List;)V

    .line 77
    iget-object v2, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->b:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    iget-object v2, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 79
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->b:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-virtual {v0, p0}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->b:Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;

    invoke-virtual {v0, v1}, Lcom/mbv/a/wp/view/indicator/UnderlinePageIndicator;->setCurrentItem(I)V

    .line 81
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/mbv/a/wp/PreviewImagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->j:Landroid/widget/ProgressBar;

    .line 82
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->f:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/mbv/a/wp/base/activity/BaseFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 200
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 201
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mbv/a/wp/PreviewImagesActivity;->m:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/mbv/a/wp/PreviewImagesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
