.class public Lcom/piriform/ccleaner/ui/view/IntrinsicHeightRestrictedImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/IntrinsicHeightRestrictedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 20
    if-nez v3, :cond_1

    move v2, v0

    .line 21
    :goto_0
    if-nez v3, :cond_2

    .line 23
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 24
    if-lez v0, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    :cond_0
    mul-int/2addr v2, v1

    div-int v0, v2, v0

    .line 26
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;->onMeasure(II)V

    .line 27
    return-void

    .line 20
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1
.end method
