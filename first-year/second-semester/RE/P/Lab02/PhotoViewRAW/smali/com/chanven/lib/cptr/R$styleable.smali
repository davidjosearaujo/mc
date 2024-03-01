.class public final Lcom/chanven/lib/cptr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chanven/lib/cptr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PtrClassicHeader:[I

.field public static final PtrClassicHeader_ptr_rotate_ani_time:I = 0x0

.field public static final PtrFrameLayout:[I

.field public static final PtrFrameLayout_ptr_content:I = 0x0

.field public static final PtrFrameLayout_ptr_duration_to_close:I = 0x1

.field public static final PtrFrameLayout_ptr_duration_to_close_header:I = 0x2

.field public static final PtrFrameLayout_ptr_header:I = 0x3

.field public static final PtrFrameLayout_ptr_keep_header_when_refresh:I = 0x4

.field public static final PtrFrameLayout_ptr_pull_to_fresh:I = 0x5

.field public static final PtrFrameLayout_ptr_ratio_of_header_height_to_refresh:I = 0x6

.field public static final PtrFrameLayout_ptr_resistance:I = 0x7

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0200e9

    aput v2, v0, v1

    sput-object v0, Lcom/chanven/lib/cptr/R$styleable;->PtrClassicHeader:[I

    .line 60
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/chanven/lib/cptr/R$styleable;->PtrFrameLayout:[I

    .line 69
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/chanven/lib/cptr/R$styleable;->RecyclerView:[I

    return-void

    .line 60
    :array_0
    .array-data 4
        0x7f0200e1
        0x7f0200e2
        0x7f0200e3
        0x7f0200e4
        0x7f0200e5
        0x7f0200e6
        0x7f0200e7
        0x7f0200e8
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020092
        0x7f020093
        0x7f0200b8
        0x7f0200f1
        0x7f020101
        0x7f020107
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
