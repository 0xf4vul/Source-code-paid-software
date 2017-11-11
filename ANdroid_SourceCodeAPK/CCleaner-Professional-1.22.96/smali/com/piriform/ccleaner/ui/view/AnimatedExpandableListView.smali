.class public Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->a:Ljava/util/List;

    .line 57
    return-void
.end method

.method private getChildViewBounds()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "[I>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->getChildCount()I

    move-result v3

    move v0, v1

    .line 207
    :goto_0
    if-ge v0, v3, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 209
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 210
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    aput v6, v5, v1

    .line 211
    const/4 v6, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    aput v7, v5, v6

    .line 212
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->getCount()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 230
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    :cond_1
    return-void

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 239
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 241
    neg-int v0, v2

    int-to-float v0, v0

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/AnimatedExpandableListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 221
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 222
    return-void
.end method
