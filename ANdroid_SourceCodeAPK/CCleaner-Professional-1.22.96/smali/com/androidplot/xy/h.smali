.class public final Lcom/androidplot/xy/h;
.super Lcom/androidplot/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/h$1;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/graphics/Paint;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Landroid/graphics/Paint;

.field private L:Lcom/androidplot/xy/XYPlot;

.field private M:Landroid/graphics/Paint;

.field private N:Landroid/graphics/Paint;

.field private O:Landroid/graphics/Paint;

.field private P:Landroid/graphics/Paint;

.field private Q:Landroid/graphics/RectF;

.field private R:Landroid/graphics/RectF;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:F

.field private X:F

.field private Y:Lcom/androidplot/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/e",
            "<",
            "Landroid/graphics/Paint;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lcom/androidplot/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/e",
            "<",
            "Landroid/graphics/Paint;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field a:I

.field private aa:Lcom/androidplot/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/c/h",
            "<",
            "Lcom/androidplot/xy/c;",
            "Lcom/androidplot/xy/a;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Landroid/graphics/Paint;

.field l:Ljava/text/Format;

.field m:Ljava/text/Format;

.field n:F

.field o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Lcom/androidplot/b/e;Lcom/androidplot/xy/XYPlot;Lcom/androidplot/b/m;)V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, -0x100

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 199
    invoke-direct {p0, p1, p3}, Lcom/androidplot/b/a/b;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;)V

    .line 89
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/androidplot/xy/h;->p:F

    .line 91
    const/high16 v0, 0x42240000    # 41.0f

    iput v0, p0, Lcom/androidplot/xy/h;->q:F

    .line 92
    const/high16 v0, -0x3f600000    # -5.0f

    iput v0, p0, Lcom/androidplot/xy/h;->r:F

    .line 93
    iput v1, p0, Lcom/androidplot/xy/h;->s:F

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/androidplot/xy/h;->t:F

    .line 95
    iput v1, p0, Lcom/androidplot/xy/h;->u:F

    .line 97
    iput v4, p0, Lcom/androidplot/xy/h;->a:I

    .line 98
    iput v4, p0, Lcom/androidplot/xy/h;->j:I

    .line 99
    iput v1, p0, Lcom/androidplot/xy/h;->v:F

    .line 100
    iput v1, p0, Lcom/androidplot/xy/h;->w:F

    .line 101
    iput v1, p0, Lcom/androidplot/xy/h;->x:F

    .line 102
    iput v1, p0, Lcom/androidplot/xy/h;->y:F

    .line 103
    const/4 v0, 0x5

    iput v0, p0, Lcom/androidplot/xy/h;->z:I

    .line 104
    const/4 v0, 0x5

    iput v0, p0, Lcom/androidplot/xy/h;->A:I

    .line 127
    iput-boolean v4, p0, Lcom/androidplot/xy/h;->S:Z

    .line 129
    iput-boolean v4, p0, Lcom/androidplot/xy/h;->T:Z

    .line 131
    iput-boolean v4, p0, Lcom/androidplot/xy/h;->U:Z

    .line 132
    iput-boolean v4, p0, Lcom/androidplot/xy/h;->V:Z

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    const/16 v3, 0x8c

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    const/16 v2, 0xb4

    const/16 v3, 0xb4

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/h;->D:Landroid/graphics/Paint;

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/h;->D:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/h;->E:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/xy/h;->C:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->O:Landroid/graphics/Paint;

    .line 164
    iget-object v0, p0, Lcom/androidplot/xy/h;->O:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/androidplot/xy/h;->O:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v0, p0, Lcom/androidplot/xy/h;->O:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->P:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lcom/androidplot/xy/h;->P:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/androidplot/xy/h;->P:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcom/androidplot/xy/h;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v0, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->H:Landroid/graphics/Paint;

    .line 180
    iget-object v0, p0, Lcom/androidplot/xy/h;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->I:Landroid/graphics/Paint;

    .line 182
    iget-object v0, p0, Lcom/androidplot/xy/h;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->J:Landroid/graphics/Paint;

    .line 184
    iget-object v0, p0, Lcom/androidplot/xy/h;->J:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->K:Landroid/graphics/Paint;

    .line 186
    iget-object v0, p0, Lcom/androidplot/xy/h;->K:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/h;->d(F)V

    .line 188
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0}, Lcom/androidplot/xy/h;->c(F)V

    .line 1231
    iget-object v0, p0, Lcom/androidplot/b/a/b;->e:Lcom/androidplot/b/b;

    .line 2127
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Lcom/androidplot/b/b;->d:F

    .line 190
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/h;->l:Ljava/text/Format;

    .line 191
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/h;->m:Ljava/text/Format;

    .line 195
    new-instance v0, Lcom/androidplot/c/h;

    invoke-direct {v0}, Lcom/androidplot/c/h;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/h;->aa:Lcom/androidplot/c/h;

    .line 200
    iput-object p2, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    .line 201
    return-void
.end method

.method private a(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/androidplot/xy/h;->l:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 547
    iget-object v0, p0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidplot/xy/h;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 553
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 554
    iget-object v2, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/c/g;->a(DDDFZ)F

    move-result v0

    .line 558
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v0, v1

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    sget v1, Lcom/androidplot/xy/f;->a:I

    iget-object v3, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/androidplot/xy/o;->a(Lcom/androidplot/xy/XYPlot;ILandroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;

    move-result-object v10

    .line 570
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v4, v0

    .line 578
    :goto_1
    if-nez v4, :cond_2

    .line 579
    iget-object v4, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v5, p0, Lcom/androidplot/xy/h;->M:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 587
    :cond_3
    const/4 v0, 0x1

    .line 14046
    iget v1, v10, Lcom/androidplot/xy/n;->a:F

    .line 589
    sub-float v5, v2, v1

    move v1, v0

    .line 590
    :goto_2
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_a

    .line 592
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v1

    .line 14054
    iget-wide v12, v10, Lcom/androidplot/xy/n;->b:D

    .line 592
    mul-double/2addr v8, v12

    sub-double v8, v6, v8

    .line 594
    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v7, v0

    .line 596
    :goto_3
    if-nez v7, :cond_4

    .line 597
    iget-object v7, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_5

    .line 14074
    iget v0, p0, Lcom/androidplot/xy/h;->j:I

    .line 600
    rem-int v0, v1, v0

    if-nez v0, :cond_9

    .line 601
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->D:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 606
    :cond_5
    :goto_4
    add-int/lit8 v0, v1, 0x1

    .line 590
    int-to-float v1, v0

    .line 15046
    iget v3, v10, Lcom/androidplot/xy/n;->a:F

    .line 590
    mul-float/2addr v1, v3

    sub-float v5, v2, v1

    move v1, v0

    goto :goto_2

    .line 561
    :cond_6
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 576
    :cond_7
    iget-object v4, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    goto :goto_1

    .line 594
    :cond_8
    iget-object v7, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    goto :goto_3

    .line 603
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->E:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_4

    .line 612
    :cond_a
    const/4 v0, 0x1

    .line 16046
    iget v1, v10, Lcom/androidplot/xy/n;->a:F

    .line 614
    add-float v5, v2, v1

    move v1, v0

    .line 615
    :goto_5
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_f

    .line 617
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getDomainOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v1

    .line 16054
    iget-wide v12, v10, Lcom/androidplot/xy/n;->b:D

    .line 617
    mul-double/2addr v8, v12

    add-double/2addr v8, v6

    .line 620
    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/androidplot/xy/h;->Y:Lcom/androidplot/c/e;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v7, v0

    .line 622
    :goto_6
    if-nez v7, :cond_b

    .line 623
    iget-object v7, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    .line 625
    :cond_b
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_c

    .line 16074
    iget v0, p0, Lcom/androidplot/xy/h;->j:I

    .line 627
    rem-int v0, v1, v0

    if-nez v0, :cond_e

    .line 628
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->D:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 633
    :cond_c
    :goto_7
    add-int/lit8 v0, v1, 0x1

    .line 615
    int-to-float v1, v0

    .line 17046
    iget v3, v10, Lcom/androidplot/xy/n;->a:F

    .line 615
    mul-float/2addr v1, v3

    add-float v5, v2, v1

    move v1, v0

    goto :goto_5

    .line 620
    :cond_d
    iget-object v7, p0, Lcom/androidplot/xy/h;->F:Landroid/graphics/Paint;

    goto :goto_6

    .line 630
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->E:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_7

    .line 640
    :cond_f
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 642
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 643
    iget-object v2, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/c/g;->a(DDDFZ)F

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v1

    .line 653
    :goto_8
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    sget v1, Lcom/androidplot/xy/f;->b:I

    iget-object v3, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v5}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/androidplot/xy/o;->a(Lcom/androidplot/xy/XYPlot;ILandroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;

    move-result-object v10

    .line 658
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_12

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_12

    .line 660
    iget-object v0, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    if-eqz v0, :cond_10

    .line 661
    iget-object v0, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 664
    :cond_10
    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v4, v0

    .line 666
    :goto_9
    if-nez v4, :cond_11

    .line 667
    iget-object v4, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    .line 669
    :cond_11
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v5, p0, Lcom/androidplot/xy/h;->N:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 675
    :cond_12
    const/4 v0, 0x1

    .line 18046
    iget v1, v10, Lcom/androidplot/xy/n;->a:F

    .line 677
    sub-float v5, v2, v1

    move v1, v0

    .line 678
    :goto_a
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_19

    .line 680
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v1

    .line 18054
    iget-wide v12, v10, Lcom/androidplot/xy/n;->b:D

    .line 680
    mul-double/2addr v8, v12

    add-double/2addr v8, v6

    .line 683
    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v7, v0

    .line 685
    :goto_b
    if-nez v7, :cond_13

    .line 686
    iget-object v7, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    .line 688
    :cond_13
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_14

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_14

    .line 18066
    iget v0, p0, Lcom/androidplot/xy/h;->a:I

    .line 689
    rem-int v0, v1, v0

    if-nez v0, :cond_18

    .line 690
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 697
    :cond_14
    :goto_c
    add-int/lit8 v0, v1, 0x1

    .line 678
    int-to-float v1, v0

    .line 19046
    iget v3, v10, Lcom/androidplot/xy/n;->a:F

    .line 678
    mul-float/2addr v1, v3

    sub-float v5, v2, v1

    move v1, v0

    goto :goto_a

    .line 650
    :cond_15
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_8

    .line 664
    :cond_16
    iget-object v4, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    goto :goto_9

    .line 683
    :cond_17
    iget-object v7, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    goto :goto_b

    .line 693
    :cond_18
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->C:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_c

    .line 703
    :cond_19
    const/4 v0, 0x1

    .line 20046
    iget v1, v10, Lcom/androidplot/xy/n;->a:F

    .line 705
    add-float v5, v2, v1

    move v1, v0

    .line 706
    :goto_d
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_1e

    .line 708
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRangeOrigin()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v1

    .line 20054
    iget-wide v12, v10, Lcom/androidplot/xy/n;->b:D

    .line 708
    mul-double/2addr v8, v12

    sub-double v8, v6, v8

    .line 711
    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/androidplot/xy/h;->Z:Lcom/androidplot/c/e;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    invoke-interface {v0}, Lcom/androidplot/c/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    move-object v7, v0

    .line 713
    :goto_e
    if-nez v7, :cond_1a

    .line 714
    iget-object v7, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    .line 716
    :cond_1a
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_1b

    .line 20066
    iget v0, p0, Lcom/androidplot/xy/h;->a:I

    .line 717
    rem-int v0, v1, v0

    if-nez v0, :cond_1d

    .line 718
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->B:Landroid/graphics/Paint;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    .line 725
    :cond_1b
    :goto_f
    add-int/lit8 v0, v1, 0x1

    .line 706
    int-to-float v1, v0

    .line 21046
    iget v3, v10, Lcom/androidplot/xy/n;->a:F

    .line 706
    mul-float/2addr v1, v3

    add-float v5, v2, v1

    move v1, v0

    goto :goto_d

    .line 711
    :cond_1c
    iget-object v7, p0, Lcom/androidplot/xy/h;->G:Landroid/graphics/Paint;

    goto :goto_e

    .line 721
    :cond_1d
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v8, p0, Lcom/androidplot/xy/h;->C:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V

    goto :goto_f

    .line 728
    :cond_1e
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 7

    .prologue
    .line 479
    if-nez p6, :cond_4

    .line 480
    if-eqz p5, :cond_0

    .line 481
    iget-boolean v0, p0, Lcom/androidplot/xy/h;->V:Z

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/androidplot/xy/h;->z:I

    int-to-float v1, v1

    add-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 490
    invoke-static {p4}, Lcom/androidplot/c/c;->a(Landroid/graphics/Paint;)F

    move-result v0

    .line 492
    iget-boolean v1, p0, Lcom/androidplot/xy/h;->V:Z

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/androidplot/xy/h;->z:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/androidplot/xy/h;->r:F

    add-float/2addr v1, v2

    add-float v5, v1, v0

    .line 499
    :goto_1
    sget v2, Lcom/androidplot/xy/f;->a:I

    iget v0, p0, Lcom/androidplot/xy/h;->s:F

    add-float v4, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;ILjava/lang/Number;FFLandroid/graphics/Paint;)V

    .line 508
    :cond_1
    :goto_2
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/h;->z:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/androidplot/xy/h;->z:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/androidplot/xy/h;->r:F

    sub-float v5, v0, v1

    goto :goto_1

    .line 502
    :cond_4
    if-eqz p5, :cond_1

    .line 504
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;ILjava/lang/Number;FFLandroid/graphics/Paint;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 440
    .line 442
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 446
    :try_start_0
    sget-object v0, Lcom/androidplot/xy/h$1;->a:[I

    add-int/lit8 v5, p2, -0x1

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    .line 463
    :goto_0
    if-eqz v2, :cond_0

    .line 465
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 14028
    iget v2, v2, Lcom/androidplot/xy/a;->a:I

    .line 466
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object p6, v0

    .line 471
    :cond_0
    invoke-virtual {p1, v1, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 474
    return-void

    .line 7283
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/xy/h;->aa:Lcom/androidplot/c/h;

    .line 8142
    iget-object v0, v0, Lcom/androidplot/c/h;->a:Lcom/androidplot/c/j;

    .line 7283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/c;

    .line 7284
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 9065
    iget-object v7, v0, Lcom/androidplot/xy/c;->a:Lcom/androidplot/a;

    invoke-virtual {v7, v6}, Lcom/androidplot/a;->a(Ljava/lang/Number;)Z

    move-result v6

    .line 7284
    if-eqz v6, :cond_1

    .line 7285
    iget-object v1, p0, Lcom/androidplot/xy/h;->aa:Lcom/androidplot/c/h;

    invoke-virtual {v1, v0}, Lcom/androidplot/c/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/a;

    move-object v1, v0

    .line 449
    :cond_2
    invoke-direct {p0, p3}, Lcom/androidplot/xy/h;->b(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 10044
    iget v2, p0, Lcom/androidplot/xy/h;->X:F

    .line 450
    invoke-virtual {p1, v2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object v2, v1

    move-object v1, v0

    .line 451
    goto :goto_0

    .line 10293
    :pswitch_1
    iget-object v0, p0, Lcom/androidplot/xy/h;->aa:Lcom/androidplot/c/h;

    .line 11142
    iget-object v0, v0, Lcom/androidplot/c/h;->a:Lcom/androidplot/c/j;

    .line 10293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/c;

    .line 10294
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 12070
    iget-object v7, v0, Lcom/androidplot/xy/c;->b:Lcom/androidplot/a;

    invoke-virtual {v7, v6}, Lcom/androidplot/a;->a(Ljava/lang/Number;)Z

    move-result v6

    .line 10294
    if-eqz v6, :cond_3

    .line 10295
    iget-object v1, p0, Lcom/androidplot/xy/h;->aa:Lcom/androidplot/c/h;

    invoke-virtual {v1, v0}, Lcom/androidplot/c/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/a;

    move-object v1, v0

    .line 454
    :cond_4
    invoke-direct {p0, p3}, Lcom/androidplot/xy/h;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 13036
    iget v2, p0, Lcom/androidplot/xy/h;->W:F

    .line 455
    invoke-virtual {p1, v2, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/d;FF)V
    .locals 5

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 741
    add-float v0, p4, v1

    .line 742
    sub-float v1, p5, v1

    .line 743
    new-instance v2, Landroid/graphics/RectF;

    .line 21109
    iget-object v3, p3, Lcom/androidplot/xy/d;->c:Landroid/graphics/Paint;

    .line 743
    invoke-static {p2, v3}, Lcom/androidplot/c/c;->a(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 745
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 747
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 748
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v2, v0, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 751
    :cond_0
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 755
    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 22109
    iget-object v2, p3, Lcom/androidplot/xy/d;->c:Landroid/graphics/Paint;

    .line 755
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 758
    return-void
.end method

.method private b(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/androidplot/xy/h;->m:Ljava/text/Format;

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 761
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getYValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/androidplot/xy/q;

    .line 23093
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 763
    if-eqz v0, :cond_0

    .line 24093
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 764
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 765
    iget-object v2, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/androidplot/c/g;->a(DDDFZ)F

    move-result v0

    .line 769
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v2, v0, v1

    .line 770
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 24101
    iget-object v5, v8, Lcom/androidplot/xy/d;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    .line 770
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24150
    iget-object v0, v8, Lcom/androidplot/xy/d;->d:Lcom/androidplot/b/g;

    .line 774
    check-cast v0, Lcom/androidplot/b/r;

    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androidplot/b/r;->a(F)F

    move-result v0

    .line 776
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v7, v0, v1

    .line 25030
    iget-object v0, v8, Lcom/androidplot/xy/d;->e:Ljava/lang/String;

    .line 778
    if-eqz v0, :cond_1

    .line 26030
    iget-object v5, v8, Lcom/androidplot/xy/d;->e:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    move v8, v2

    .line 779
    invoke-direct/range {v3 .. v8}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/d;FF)V

    goto :goto_0

    .line 26093
    :cond_1
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 781
    invoke-direct {p0, v0}, Lcom/androidplot/xy/h;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v8

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/d;FF)V

    goto :goto_0

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getXValueMarkers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/androidplot/xy/e;

    .line 27093
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 789
    if-eqz v0, :cond_3

    .line 28093
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 790
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 791
    iget-object v2, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v2}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v6, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/androidplot/c/g;->a(DDDFZ)F

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    .line 796
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 28101
    iget-object v5, v8, Lcom/androidplot/xy/d;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    .line 796
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28150
    iget-object v0, v8, Lcom/androidplot/xy/d;->d:Lcom/androidplot/b/g;

    .line 800
    check-cast v0, Lcom/androidplot/b/t;

    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/androidplot/b/t;->a(F)F

    move-result v0

    .line 802
    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v7, v0, v2

    .line 29030
    iget-object v0, v8, Lcom/androidplot/xy/d;->e:Ljava/lang/String;

    .line 803
    if-eqz v0, :cond_4

    .line 30030
    iget-object v4, v8, Lcom/androidplot/xy/d;->e:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    move v6, v1

    .line 804
    invoke-direct/range {v2 .. v7}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/d;FF)V

    goto :goto_1

    .line 30093
    :cond_4
    iget-object v0, v8, Lcom/androidplot/xy/d;->a:Ljava/lang/Number;

    .line 806
    invoke-direct {p0, v0}, Lcom/androidplot/xy/h;->b(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, v8

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;Lcom/androidplot/xy/d;FF)V

    goto :goto_1

    .line 812
    :cond_5
    return-void
.end method

.method private b(Landroid/graphics/Canvas;FLjava/lang/Number;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 7

    .prologue
    .line 512
    if-nez p6, :cond_4

    .line 513
    if-eqz p5, :cond_0

    .line 514
    iget-boolean v0, p0, Lcom/androidplot/xy/h;->U:Z

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/h;->A:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 522
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 524
    iget-boolean v0, p0, Lcom/androidplot/xy/h;->U:Z

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/androidplot/xy/h;->A:I

    int-to-float v1, v1

    iget v2, p0, Lcom/androidplot/xy/h;->t:F

    add-float/2addr v1, v2

    sub-float v4, v0, v1

    .line 531
    :goto_1
    sget v2, Lcom/androidplot/xy/f;->b:I

    iget v0, p0, Lcom/androidplot/xy/h;->u:F

    sub-float v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;ILjava/lang/Number;FFLandroid/graphics/Paint;)V

    .line 538
    :cond_1
    :goto_2
    return-void

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/androidplot/xy/h;->A:I

    int-to-float v2, v2

    add-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/androidplot/xy/h;->A:I

    int-to-float v1, v1

    iget v2, p0, Lcom/androidplot/xy/h;->t:F

    add-float/2addr v1, v2

    add-float v4, v0, v1

    goto :goto_1

    .line 534
    :cond_4
    if-eqz p5, :cond_1

    .line 535
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/a/a;
        }
    .end annotation

    .prologue
    .line 884
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 885
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 886
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getRendererList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 892
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/androidplot/a/a;
        }
    .end annotation

    .prologue
    .line 401
    .line 2426
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget-boolean v0, p0, Lcom/androidplot/xy/h;->U:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/androidplot/xy/h;->q:F

    :goto_0
    add-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget-boolean v0, p0, Lcom/androidplot/xy/h;->V:Z

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget-boolean v0, p0, Lcom/androidplot/xy/h;->U:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    sub-float/2addr v4, v0

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcom/androidplot/xy/h;->V:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/androidplot/xy/h;->p:F

    :goto_3
    sub-float v0, v5, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 401
    iput-object v1, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    .line 403
    iget-object v0, p0, Lcom/androidplot/xy/h;->Q:Landroid/graphics/RectF;

    .line 2433
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/androidplot/xy/h;->x:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/androidplot/xy/h;->v:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/androidplot/xy/h;->y:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/androidplot/xy/h;->w:F

    sub-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 403
    iput-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    .line 409
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 410
    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 414
    invoke-direct {p0, p1}, Lcom/androidplot/xy/h;->a(Landroid/graphics/Canvas;)V

    .line 415
    invoke-direct {p0, p1}, Lcom/androidplot/xy/h;->c(Landroid/graphics/Canvas;)V

    .line 2815
    const/4 v0, 0x0

    .line 2817
    iget-object v1, p0, Lcom/androidplot/xy/h;->H:Landroid/graphics/Paint;

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/androidplot/xy/h;->n:F

    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e

    iget v1, p0, Lcom/androidplot/xy/h;->n:F

    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_e

    .line 2820
    const/4 v6, 0x1

    .line 2821
    iget v1, p0, Lcom/androidplot/xy/h;->n:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/androidplot/xy/h;->n:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/androidplot/xy/h;->H:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2826
    :goto_4
    const/4 v0, 0x0

    .line 2828
    iget-object v1, p0, Lcom/androidplot/xy/h;->I:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/androidplot/xy/h;->o:F

    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/androidplot/xy/h;->o:F

    iget-object v2, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 2831
    const/4 v7, 0x1

    .line 2832
    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/androidplot/xy/h;->o:F

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/androidplot/xy/h;->o:F

    iget-object v5, p0, Lcom/androidplot/xy/h;->I:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v0, v7

    .line 2836
    :cond_0
    iget-boolean v1, p0, Lcom/androidplot/xy/h;->S:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/androidplot/xy/h;->J:Landroid/graphics/Paint;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    .line 2839
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "X="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3042
    iget-object v9, p0, Lcom/androidplot/xy/h;->m:Ljava/text/Format;

    .line 4162
    iget v0, p0, Lcom/androidplot/xy/h;->n:F

    .line 4389
    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_c

    .line 4391
    :cond_1
    const/4 v0, 0x0

    .line 2839
    :goto_5
    invoke-virtual {v9, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5034
    iget-object v9, p0, Lcom/androidplot/xy/h;->l:Ljava/text/Format;

    .line 6174
    iget v0, p0, Lcom/androidplot/xy/h;->o:F

    .line 6363
    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_d

    .line 6365
    :cond_2
    const/4 v0, 0x0

    .line 2841
    :goto_6
    invoke-virtual {v9, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2844
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/androidplot/xy/h;->J:Landroid/graphics/Paint;

    .line 7042
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 7043
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2844
    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2846
    iget v2, p0, Lcom/androidplot/xy/h;->n:F

    iget v3, p0, Lcom/androidplot/xy/h;->o:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 2852
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 2853
    iget v2, p0, Lcom/androidplot/xy/h;->n:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 2860
    :cond_3
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 2861
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/androidplot/xy/h;->o:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 2864
    :cond_4
    iget-object v2, p0, Lcom/androidplot/xy/h;->K:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    .line 2865
    iget-object v2, p0, Lcom/androidplot/xy/h;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2868
    :cond_5
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/androidplot/xy/h;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 7202
    :cond_6
    iget-boolean v0, p0, Lcom/androidplot/xy/h;->T:Z

    .line 417
    if-eqz v0, :cond_7

    .line 418
    invoke-direct {p0, p1}, Lcom/androidplot/xy/h;->b(Landroid/graphics/Canvas;)V

    .line 423
    :cond_7
    return-void

    .line 2426
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/androidplot/xy/h;->p:F

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/androidplot/xy/h;->q:F

    goto/16 :goto_2

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 4393
    :cond_c
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxX()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/androidplot/c/g;->a(FDDFZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_5

    .line 6367
    :cond_d
    iget-object v1, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMinY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lcom/androidplot/xy/h;->L:Lcom/androidplot/xy/XYPlot;

    invoke-virtual {v0}, Lcom/androidplot/xy/XYPlot;->getCalculatedMaxY()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-object v0, p0, Lcom/androidplot/xy/h;->R:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/androidplot/c/g;->a(FDDFZ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_6

    :cond_e
    move v6, v0

    goto/16 :goto_4
.end method
