.class public Lcom/piriform/ccleaner/ui/view/ColorBlock;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/piriform/ccleaner/ui/view/i;

.field private final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->b:Landroid/graphics/Path;

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/ui/view/i;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/view/i;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->c:Lcom/piriform/ccleaner/ui/view/i;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->d:Landroid/graphics/RectF;

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->c:Lcom/piriform/ccleaner/ui/view/i;

    sget-object v1, Lcom/piriform/ccleaner/h$a;->RoundedCorners:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/piriform/ccleaner/ui/view/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V

    .line 1033
    sget-object v0, Lcom/piriform/ccleaner/h$a;->ColorBlock:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1035
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1038
    return-void

    .line 1037
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->c:Lcom/piriform/ccleaner/ui/view/i;

    .line 2036
    iget-object v2, v2, Lcom/piriform/ccleaner/ui/view/i;->a:[F

    .line 49
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 50
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->d:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/ColorBlock;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method
