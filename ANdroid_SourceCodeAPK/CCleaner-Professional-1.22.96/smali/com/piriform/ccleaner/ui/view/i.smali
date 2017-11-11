.class public final Lcom/piriform/ccleaner/ui/view/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/i;->a:[F

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 17
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1025
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x2

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x3

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x4

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v0

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v0, v0

    aput v0, v2, v3

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/view/i;->a:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    return-void

    .line 20
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
