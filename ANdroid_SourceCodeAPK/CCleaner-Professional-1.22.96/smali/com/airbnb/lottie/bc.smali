.class final Lcom/airbnb/lottie/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(FFF)F
    .locals 1

    .prologue
    .line 77
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static a(FF)I
    .locals 4

    .prologue
    .line 54
    float-to-int v1, p0

    float-to-int v2, p1

    .line 4068
    div-int v0, v1, v2

    .line 4070
    xor-int v3, v1, v2

    if-gez v3, :cond_0

    mul-int v3, v0, v2

    if-eq v3, v1, :cond_0

    .line 4071
    add-int/lit8 v0, v0, -0x1

    .line 4061
    :cond_0
    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 54
    return v0
.end method

.method static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 9
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static a(Lcom/airbnb/lottie/bs;Landroid/graphics/Path;)V
    .locals 10

    .prologue
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1035
    iget-object v0, p0, Lcom/airbnb/lottie/bs;->b:Landroid/graphics/PointF;

    .line 15
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 16
    new-instance v8, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17
    const/4 v0, 0x0

    move v7, v0

    .line 1043
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 2043
    iget-object v0, p0, Lcom/airbnb/lottie/bs;->a:Ljava/util/List;

    .line 18
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/y;

    .line 3027
    iget-object v2, v0, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    .line 3035
    iget-object v4, v0, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    .line 3043
    iget-object v9, v0, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    .line 23
    invoke-virtual {v2, v8}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    :goto_1
    iget v0, v9, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 32
    :cond_0
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v9, Landroid/graphics/PointF;->x:F

    iget v6, v9, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    .line 4039
    :cond_1
    iget-boolean v0, p0, Lcom/airbnb/lottie/bs;->c:Z

    .line 36
    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 39
    :cond_2
    return-void
.end method
