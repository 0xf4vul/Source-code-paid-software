.class public final Lcom/piriform/ccleaner/ui/e;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:F

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:Z

.field private final i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/e;->b:Landroid/view/animation/Interpolator;

    .line 33
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/piriform/ccleaner/ui/e;->f:F

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/piriform/ccleaner/ui/e;->g:F

    .line 36
    new-instance v0, Lcom/piriform/ccleaner/ui/e$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/e$1;-><init>(Lcom/piriform/ccleaner/ui/e;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/e;->i:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/e;-><init>()V

    .line 1156
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2144
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/e;->c:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/e;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/piriform/ccleaner/ui/e;->d:F

    return v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/e;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/piriform/ccleaner/ui/e;->d:F

    return p1
.end method

.method private static a(FI)I
    .locals 1

    .prologue
    .line 91
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 93
    if-gez v0, :cond_1

    .line 94
    const/4 p1, 0x0

    .line 98
    :cond_0
    :goto_0
    return p1

    .line 95
    :cond_1
    if-gt v0, p1, :cond_0

    move p1, v0

    .line 98
    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/e;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/piriform/ccleaner/ui/e;->g:F

    return v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/e;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->i:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/e;->copyBounds(Landroid/graphics/Rect;)V

    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 77
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e;->b:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/piriform/ccleaner/ui/e;->d:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/e;->b:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/piriform/ccleaner/ui/e;->d:F

    iget v5, p0, Lcom/piriform/ccleaner/ui/e;->f:F

    add-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 82
    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/e;->a(FI)I

    move-result v1

    .line 83
    invoke-static {v2, v0}, Lcom/piriform/ccleaner/ui/e;->a(FI)I

    move-result v0

    .line 85
    if-le v0, v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v4

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/e;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    :cond_1
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/e;->h:Z

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/e;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 111
    return-void
.end method

.method public final start()V
    .locals 6

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/e;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/e;->h:Z

    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->i:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/piriform/ccleaner/ui/e;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 124
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/e;->h:Z

    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/e;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method
