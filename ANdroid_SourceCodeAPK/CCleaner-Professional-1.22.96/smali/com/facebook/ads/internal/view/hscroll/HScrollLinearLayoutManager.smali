.class public Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:I

.field c:F

.field d:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

.field e:I

.field private final f:Lcom/facebook/ads/internal/view/hscroll/c;

.field private final g:Lcom/facebook/ads/internal/view/hscroll/a;

.field private h:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/hscroll/c;Lcom/facebook/ads/internal/view/hscroll/a;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->c:F

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->f:Lcom/facebook/ads/internal/view/hscroll/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;-><init>(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->c:F

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V
    .locals 12

    .prologue
    .line 0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_0

    .line 11327
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v4, v0, :cond_2

    .line 12327
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 0
    if-nez v0, :cond_2

    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;II)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    .line 13000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    .line 0
    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    .line 14000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 0
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_3

    const/4 v1, 0x0

    aput v5, v0, v1

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v4, v1, :cond_4

    const/4 v1, 0x1

    aput v6, v0, v1

    :cond_4
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h(II)V

    goto :goto_0

    .line 13000
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_6
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$r;->a()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-gtz v2, :cond_8

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 15000
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(I)Landroid/view/View;

    move-result-object v9

    .line 16000
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->width:I

    invoke-static {v7, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->height:I

    invoke-static {v8, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v9, v7, v8}, Landroid/view/View;->measure(II)V

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->rightMargin:I

    add-int/2addr v10, v11

    aput v10, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$i;->bottomMargin:I

    add-int/2addr v10, v11

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->topMargin:I

    add-int/2addr v0, v10

    aput v0, v7, v8

    .line 15000
    invoke-virtual {p1, v9}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/View;)V

    .line 0
    iput-object v7, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:[I

    .line 16327
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 0
    if-nez v0, :cond_7

    const/4 v0, 0x0

    aget v7, v1, v0

    iget-object v8, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v7, v8

    aput v7, v1, v0

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->p()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->r()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v1, v0

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    aget v7, v1, v0

    iget-object v8, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    aput v7, v1, v0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->o()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->q()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v1, v0

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v2, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    .line 17000
    iget-object v0, v0, Lcom/facebook/ads/internal/view/hscroll/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    .line 0
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    .line 17963
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$q;->f:I

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:I

    invoke-super {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    return-void
.end method
