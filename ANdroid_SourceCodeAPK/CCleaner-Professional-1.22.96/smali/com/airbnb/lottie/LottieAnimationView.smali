.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/av;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/airbnb/lottie/av;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/airbnb/lottie/be;

.field private final e:Lcom/airbnb/lottie/aw;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/airbnb/lottie/q;

.field private l:Lcom/airbnb/lottie/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->a:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/be;

    .line 73
    new-instance v0, Lcom/airbnb/lottie/aw;

    invoke-direct {v0}, Lcom/airbnb/lottie/aw;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 77
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 78
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/be;

    .line 73
    new-instance v0, Lcom/airbnb/lottie/aw;

    invoke-direct {v0}, Lcom/airbnb/lottie/aw;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 77
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 78
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 93
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/be;

    .line 73
    new-instance v0, Lcom/airbnb/lottie/aw;

    invoke-direct {v0}, Lcom/airbnb/lottie/aw;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 76
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 77
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 78
    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 98
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->a(Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/q;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_cacheStrategy:I

    sget v2, Lcom/airbnb/lottie/LottieAnimationView$a;->a:I

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 106
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView$a;->a()[I

    move-result-object v2

    aget v1, v2, v1

    iput v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    .line 107
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 111
    :cond_0
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v1}, Lcom/airbnb/lottie/aw;->c()V

    .line 113
    iput-boolean v8, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    sget v2, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_loop:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/aw;->a(Z)V

    .line 116
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 117
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_progress:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 118
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 1264
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 2094
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_6

    .line 2095
    sget-object v1, Lcom/airbnb/lottie/aw;->a:Ljava/lang/String;

    const-string/jumbo v2, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    :goto_0
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    new-instance v1, Lcom/airbnb/lottie/ca;

    sget v2, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/ca;-><init>(I)V

    .line 2179
    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 2254
    new-instance v3, Lcom/airbnb/lottie/aw$a;

    invoke-direct {v3, v1}, Lcom/airbnb/lottie/aw$a;-><init>(Landroid/graphics/ColorFilter;)V

    .line 2258
    iget-object v3, v2, Lcom/airbnb/lottie/aw;->g:Ljava/util/Set;

    new-instance v4, Lcom/airbnb/lottie/aw$a;

    invoke-direct {v4, v1}, Lcom/airbnb/lottie/aw$a;-><init>(Landroid/graphics/ColorFilter;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2261
    iget-object v3, v2, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-eqz v3, :cond_3

    .line 2265
    iget-object v2, v2, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    invoke-virtual {v2, v9, v9, v1}, Lcom/airbnb/lottie/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 124
    :cond_3
    sget v1, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    sget v2, Lcom/airbnb/lottie/bm$a;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/aw;->c(F)V

    .line 128
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "animator_duration_scale"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 133
    cmpl-float v0, v0, v6

    if-nez v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 2287
    iput-boolean v8, v0, Lcom/airbnb/lottie/aw;->m:Z

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 139
    return-void

    .line 2098
    :cond_6
    iput-boolean v1, v2, Lcom/airbnb/lottie/aw;->n:Z

    .line 2099
    iget-object v1, v2, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-eqz v1, :cond_2

    .line 2100
    invoke-virtual {v2}, Lcom/airbnb/lottie/aw;->b()V

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->a()V

    .line 253
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    invoke-interface {v0}, Lcom/airbnb/lottie/q;->a()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    .line 357
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->c()V

    .line 447
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 448
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 553
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 17299
    iget-object v1, v1, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    .line 553
    if-eqz v1, :cond_1

    move v1, v0

    .line 554
    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 555
    return-void

    .line 553
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/av;

    invoke-virtual {v0}, Lcom/airbnb/lottie/av;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 14122
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->i:Ljava/lang/String;

    .line 483
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 16364
    iget v0, v0, Lcom/airbnb/lottie/aw;->e:F

    .line 545
    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 15395
    iget v0, v0, Lcom/airbnb/lottie/aw;->f:F

    .line 525
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 233
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 236
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 239
    .line 6442
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 7299
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 239
    if-eqz v0, :cond_0

    .line 7529
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->e()V

    .line 7530
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 244
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 245
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 212
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 229
    :goto_0
    return-void

    .line 217
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 218
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 219
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 223
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 224
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    .line 5438
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/aw;->a(Z)V

    .line 225
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:Z

    if-eqz v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 6118
    iput-object v1, v0, Lcom/airbnb/lottie/aw;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 203
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 2364
    iget v0, v0, Lcom/airbnb/lottie/aw;->e:F

    .line 204
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:F

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 3299
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 205
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:Z

    .line 206
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 4295
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 206
    :goto_0
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    .line 207
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 5122
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->i:Ljava/lang/String;

    .line 207
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 208
    return-object v1

    .line 4295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 299
    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    .line 8311
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 8312
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8313
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8314
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8315
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/av;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/av;)V

    .line 8320
    :goto_0
    return-void

    .line 8318
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8319
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/av;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/av;)V

    goto :goto_0

    .line 8323
    :cond_1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Ljava/lang/String;

    .line 8324
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->e()V

    .line 8325
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 8326
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/airbnb/lottie/LottieAnimationView$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/airbnb/lottie/LottieAnimationView$2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    invoke-static {v0, p1, v2}, Lcom/airbnb/lottie/av$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/be;)Lcom/airbnb/lottie/q;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    goto :goto_0
.end method

.method public setAnimation(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 349
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/be;

    .line 9150
    new-instance v2, Lcom/airbnb/lottie/aq;

    invoke-direct {v2, v0, v1}, Lcom/airbnb/lottie/aq;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/be;)V

    .line 9151
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/airbnb/lottie/aq;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    iput-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Lcom/airbnb/lottie/q;

    .line 350
    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/av;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/aw;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 370
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 10142
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-ne v0, p1, :cond_0

    move v0, v2

    .line 371
    :goto_0
    if-nez v0, :cond_7

    .line 403
    :goto_1
    return-void

    .line 10182
    :cond_0
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->a()V

    .line 10183
    iput-object v9, v3, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    .line 10184
    iput-object v9, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    .line 10185
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->invalidateSelf()V

    .line 10147
    iput-object p1, v3, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 10148
    iget v0, v3, Lcom/airbnb/lottie/aw;->d:F

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/aw;->a(F)V

    .line 10149
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->d()V

    .line 10150
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->b()V

    .line 11172
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-eqz v0, :cond_1

    .line 11176
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/aw$a;

    .line 11177
    iget-object v5, v3, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    iget-object v6, v0, Lcom/airbnb/lottie/aw$a;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/airbnb/lottie/aw$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/airbnb/lottie/aw$a;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6, v7, v0}, Lcom/airbnb/lottie/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 10153
    :cond_1
    iget v0, v3, Lcom/airbnb/lottie/aw;->e:F

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/aw;->b(F)V

    .line 10154
    iget-boolean v0, v3, Lcom/airbnb/lottie/aw;->k:Z

    if-eqz v0, :cond_2

    .line 10155
    iput-boolean v2, v3, Lcom/airbnb/lottie/aw;->k:Z

    .line 10156
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->c()V

    .line 10158
    :cond_2
    iget-boolean v0, v3, Lcom/airbnb/lottie/aw;->l:Z

    if-eqz v0, :cond_3

    .line 10159
    iput-boolean v2, v3, Lcom/airbnb/lottie/aw;->l:Z

    .line 11328
    iget v0, v3, Lcom/airbnb/lottie/aw;->e:F

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_4

    iget v0, v3, Lcom/airbnb/lottie/aw;->e:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    .line 11332
    :goto_3
    iget-object v4, v3, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-nez v4, :cond_5

    .line 11333
    iput-boolean v2, v3, Lcom/airbnb/lottie/aw;->k:Z

    .line 11334
    iput-boolean v1, v3, Lcom/airbnb/lottie/aw;->l:Z

    :cond_3
    :goto_4
    move v0, v1

    .line 10163
    goto :goto_0

    :cond_4
    move v0, v2

    .line 11328
    goto :goto_3

    .line 11337
    :cond_5
    if-eqz v0, :cond_6

    .line 11338
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    iget v4, v3, Lcom/airbnb/lottie/aw;->e:F

    iget-object v5, v3, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    long-to-float v5, v6

    mul-float/2addr v4, v5

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 11340
    :cond_6
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_4

    .line 377
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/ch;->a(Landroid/content/Context;)I

    move-result v0

    .line 378
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/ch;->b(Landroid/content/Context;)I

    move-result v3

    .line 12056
    iget-object v4, p1, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 379
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 13056
    iget-object v5, p1, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 380
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 381
    if-gt v4, v0, :cond_8

    if-le v5, v3, :cond_9

    .line 383
    :cond_8
    int-to-float v6, v0

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 384
    int-to-float v7, v3

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 386
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 387
    iget-object v7, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 13395
    iget v7, v7, Lcom/airbnb/lottie/aw;->f:F

    .line 387
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 389
    const-string/jumbo v6, "LOTTIE"

    const-string/jumbo v7, "Composition larger than the screen %dx%d vs %dx%d. Scaling down."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 391
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    .line 389
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_9
    invoke-virtual {p0, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Lcom/airbnb/lottie/av;

    .line 402
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    goto/16 :goto_1
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/an;)V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 14388
    iput-object p1, v0, Lcom/airbnb/lottie/aw;->j:Lcom/airbnb/lottie/an;

    .line 14389
    iget-object v1, v0, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    if-eqz v1, :cond_0

    .line 14390
    iget-object v0, v0, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    .line 15046
    iput-object p1, v0, Lcom/airbnb/lottie/am;->b:Lcom/airbnb/lottie/an;

    .line 505
    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    .line 14118
    iput-object p1, v0, Lcom/airbnb/lottie/aw;->i:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    if-eq p1, v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 143
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->c()V

    .line 144
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/aw;->b(F)V

    .line 542
    return-void
.end method

.method public setScale(F)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/aw;->c(F)V

    .line 518
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    if-ne v0, v1, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/aw;->a(F)V

    .line 467
    return-void
.end method
