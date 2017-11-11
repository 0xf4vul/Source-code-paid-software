.class public final Lcom/facebook/ads/internal/k;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/text/TextPaint;

.field private final h:Landroid/graphics/Paint;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private final n:Landroid/os/Handler;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/k/a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->n:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/k$1;-><init>(Lcom/facebook/ads/internal/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->p:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->d:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    const/16 v1, 0xbf

    const/16 v2, 0xff

    invoke-static {v1, v3, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->h:Landroid/graphics/Paint;

    const/16 v1, 0xd4

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->b()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/k;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/k;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/k;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/internal/k;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/k;->b:I

    const-string/jumbo v0, "Initializing..."

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->i:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/internal/k;->j:I

    iput-object v3, p0, Lcom/facebook/ads/internal/k;->k:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/internal/k;->m:J

    iput-object v3, p0, Lcom/facebook/ads/internal/k;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/k;->a(Z)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/k;->m:J

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->b()V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/k/a;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/k;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->b()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/k;->c:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/k;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/k;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/k;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/k;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x36ee80

    const-wide/32 v10, 0xea60

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/internal/k;->a:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/k;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v0, "Sdk "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "4.26.0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", Loaded "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/facebook/ads/internal/k;->m:J

    cmp-long v0, v4, v8

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/ads/internal/k;->m:J

    sub-long/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    div-long v6, v4, v12

    long-to-int v0, v6

    rem-long/2addr v4, v12

    div-long v6, v4, v10

    long-to-int v3, v6

    rem-long/2addr v4, v10

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    if-lez v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "h "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-gtz v0, :cond_3

    if-lez v3, :cond_4

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s ago"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v0, "\nView: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_5
    const-string/jumbo v0, "Viewability Checker not set"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/k;->i:Ljava/lang/String;

    const/high16 v0, -0x31000000

    iget-object v2, p0, Lcom/facebook/ads/internal/k;->i:Ljava/lang/String;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_9

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "Unknown"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "Card "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/k;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/internal/k;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/k;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/k/a;

    .line 1000
    invoke-static {}, Lcom/facebook/ads/internal/k/c;->values()[Lcom/facebook/ads/internal/k/c;

    move-result-object v3

    iget-object v4, v0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    .line 2000
    iget-object v4, v4, Lcom/facebook/ads/internal/k/b;->a:Lcom/facebook/ads/internal/k/c;

    .line 3000
    iget v4, v4, Lcom/facebook/ads/internal/k/c;->r:I

    .line 1000
    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/facebook/ads/internal/k/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (%.1f%%)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/facebook/ads/internal/k/a;->c:Lcom/facebook/ads/internal/k/b;

    .line 4000
    iget v0, v0, Lcom/facebook/ads/internal/k/b;->b:F

    .line 1000
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/internal/k;->j:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/k;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/k;->b()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lcom/facebook/ads/internal/k;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/facebook/ads/internal/k;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/k;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/k;->g:Landroid/text/TextPaint;

    iget v3, p0, Lcom/facebook/ads/internal/k;->j:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    int-to-float v1, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float v7, v1, v2

    int-to-float v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    sub-float v1, v7, v11

    const/high16 v2, 0x42200000    # 40.0f

    sub-float v2, v1, v2

    sub-float v1, v10, v12

    const/high16 v3, 0x42200000    # 40.0f

    sub-float v3, v1, v3

    add-float v1, v7, v11

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v4, v1

    add-float v1, v10, v12

    const/high16 v5, 0x42200000    # 40.0f

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/facebook/ads/internal/k;->h:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float v1, v7, v11

    sub-float v2, v10, v12

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    int-to-float v1, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    const/4 v1, 0x0

    int-to-float v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/k;->f:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/internal/k;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
