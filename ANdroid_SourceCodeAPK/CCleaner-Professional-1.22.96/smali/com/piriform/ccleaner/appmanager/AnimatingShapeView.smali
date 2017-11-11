.class public Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field private c:F

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->f:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->g:Landroid/graphics/Paint;

    .line 1119
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1120
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->g:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1130
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void

    .line 1123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Background must be a Color Drawable. Check your xml"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->g:Landroid/graphics/Paint;

    return-object v0
.end method

.method private c(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 137
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 138
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 139
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView$1;-><init>(Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    return-object v0

    .line 41
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final a(F)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 7

    .prologue
    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    iget v1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    iget v2, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->c:F

    .line 109
    invoke-virtual {p0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->invalidate()V

    .line 110
    return-object p0
.end method

.method public final a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 73
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 78
    return-object p0
.end method

.method public final b(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 83
    return-object p0
.end method

.method public final b(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 88
    return-object p0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(F)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->c:F

    iget v2, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->c:F

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 69
    return-void
.end method
