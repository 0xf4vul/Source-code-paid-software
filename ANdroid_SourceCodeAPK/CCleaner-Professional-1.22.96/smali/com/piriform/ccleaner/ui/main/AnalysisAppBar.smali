.class public Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;
.super Landroid/support/design/widget/AppBarLayout;
.source "SourceFile"


# instance fields
.field public final f:Landroid/support/v7/widget/Toolbar;

.field public final g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

.field public final h:Lcom/piriform/ccleaner/ui/view/a;

.field public final i:Lcom/piriform/ccleaner/ui/view/a;

.field public final j:Landroid/support/v7/widget/RecyclerView$l;

.field public final k:Landroid/view/View$OnLayoutChangeListener;

.field public l:Landroid/view/View;

.field public m:Landroid/support/v7/widget/RecyclerView;

.field private final n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

.field private final o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar$1;-><init>(Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->j:Landroid/support/v7/widget/RecyclerView$l;

    .line 45
    new-instance v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar$2;-><init>(Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->k:Landroid/view/View$OnLayoutChangeListener;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030089

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->f:Landroid/support/v7/widget/Toolbar;

    .line 2016
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    .line 3016
    const v0, 0x7f100147

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    .line 4016
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 69
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    const v1, 0x7f0a0099

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setCollapsedBarTranslation(I)V

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    const v1, 0x7f0a0098

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setCollapsedBarTranslation(I)V

    .line 73
    const v0, 0x7f0e007f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 74
    const v0, 0x7f0e008d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 76
    new-instance v0, Lcom/piriform/ccleaner/ui/view/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    sget-object v2, Lcom/piriform/ccleaner/t/q$a;->b:Lcom/piriform/ccleaner/t/q$a;

    const v5, 0x7f0e0011

    .line 81
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f0e000a

    .line 82
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/view/a;-><init>(Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;Lcom/piriform/ccleaner/t/q$a;IIII)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->h:Lcom/piriform/ccleaner/ui/view/a;

    .line 84
    new-instance v0, Lcom/piriform/ccleaner/ui/view/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    sget-object v2, Lcom/piriform/ccleaner/t/q$a;->a:Lcom/piriform/ccleaner/t/q$a;

    const v5, 0x7f0e0010

    .line 89
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f0e0009

    .line 90
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/ui/view/a;-><init>(Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;Lcom/piriform/ccleaner/t/q$a;IIII)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->i:Lcom/piriform/ccleaner/ui/view/a;

    .line 92
    return-void
.end method

.method public static a(Landroid/support/v7/widget/Toolbar;)Landroid/view/View;
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 179
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 183
    :goto_1
    return-object v0

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setRecyclerViewPadding(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->h:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/ui/view/a;->a(J)V

    .line 111
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->h:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/a;->a()V

    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->i:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/a;->a()V

    .line 120
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->a()V

    .line 132
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 161
    .line 4197
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    .line 4198
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->j()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 161
    :goto_0
    if-eqz v0, :cond_4

    .line 4202
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 4203
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$h;->f(I)Landroid/view/View;

    move-result-object v0

    .line 4204
    if-nez v0, :cond_3

    move v0, v1

    .line 5165
    :goto_1
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->setTranslationY(F)V

    .line 5166
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->f:Landroid/support/v7/widget/Toolbar;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTranslationY(F)V

    .line 5167
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    div-int/lit8 v2, v0, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setTranslationY(F)V

    .line 5169
    int-to-float v0, v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 5171
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->l:Landroid/view/View;

    .line 5187
    if-eqz v1, :cond_1

    .line 5188
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5172
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setFractionCollapsed(F)V

    .line 5173
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setFractionCollapsed(F)V

    .line 162
    return-void

    :cond_2
    move v0, v1

    .line 4198
    goto :goto_0

    .line 4207
    :cond_3
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$h;->f(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4208
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->p:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 161
    :cond_4
    iget v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->p:I

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 149
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout;->onLayout(ZIIII)V

    .line 150
    if-eqz p1, :cond_0

    .line 4193
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->f:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->p:I

    .line 153
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->setRecyclerViewPadding(I)V

    .line 158
    return-void
.end method

.method public setHeaderBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->n:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->o:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
