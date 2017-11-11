.class public final Lcom/androidplot/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    const/high16 v0, 0x40400000    # 3.0f

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/androidplot/b/b;->a:F

    .line 47
    iput v0, p0, Lcom/androidplot/b/b;->b:F

    .line 48
    iput v0, p0, Lcom/androidplot/b/b;->c:F

    .line 49
    iput v0, p0, Lcom/androidplot/b/b;->d:F

    .line 51
    iput v0, p0, Lcom/androidplot/b/b;->e:F

    .line 52
    iput v0, p0, Lcom/androidplot/b/b;->f:F

    .line 53
    iput v0, p0, Lcom/androidplot/b/b;->g:F

    .line 54
    iput v0, p0, Lcom/androidplot/b/b;->h:F

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 1099
    iget v2, p0, Lcom/androidplot/b/b;->a:F

    .line 63
    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 1107
    iget v3, p0, Lcom/androidplot/b/b;->b:F

    .line 63
    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 1115
    iget v4, p0, Lcom/androidplot/b/b;->c:F

    .line 63
    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 1123
    iget v5, p0, Lcom/androidplot/b/b;->d:F

    .line 63
    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final b(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 1131
    iget v2, p0, Lcom/androidplot/b/b;->e:F

    .line 75
    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 1139
    iget v3, p0, Lcom/androidplot/b/b;->f:F

    .line 75
    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 1147
    iget v4, p0, Lcom/androidplot/b/b;->g:F

    .line 75
    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 1155
    iget v5, p0, Lcom/androidplot/b/b;->h:F

    .line 75
    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
