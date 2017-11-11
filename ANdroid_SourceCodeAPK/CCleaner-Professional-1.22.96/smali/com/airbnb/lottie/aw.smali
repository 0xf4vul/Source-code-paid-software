.class public Lcom/airbnb/lottie/aw;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/aw$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Lcom/airbnb/lottie/av;

.field final c:Landroid/animation/ValueAnimator;

.field d:F

.field e:F

.field f:F

.field final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/airbnb/lottie/aw$a;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/airbnb/lottie/am;

.field i:Ljava/lang/String;

.field j:Lcom/airbnb/lottie/an;

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Lcom/airbnb/lottie/u;

.field private final p:Landroid/graphics/Matrix;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/aw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aw;->p:Landroid/graphics/Matrix;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    .line 38
    iput v1, p0, Lcom/airbnb/lottie/aw;->d:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/aw;->e:F

    .line 40
    iput v1, p0, Lcom/airbnb/lottie/aw;->f:F

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/aw;->g:Ljava/util/Set;

    .line 51
    const/16 v0, 0xff

    iput v0, p0, Lcom/airbnb/lottie/aw;->q:I

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/aw$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/aw$1;-><init>(Lcom/airbnb/lottie/aw;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 66
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/airbnb/lottie/aw;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/airbnb/lottie/aw;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/airbnb/lottie/aw;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->h:Lcom/airbnb/lottie/am;

    invoke-virtual {v0}, Lcom/airbnb/lottie/am;->a()V

    .line 136
    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 344
    iput p1, p0, Lcom/airbnb/lottie/aw;->d:F

    .line 345
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    invoke-virtual {v1}, Lcom/airbnb/lottie/av;->a()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 354
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 346
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 348
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 292
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 34

    .prologue
    .line 167
    new-instance v28, Lcom/airbnb/lottie/u;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 2056
    iget-object v0, v11, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 1192
    new-instance v29, Lcom/airbnb/lottie/au;

    .line 1193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    const-wide/16 v32, -0x1

    sget-object v12, Lcom/airbnb/lottie/au$b;->a:Lcom/airbnb/lottie/au$b;

    const-wide/16 v13, -0x1

    const/4 v15, 0x0

    .line 1194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 3031
    new-instance v5, Lcom/airbnb/lottie/e;

    invoke-direct {v5}, Lcom/airbnb/lottie/e;-><init>()V

    .line 3032
    new-instance v6, Lcom/airbnb/lottie/e;

    invoke-direct {v6}, Lcom/airbnb/lottie/e;-><init>()V

    .line 3037
    new-instance v7, Lcom/airbnb/lottie/g;

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Lcom/airbnb/lottie/g;-><init>(B)V

    .line 3046
    new-instance v8, Lcom/airbnb/lottie/b;

    const/4 v4, 0x0

    invoke-direct {v8, v4}, Lcom/airbnb/lottie/b;-><init>(B)V

    .line 4035
    new-instance v9, Lcom/airbnb/lottie/d;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lcom/airbnb/lottie/d;-><init>(B)V

    .line 3036
    new-instance v4, Lcom/airbnb/lottie/j;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/j;-><init>(Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/k;Lcom/airbnb/lottie/g;Lcom/airbnb/lottie/b;Lcom/airbnb/lottie/d;B)V

    .line 1194
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1196
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    sget v26, Lcom/airbnb/lottie/au$c;->a:I

    const/16 v27, 0x0

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object v8, v11

    move-object/from16 v9, v31

    move-wide/from16 v10, v32

    move-object/from16 v17, v4

    invoke-direct/range {v6 .. v27}, Lcom/airbnb/lottie/au;-><init>(Ljava/util/List;Lcom/airbnb/lottie/av;Ljava/lang/String;JLcom/airbnb/lottie/au$b;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/j;IIIFFIILjava/util/List;IB)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 4069
    iget-object v4, v4, Lcom/airbnb/lottie/av;->d:Ljava/util/List;

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/airbnb/lottie/u;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;Ljava/util/List;Lcom/airbnb/lottie/av;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    .line 169
    return-void
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 357
    iput p1, p0, Lcom/airbnb/lottie/aw;->e:F

    .line 358
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/u;->a(F)V

    .line 361
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget v0, p0, Lcom/airbnb/lottie/aw;->e:F

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    iget v0, p0, Lcom/airbnb/lottie/aw;->e:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    .line 6311
    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-nez v3, :cond_2

    .line 6312
    iput-boolean v1, p0, Lcom/airbnb/lottie/aw;->k:Z

    .line 6313
    iput-boolean v2, p0, Lcom/airbnb/lottie/aw;->l:Z

    .line 6314
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 303
    goto :goto_0

    .line 6316
    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/airbnb/lottie/aw;->e:F

    iget-object v2, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 6317
    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 6318
    if-eqz v0, :cond_0

    .line 6319
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 6316
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method public final c(F)V
    .locals 0

    .prologue
    .line 377
    iput p1, p0, Lcom/airbnb/lottie/aw;->f:F

    .line 378
    invoke-virtual {p0}, Lcom/airbnb/lottie/aw;->d()V

    .line 379
    return-void
.end method

.method final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 7056
    iget-object v0, v0, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 406
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/aw;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 8056
    iget-object v1, v1, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 407
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/airbnb/lottie/aw;->f:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 406
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/airbnb/lottie/aw;->setBounds(IIII)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/aw;->f:F

    .line 277
    iget-object v4, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    .line 4127
    iget-object v0, v4, Lcom/airbnb/lottie/u;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 4128
    invoke-virtual {v4}, Lcom/airbnb/lottie/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/airbnb/lottie/u;->h:Ljava/lang/Boolean;

    move v0, v2

    .line 277
    :goto_1
    if-eqz v0, :cond_5

    .line 278
    iget v0, p0, Lcom/airbnb/lottie/aw;->f:F

    .line 4501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 5056
    iget-object v2, v2, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 4501
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 4502
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 6056
    iget-object v3, v3, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 4502
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 4503
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 281
    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/aw;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 282
    iget-object v1, p0, Lcom/airbnb/lottie/aw;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 283
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->o:Lcom/airbnb/lottie/u;

    iget-object v1, p0, Lcom/airbnb/lottie/aw;->p:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/aw;->q:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/airbnb/lottie/u;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    .line 4133
    :cond_1
    iget-object v0, v4, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_3

    .line 4134
    iget-object v0, v4, Lcom/airbnb/lottie/u;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    invoke-virtual {v0}, Lcom/airbnb/lottie/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/airbnb/lottie/u;->h:Ljava/lang/Boolean;

    move v0, v2

    .line 4136
    goto :goto_1

    .line 4133
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    .line 4139
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/airbnb/lottie/u;->h:Ljava/lang/Boolean;

    .line 4141
    :cond_4
    iget-object v0, v4, Lcom/airbnb/lottie/u;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/airbnb/lottie/aw;->k:Z

    .line 412
    iput-boolean v0, p0, Lcom/airbnb/lottie/aw;->l:Z

    .line 413
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 414
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/airbnb/lottie/aw;->q:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 10056
    iget-object v0, v0, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 437
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/aw;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/aw;->b:Lcom/airbnb/lottie/av;

    .line 9056
    iget-object v0, v0, Lcom/airbnb/lottie/av;->e:Landroid/graphics/Rect;

    .line 433
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/aw;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 512
    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 520
    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/airbnb/lottie/aw;->q:I

    .line 197
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/airbnb/lottie/aw;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 528
    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
