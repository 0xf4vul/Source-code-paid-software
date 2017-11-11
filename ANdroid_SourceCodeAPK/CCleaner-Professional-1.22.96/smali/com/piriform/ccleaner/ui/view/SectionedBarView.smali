.class public Lcom/piriform/ccleaner/ui/view/SectionedBarView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/view/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Paint;

.field private final c:Lcom/piriform/ccleaner/ui/view/i;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Path;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->b:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Lcom/piriform/ccleaner/ui/view/i;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/view/i;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->c:Lcom/piriform/ccleaner/ui/view/i;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->d:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->e:Landroid/graphics/Path;

    .line 1105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->c:Lcom/piriform/ccleaner/ui/view/i;

    sget-object v1, Lcom/piriform/ccleaner/h$a;->RoundedCorners:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/piriform/ccleaner/ui/view/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)V

    .line 1110
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1111
    if-nez v0, :cond_1

    .line 1112
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->f:Landroid/graphics/drawable/Drawable;

    .line 1119
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2021
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 2022
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 42
    :cond_0
    return-void

    .line 1114
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/view/j;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->invalidate()V

    .line 47
    return-void
.end method

.method public getMaxValue()J
    .locals 2

    .prologue
    .line 50
    const-wide/32 v0, 0xf4240

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getPaddingLeft()I

    move-result v10

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getWidth()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getPaddingRight()I

    move-result v3

    sub-int v12, v2, v3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getPaddingTop()I

    move-result v13

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getPaddingBottom()I

    move-result v3

    sub-int v14, v2, v3

    .line 75
    sub-int v15, v12, v10

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->d:Landroid/graphics/RectF;

    int-to-float v3, v10

    int-to-float v4, v13

    int-to-float v5, v12

    int-to-float v6, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->e:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->d:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->c:Lcom/piriform/ccleaner/ui/view/i;

    .line 2036
    iget-object v4, v4, Lcom/piriform/ccleaner/ui/view/i;->a:[F

    .line 79
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->e:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10, v13, v12, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->f:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    const-wide/16 v2, 0x0

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-wide v4, v2

    move v3, v10

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/ui/view/j;

    .line 3021
    iget-wide v6, v2, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 88
    add-long v8, v4, v6

    .line 89
    int-to-long v4, v15

    mul-long/2addr v4, v8

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int v11, v10, v4

    .line 93
    add-int/lit8 v4, v12, -0x2

    if-le v11, v4, :cond_0

    move v11, v12

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->b:Landroid/graphics/Paint;

    .line 4017
    iget v2, v2, Lcom/piriform/ccleaner/ui/view/j;->a:I

    .line 97
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    int-to-float v3, v3

    int-to-float v4, v13

    int-to-float v5, v11

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->b:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-wide v4, v8

    move v3, v11

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getDefaultSize(II)I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getDefaultSize(II)I

    move-result v1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->setMeasuredDimension(II)V

    .line 67
    return-void
.end method
