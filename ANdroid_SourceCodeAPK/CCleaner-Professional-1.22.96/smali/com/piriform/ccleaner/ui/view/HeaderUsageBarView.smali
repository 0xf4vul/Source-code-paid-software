.class public Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1045
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/h$a;->HeaderUsageBarView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1047
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->f:Ljava/lang/String;

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->e:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1055
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1056
    const v1, 0x7f03008e

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2016
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->a:Landroid/widget/ImageView;

    .line 3016
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1059
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->b:Landroid/widget/TextView;

    .line 4016
    const v0, 0x7f100157

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->c:Landroid/widget/TextView;

    .line 5016
    const v0, 0x7f100158

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    check-cast v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->d:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 1063
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1064
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public getBar()Lcom/piriform/ccleaner/ui/view/SectionedBarView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->d:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollapsedBarTranslation(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->g:I

    .line 70
    return-void
.end method

.method public setFractionCollapsed(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->d:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    iget v1, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->setTranslationY(F)V

    .line 79
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->h:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
