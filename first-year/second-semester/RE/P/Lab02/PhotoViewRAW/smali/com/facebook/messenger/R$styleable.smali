.class public final Lcom/facebook/messenger/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/messenger/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 149
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/messenger/R$styleable;->FontFamily:[I

    .line 156
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/messenger/R$styleable;->FontFamilyFont:[I

    return-void

    .line 149
    :array_0
    .array-data 4
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f020095
        0x7f02009d
        0x7f02009e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
