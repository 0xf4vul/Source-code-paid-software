.class public Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/graphics/drawable/StateListDrawable;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a8

    aput v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/piriform/ccleaner/h$a;->CollapseIndicatorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 32
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 33
    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "statefulDrawable is required!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statefulDrawable must be a StateListDrawable!"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 44
    :cond_1
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    .line 45
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 68
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 70
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->invalidate()V

    .line 71
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->a:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1048
    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->c:Z

    .line 59
    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->a:[I

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->mergeDrawableStates([I[I)[I

    .line 62
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 79
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingLeft()I

    move-result v2

    .line 80
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 81
    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 83
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingTop()I

    move-result v3

    .line 84
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 85
    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 87
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->b:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->c:Z

    .line 53
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->refreshDrawableState()V

    .line 54
    return-void
.end method
