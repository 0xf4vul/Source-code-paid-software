.class abstract Lcom/airbnb/lottie/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/n$a;
.implements Lcom/airbnb/lottie/z;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Lcom/airbnb/lottie/aw;

.field final c:Lcom/airbnb/lottie/au;

.field d:Lcom/airbnb/lottie/o;

.field e:Lcom/airbnb/lottie/o;

.field final f:Lcom/airbnb/lottie/cf;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Matrix;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private q:Lcom/airbnb/lottie/az;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/o;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/n",
            "<**>;>;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->i:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->k:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->l:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->a:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->s:Ljava/util/List;

    .line 68
    iput-boolean v1, p0, Lcom/airbnb/lottie/o;->t:Z

    .line 71
    iput-object p1, p0, Lcom/airbnb/lottie/o;->b:Lcom/airbnb/lottie/aw;

    .line 72
    iput-object p2, p0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/o;->l:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object v0, p0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1125
    iget v0, p2, Lcom/airbnb/lottie/au;->p:I

    .line 75
    sget v2, Lcom/airbnb/lottie/au$c;->c:I

    if-ne v0, v2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/o;->k:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1137
    :goto_0
    iget-object v0, p2, Lcom/airbnb/lottie/au;->h:Lcom/airbnb/lottie/j;

    .line 81
    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->a()Lcom/airbnb/lottie/cf;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    .line 82
    iget-object v0, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/cf;->a(Lcom/airbnb/lottie/n$a;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/cf;->a(Lcom/airbnb/lottie/o;)V

    .line 2117
    iget-object v0, p2, Lcom/airbnb/lottie/au;->g:Ljava/util/List;

    .line 85
    if-eqz v0, :cond_1

    .line 3117
    iget-object v0, p2, Lcom/airbnb/lottie/au;->g:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/airbnb/lottie/az;

    .line 4117
    iget-object v2, p2, Lcom/airbnb/lottie/au;->g:Ljava/util/List;

    .line 86
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/az;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 87
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 5025
    iget-object v0, v0, Lcom/airbnb/lottie/az;->a:Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n;

    .line 88
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o;->k:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 5116
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 6093
    iget-object v0, v0, Lcom/airbnb/lottie/au;->o:Ljava/util/List;

    .line 5116
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5117
    new-instance v2, Lcom/airbnb/lottie/ad;

    iget-object v0, p0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 7093
    iget-object v0, v0, Lcom/airbnb/lottie/au;->o:Ljava/util/List;

    .line 5118
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/ad;-><init>(Ljava/util/List;)V

    .line 8032
    iput-boolean v1, v2, Lcom/airbnb/lottie/n;->b:Z

    .line 5120
    new-instance v0, Lcom/airbnb/lottie/o$1;

    invoke-direct {v0, p0, v2}, Lcom/airbnb/lottie/o$1;-><init>(Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/ad;)V

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/ad;->a(Lcom/airbnb/lottie/n$a;)V

    .line 5125
    invoke-virtual {v2}, Lcom/airbnb/lottie/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/o;->a(Z)V

    .line 5126
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 5127
    :goto_3
    return-void

    .line 5125
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 5128
    :cond_3
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/o;->a(Z)V

    goto :goto_3
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 197
    iget-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/o;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 268
    iget-object v0, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->j:Landroid/graphics/Paint;

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 269
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 13021
    iget-object v0, v0, Lcom/airbnb/lottie/az;->b:Ljava/util/List;

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 273
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 274
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 14021
    iget-object v0, v0, Lcom/airbnb/lottie/az;->b:Ljava/util/List;

    .line 274
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ay;

    .line 275
    iget-object v1, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 14025
    iget-object v1, v1, Lcom/airbnb/lottie/az;->a:Ljava/util/List;

    .line 275
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/n;

    .line 276
    invoke-virtual {v1}, Lcom/airbnb/lottie/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 277
    iget-object v4, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 278
    iget-object v1, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 280
    sget-object v1, Lcom/airbnb/lottie/o$2;->b:[I

    .line 14055
    iget v0, v0, Lcom/airbnb/lottie/ay;->a:I

    .line 280
    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 286
    iget-object v0, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    return-void

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    invoke-direct {p0}, Lcom/airbnb/lottie/o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    :pswitch_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 11021
    iget-object v0, v0, Lcom/airbnb/lottie/az;->b:Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    .line 207
    :goto_1
    if-ge v2, v4, :cond_2

    .line 208
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 12021
    iget-object v0, v0, Lcom/airbnb/lottie/az;->b:Ljava/util/List;

    .line 208
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ay;

    .line 209
    iget-object v1, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 12025
    iget-object v1, v1, Lcom/airbnb/lottie/az;->a:Ljava/util/List;

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/n;

    .line 210
    invoke-virtual {v1}, Lcom/airbnb/lottie/n;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 211
    iget-object v5, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 212
    iget-object v1, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    invoke-virtual {v1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 214
    sget-object v1, Lcom/airbnb/lottie/o$2;->b:[I

    .line 12055
    iget v0, v0, Lcom/airbnb/lottie/ay;->a:I

    .line 214
    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/o;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 225
    if-nez v2, :cond_1

    .line 226
    iget-object v0, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 207
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 229
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v5, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/airbnb/lottie/o;->p:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 232
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 228
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 238
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 239
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 240
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/airbnb/lottie/o;->n:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 238
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/o;->q:Lcom/airbnb/lottie/az;

    .line 15025
    iget-object v0, v0, Lcom/airbnb/lottie/az;->a:Ljava/util/List;

    .line 294
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    .line 8133
    iget-object v0, p0, Lcom/airbnb/lottie/o;->b:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->invalidateSelf()V

    .line 97
    return-void
.end method

.method a(F)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/o;->a(F)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/o;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/airbnb/lottie/o;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/n;->a(F)V

    .line 308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/airbnb/lottie/o;->t:Z

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 8314
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    if-nez v0, :cond_1

    .line 8317
    iget-object v0, p0, Lcom/airbnb/lottie/o;->e:Lcom/airbnb/lottie/o;

    if-nez v0, :cond_2

    .line 8318
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 154
    iget-object v0, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 155
    iget-object v0, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 156
    iget-object v2, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/o;

    iget-object v0, v0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v0}, Lcom/airbnb/lottie/cf;->a()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 155
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 8322
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    .line 8323
    iget-object v0, p0, Lcom/airbnb/lottie/o;->e:Lcom/airbnb/lottie/o;

    .line 8324
    :goto_2
    if-eqz v0, :cond_1

    .line 8325
    iget-object v1, p0, Lcom/airbnb/lottie/o;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8326
    iget-object v0, v0, Lcom/airbnb/lottie/o;->e:Lcom/airbnb/lottie/o;

    goto :goto_2

    .line 158
    :cond_3
    int-to-float v0, p3

    div-float v1, v0, v3

    iget-object v0, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    .line 9040
    iget-object v0, v0, Lcom/airbnb/lottie/cf;->a:Lcom/airbnb/lottie/n;

    .line 159
    invoke-virtual {v0}, Lcom/airbnb/lottie/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/o;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/airbnb/lottie/o;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v2}, Lcom/airbnb/lottie/cf;->a()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 162
    iget-object v1, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/airbnb/lottie/o;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/16 :goto_0

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 168
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    .line 9247
    invoke-virtual {p0}, Lcom/airbnb/lottie/o;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9250
    iget-object v3, p0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 10125
    iget v3, v3, Lcom/airbnb/lottie/au;->p:I

    .line 9250
    sget v4, Lcom/airbnb/lottie/au$c;->c:I

    if-eq v3, v4, :cond_5

    .line 9256
    iget-object v3, p0, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    iget-object v4, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 9257
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 9258
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 9259
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    .line 9260
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/airbnb/lottie/o;->o:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 9261
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 9257
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v2}, Lcom/airbnb/lottie/cf;->a()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 171
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/lottie/o;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 173
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->i:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 177
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;)V

    .line 178
    iget-object v1, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v1, v0}, Lcom/airbnb/lottie/o;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 180
    invoke-direct {p0}, Lcom/airbnb/lottie/o;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/airbnb/lottie/o;->h:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 184
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/o;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 185
    iget-object v1, p0, Lcom/airbnb/lottie/o;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/o;->k:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 186
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;)V

    .line 188
    iget-object v1, p0, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    invoke-virtual {v1, p1, p2, v0}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/lottie/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v0, p0, Lcom/airbnb/lottie/o;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/o;->f:Lcom/airbnb/lottie/cf;

    invoke-virtual {v1}, Lcom/airbnb/lottie/cf;->a()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 145
    return-void
.end method

.method final a(Lcom/airbnb/lottie/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/n",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 137
    instance-of v0, p1, Lcom/airbnb/lottie/cd;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/airbnb/lottie/o;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/w;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/airbnb/lottie/o;->t:Z

    if-eq p1, v0, :cond_0

    .line 299
    iput-boolean p1, p0, Lcom/airbnb/lottie/o;->t:Z

    .line 15133
    iget-object v0, p0, Lcom/airbnb/lottie/o;->b:Lcom/airbnb/lottie/aw;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aw;->invalidateSelf()V

    .line 302
    :cond_0
    return-void
.end method

.method abstract b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/lottie/o;->d:Lcom/airbnb/lottie/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/airbnb/lottie/o;->c:Lcom/airbnb/lottie/au;

    .line 16101
    iget-object v0, v0, Lcom/airbnb/lottie/au;->b:Ljava/lang/String;

    .line 331
    return-object v0
.end method
