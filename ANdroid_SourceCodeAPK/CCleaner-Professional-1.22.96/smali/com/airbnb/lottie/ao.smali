.class final Lcom/airbnb/lottie/ao;
.super Lcom/airbnb/lottie/o;
.source "SourceFile"


# instance fields
.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private final j:F


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;F)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/o;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ao;->g:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ao;->h:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ao;->i:Landroid/graphics/Rect;

    .line 22
    iput p3, p0, Lcom/airbnb/lottie/ao;->j:F

    .line 23
    return-void
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/ao;->c:Lcom/airbnb/lottie/au;

    .line 1105
    iget-object v2, v0, Lcom/airbnb/lottie/au;->f:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/airbnb/lottie/ao;->b:Lcom/airbnb/lottie/aw;

    .line 1470
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1463
    :goto_0
    if-eqz v0, :cond_7

    .line 1464
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/am;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1475
    :cond_0
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    if-eqz v0, :cond_3

    iget-object v4, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    .line 1489
    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1490
    if-eqz v0, :cond_5

    .line 1494
    instance-of v5, v0, Landroid/view/View;

    if-eqz v5, :cond_5

    .line 1495
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2100
    :goto_2
    if-nez v0, :cond_1

    iget-object v5, v4, Lcom/airbnb/lottie/am;->a:Landroid/content/Context;

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v0, :cond_6

    iget-object v4, v4, Lcom/airbnb/lottie/am;->a:Landroid/content/Context;

    .line 2101
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 1475
    :goto_3
    if-nez v0, :cond_3

    .line 1476
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    invoke-virtual {v0}, Lcom/airbnb/lottie/am;->a()V

    .line 1477
    iput-object v1, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    .line 1480
    :cond_3
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    if-nez v0, :cond_4

    .line 1481
    new-instance v0, Lcom/airbnb/lottie/am;

    invoke-virtual {v3}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    iget-object v5, v3, Lcom/airbnb/lottie/aw;->i:Ljava/lang/String;

    iget-object v6, v3, Lcom/airbnb/lottie/aw;->j:Lcom/airbnb/lottie/an;

    iget-object v7, v3, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 3082
    iget-object v7, v7, Lcom/airbnb/lottie/av;->b:Ljava/util/Map;

    .line 1482
    invoke-direct {v0, v4, v5, v6, v7}, Lcom/airbnb/lottie/am;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/an;Ljava/util/Map;)V

    iput-object v0, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    .line 1485
    :cond_4
    iget-object v0, v3, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 1497
    goto :goto_2

    .line 2101
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 57
    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 41
    invoke-direct {p0}, Lcom/airbnb/lottie/ao;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 43
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 49
    iget-object v0, p0, Lcom/airbnb/lottie/ao;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/ao;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 63
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    invoke-direct {p0}, Lcom/airbnb/lottie/ao;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/ao;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 32
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 33
    iget-object v1, p0, Lcom/airbnb/lottie/ao;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    iget-object v1, p0, Lcom/airbnb/lottie/ao;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/airbnb/lottie/ao;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/airbnb/lottie/ao;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/ao;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/airbnb/lottie/ao;->i:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/airbnb/lottie/ao;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
