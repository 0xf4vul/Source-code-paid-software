.class public abstract Lcom/androidplot/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/a/b$1;
    }
.end annotation


# instance fields
.field private a:Lcom/androidplot/c/b;

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Z

.field protected e:Lcom/androidplot/b/b;

.field f:Lcom/androidplot/b/m;

.field public g:Lcom/androidplot/c/b;

.field public h:Z

.field public i:Lcom/androidplot/b/h;

.field private j:Lcom/androidplot/b/e;


# direct methods
.method public constructor <init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/androidplot/b/a/b;->d:Z

    .line 36
    new-instance v0, Lcom/androidplot/b/b;

    invoke-direct {v0}, Lcom/androidplot/b/b;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    .line 38
    new-instance v0, Lcom/androidplot/c/b;

    invoke-direct {v0}, Lcom/androidplot/c/b;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/a/b;->a:Lcom/androidplot/c/b;

    .line 39
    new-instance v0, Lcom/androidplot/c/b;

    invoke-direct {v0}, Lcom/androidplot/c/b;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;

    .line 40
    iput-boolean v1, p0, Lcom/androidplot/b/a/b;->h:Z

    .line 49
    iput-object p1, p0, Lcom/androidplot/b/a/b;->j:Lcom/androidplot/b/e;

    .line 1121
    iput-object p2, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    .line 52
    invoke-virtual {p0}, Lcom/androidplot/b/a/b;->a()V

    .line 53
    return-void
.end method

.method public static a(FFLandroid/graphics/RectF;Lcom/androidplot/b/h;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 278
    .line 6061
    iget-object v0, p3, Lcom/androidplot/b/h;->a:Lcom/androidplot/b/r;

    .line 278
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/b/r;->a(F)F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 7034
    iget-object v1, p3, Lcom/androidplot/b/h;->b:Lcom/androidplot/b/t;

    .line 279
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidplot/b/t;->a(F)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    .line 280
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7042
    iget-object v0, p3, Lcom/androidplot/b/h;->c:Lcom/androidplot/b/a;

    .line 281
    invoke-static {p1, p0, v0}, Lcom/androidplot/b/a/b;->a(FFLcom/androidplot/b/a;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/androidplot/c/f;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static a(FFLcom/androidplot/b/a;)Landroid/graphics/PointF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 285
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 286
    sget-object v1, Lcom/androidplot/b/a/b$1;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/b/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported anchor location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    div-float v1, p1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 316
    :goto_0
    :pswitch_1
    return-object v0

    .line 293
    :pswitch_2
    invoke-virtual {v0, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-virtual {v0, p0, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 302
    :pswitch_5
    div-float v1, p1, v3

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 305
    :pswitch_6
    div-float v1, p0, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 308
    :pswitch_7
    div-float v1, p0, v3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 311
    :pswitch_8
    div-float v1, p0, v3

    div-float v2, p1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Landroid/graphics/RectF;Lcom/androidplot/b/a;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/androidplot/b/a/b;->a(FFLcom/androidplot/b/a;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidplot/c/f;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    .line 3061
    iget-object v0, v0, Lcom/androidplot/b/m;->b:Lcom/androidplot/b/l;

    .line 150
    invoke-virtual {v0, p1}, Lcom/androidplot/b/l;->a(F)F

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final a(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/androidplot/b/h;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/androidplot/b/h;-><init>(FLcom/androidplot/b/q;FLcom/androidplot/b/s;Lcom/androidplot/b/a;)V

    .line 1401
    iput-object v0, p0, Lcom/androidplot/b/a/b;->i:Lcom/androidplot/b/h;

    .line 90
    iget-object v0, p0, Lcom/androidplot/b/a/b;->j:Lcom/androidplot/b/e;

    .line 2073
    iget-object v0, v0, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 2118
    iget-object v1, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/a/a;
        }
    .end annotation
.end method

.method public final declared-synchronized a(Lcom/androidplot/c/b;)V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/androidplot/b/a/b;->a:Lcom/androidplot/c/b;

    .line 274
    invoke-virtual {p0}, Lcom/androidplot/b/a/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(F)F
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    .line 4053
    iget-object v0, v0, Lcom/androidplot/b/m;->a:Lcom/androidplot/b/l;

    .line 154
    invoke-virtual {v0, p1}, Lcom/androidplot/b/l;->a(F)F

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final c(F)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    .line 4119
    iput p1, v0, Lcom/androidplot/b/b;->c:F

    .line 167
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 7

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/androidplot/b/a/b;->i:Lcom/androidplot/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/b/a/b;->a:Lcom/androidplot/c/b;

    iget-object v0, v0, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/androidplot/b/a/b;->a(F)F

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/androidplot/b/a/b;->a:Lcom/androidplot/c/b;

    iget-object v1, v1, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/androidplot/b/a/b;->b(F)F

    move-result v1

    .line 260
    iget-object v2, p0, Lcom/androidplot/b/a/b;->a:Lcom/androidplot/c/b;

    iget-object v2, v2, Lcom/androidplot/c/b;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/androidplot/b/a/b;->i:Lcom/androidplot/b/h;

    invoke-static {v1, v0, v2, v3}, Lcom/androidplot/b/a/b;->a(FFLandroid/graphics/RectF;Lcom/androidplot/b/h;)Landroid/graphics/PointF;

    move-result-object v2

    .line 263
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5158
    iget-object v0, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    invoke-virtual {v0, v3}, Lcom/androidplot/b/b;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 5162
    iget-object v1, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    invoke-virtual {v1, v0}, Lcom/androidplot/b/b;->b(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/androidplot/c/b;

    invoke-direct {v2, v3, v0, v1}, Lcom/androidplot/c/b;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/androidplot/b/a/b;->g:Lcom/androidplot/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(F)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    .line 5111
    iput p1, v0, Lcom/androidplot/b/b;->b:F

    .line 183
    return-void
.end method
