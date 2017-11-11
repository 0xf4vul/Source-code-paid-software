.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/g/k$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:F

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/g/a;

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 74
    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 76
    sget-object v0, Lcom/google/android/exoplayer2/g/a;->a:Lcom/google/android/exoplayer2/g/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/g/a;

    .line 77
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    .line 78
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 83
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v11, v2

    .line 224
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getTop()I

    move-result v2

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getBottom()I

    move-result v3

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingLeft()I

    move-result v5

    add-int v16, v4, v5

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingTop()I

    move-result v4

    add-int v17, v2, v4

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingRight()I

    move-result v5

    add-int v18, v4, v5

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getPaddingBottom()I

    move-result v4

    sub-int v19, v3, v4

    .line 232
    move/from16 v0, v19

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    .line 248
    :cond_0
    return-void

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v11, v2

    goto :goto_0

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    move v15, v2

    .line 239
    :goto_1
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-lez v2, :cond_0

    .line 244
    const/4 v2, 0x0

    move v14, v2

    :goto_2
    if-ge v14, v11, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/exoplayer2/ui/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/g/b;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/g/a;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    .line 2144
    iget-object v3, v2, Lcom/google/android/exoplayer2/g/b;->a:Ljava/lang/CharSequence;

    .line 2145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2149
    if-nez v5, :cond_3

    .line 2151
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2153
    :cond_3
    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->d:Ljava/lang/CharSequence;

    .line 2354
    if-eq v4, v3, :cond_4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    const/4 v4, 0x1

    .line 2153
    :goto_3
    if-eqz v4, :cond_9

    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->e:Landroid/text/Layout$Alignment;

    iget-object v7, v2, Lcom/google/android/exoplayer2/g/b;->b:Landroid/text/Layout$Alignment;

    .line 2154
    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->c:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->g:I

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->d:I

    if-ne v4, v7, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->h:I

    .line 2157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->i:F

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->f:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->j:I

    .line 2159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->k:F

    iget v7, v2, Lcom/google/android/exoplayer2/g/b;->h:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_9

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/ui/a;->l:Z

    if-ne v4, v5, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->m:I

    iget v7, v6, Lcom/google/android/exoplayer2/g/a;->b:I

    if-ne v4, v7, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->n:I

    iget v7, v6, Lcom/google/android/exoplayer2/g/a;->c:I

    if-ne v4, v7, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->o:I

    iget v7, v6, Lcom/google/android/exoplayer2/g/a;->d:I

    if-ne v4, v7, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->q:I

    iget v7, v6, Lcom/google/android/exoplayer2/g/a;->e:I

    if-ne v4, v7, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->p:I

    iget v7, v6, Lcom/google/android/exoplayer2/g/a;->f:I

    if-ne v4, v7, :cond_9

    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->c:Landroid/text/TextPaint;

    .line 2167
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget-object v7, v6, Lcom/google/android/exoplayer2/g/a;->g:Landroid/graphics/Typeface;

    invoke-static {v4, v7}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->r:F

    cmpl-float v4, v4, v15

    if-nez v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->s:F

    cmpl-float v4, v4, v13

    if-nez v4, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->t:I

    move/from16 v0, v16

    if-ne v4, v0, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->v:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_9

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    .line 2175
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/ui/a;->a(Landroid/graphics/Canvas;)V

    .line 244
    :cond_5
    :goto_4
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_2

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    if-nez v5, :cond_7

    sub-int v2, v19, v17

    :goto_5
    int-to-float v2, v2

    mul-float/2addr v2, v4

    move v15, v2

    goto/16 :goto_1

    :cond_7
    sub-int v2, v3, v2

    goto :goto_5

    .line 2354
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2179
    :cond_9
    iput-object v3, v10, Lcom/google/android/exoplayer2/ui/a;->d:Ljava/lang/CharSequence;

    .line 2180
    iget-object v4, v2, Lcom/google/android/exoplayer2/g/b;->b:Landroid/text/Layout$Alignment;

    iput-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->e:Landroid/text/Layout$Alignment;

    .line 2181
    iget v4, v2, Lcom/google/android/exoplayer2/g/b;->c:F

    iput v4, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    .line 2182
    iget v4, v2, Lcom/google/android/exoplayer2/g/b;->d:I

    iput v4, v10, Lcom/google/android/exoplayer2/ui/a;->g:I

    .line 2183
    iget v4, v2, Lcom/google/android/exoplayer2/g/b;->e:I

    iput v4, v10, Lcom/google/android/exoplayer2/ui/a;->h:I

    .line 2184
    iget v4, v2, Lcom/google/android/exoplayer2/g/b;->f:F

    iput v4, v10, Lcom/google/android/exoplayer2/ui/a;->i:F

    .line 2185
    iget v4, v2, Lcom/google/android/exoplayer2/g/b;->g:I

    iput v4, v10, Lcom/google/android/exoplayer2/ui/a;->j:I

    .line 2186
    iget v2, v2, Lcom/google/android/exoplayer2/g/b;->h:F

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->k:F

    .line 2187
    iput-boolean v5, v10, Lcom/google/android/exoplayer2/ui/a;->l:Z

    .line 2188
    iget v2, v6, Lcom/google/android/exoplayer2/g/a;->b:I

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->m:I

    .line 2189
    iget v2, v6, Lcom/google/android/exoplayer2/g/a;->c:I

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->n:I

    .line 2190
    iget v2, v6, Lcom/google/android/exoplayer2/g/a;->d:I

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->o:I

    .line 2191
    iget v2, v6, Lcom/google/android/exoplayer2/g/a;->e:I

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->q:I

    .line 2192
    iget v2, v6, Lcom/google/android/exoplayer2/g/a;->f:I

    iput v2, v10, Lcom/google/android/exoplayer2/ui/a;->p:I

    .line 2193
    iget-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->c:Landroid/text/TextPaint;

    iget-object v4, v6, Lcom/google/android/exoplayer2/g/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2194
    iput v15, v10, Lcom/google/android/exoplayer2/ui/a;->r:F

    .line 2195
    iput v13, v10, Lcom/google/android/exoplayer2/ui/a;->s:F

    .line 2196
    move/from16 v0, v16

    iput v0, v10, Lcom/google/android/exoplayer2/ui/a;->t:I

    .line 2197
    move/from16 v0, v17

    iput v0, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    .line 2198
    move/from16 v0, v18

    iput v0, v10, Lcom/google/android/exoplayer2/ui/a;->v:I

    .line 2199
    move/from16 v0, v19

    iput v0, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    .line 2201
    iget v2, v10, Lcom/google/android/exoplayer2/ui/a;->v:I

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->t:I

    sub-int v12, v2, v4

    .line 2202
    iget v2, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    sub-int v20, v2, v4

    .line 2204
    iget-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->c:Landroid/text/TextPaint;

    invoke-virtual {v2, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2205
    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v2, v15

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v21, v0

    .line 2207
    mul-int/lit8 v2, v21, 0x2

    sub-int v5, v12, v2

    .line 2208
    iget v2, v10, Lcom/google/android/exoplayer2/ui/a;->k:F

    const/4 v4, 0x1

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_a

    .line 2209
    int-to-float v2, v5

    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->k:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    .line 2211
    :cond_a
    if-gtz v5, :cond_b

    .line 2212
    const-string/jumbo v2, "SubtitlePainter"

    const-string/jumbo v3, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2216
    :cond_b
    iget-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->e:Landroid/text/Layout$Alignment;

    if-nez v2, :cond_c

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2217
    :goto_6
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->c:Landroid/text/TextPaint;

    iget v7, v10, Lcom/google/android/exoplayer2/ui/a;->a:F

    iget v8, v10, Lcom/google/android/exoplayer2/ui/a;->b:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    .line 2219
    iget-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    .line 2220
    const/4 v4, 0x0

    .line 2221
    iget-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .line 2222
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v4

    move/from16 v4, v24

    :goto_7
    if-ge v4, v9, :cond_d

    .line 2223
    iget-object v7, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    invoke-virtual {v7, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2222
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v7

    goto :goto_7

    .line 2216
    :cond_c
    iget-object v6, v10, Lcom/google/android/exoplayer2/ui/a;->e:Landroid/text/Layout$Alignment;

    goto :goto_6

    .line 2225
    :cond_d
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->k:F

    const/4 v7, 0x1

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_18

    if-ge v2, v5, :cond_18

    .line 2228
    :goto_8
    mul-int/lit8 v2, v21, 0x2

    add-int v4, v5, v2

    .line 2232
    iget v2, v10, Lcom/google/android/exoplayer2/ui/a;->i:F

    const/4 v5, 0x1

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_11

    .line 2233
    int-to-float v2, v12

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->i:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->t:I

    add-int/2addr v2, v5

    .line 2234
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->j:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_10

    sub-int/2addr v2, v4

    .line 2237
    :cond_e
    :goto_9
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->t:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2238
    add-int/2addr v4, v2

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->v:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v12, v2

    move v2, v4

    .line 2245
    :goto_a
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_17

    .line 2247
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->g:I

    if-nez v4, :cond_12

    .line 2248
    move/from16 v0, v20

    int-to-float v4, v0

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    add-int/2addr v4, v5

    .line 2258
    :goto_b
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->h:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_14

    sub-int/2addr v4, v8

    .line 2261
    :cond_f
    :goto_c
    add-int v5, v4, v8

    iget v7, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    if-le v5, v7, :cond_15

    .line 2262
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    sub-int/2addr v4, v8

    move v13, v4

    .line 2270
    :goto_d
    sub-int v5, v2, v12

    .line 2273
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->c:Landroid/text/TextPaint;

    iget v7, v10, Lcom/google/android/exoplayer2/ui/a;->a:F

    iget v8, v10, Lcom/google/android/exoplayer2/ui/a;->b:F

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    .line 2275
    iput v12, v10, Lcom/google/android/exoplayer2/ui/a;->y:I

    .line 2276
    iput v13, v10, Lcom/google/android/exoplayer2/ui/a;->z:I

    .line 2277
    move/from16 v0, v21

    iput v0, v10, Lcom/google/android/exoplayer2/ui/a;->A:I

    .line 2279
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/ui/a;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 2234
    :cond_10
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->j:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_e

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 2240
    :cond_11
    sub-int v2, v12, v4

    div-int/lit8 v2, v2, 0x2

    .line 2241
    add-int/2addr v4, v2

    move v12, v2

    move v2, v4

    goto :goto_a

    .line 2251
    :cond_12
    iget-object v4, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    iget-object v5, v10, Lcom/google/android/exoplayer2/ui/a;->x:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 2252
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_13

    .line 2253
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    add-int/2addr v4, v5

    goto :goto_b

    .line 2255
    :cond_13
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->f:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    add-int/2addr v4, v5

    goto :goto_b

    .line 2258
    :cond_14
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->h:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    goto :goto_c

    .line 2263
    :cond_15
    iget v5, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    if-ge v4, v5, :cond_16

    .line 2264
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->u:I

    :cond_16
    move v13, v4

    .line 2266
    goto :goto_d

    .line 2267
    :cond_17
    iget v4, v10, Lcom/google/android/exoplayer2/ui/a;->w:I

    sub-int/2addr v4, v8

    move/from16 v0, v20

    int-to-float v5, v0

    mul-float/2addr v5, v13

    float-to-int v5, v5

    sub-int/2addr v4, v5

    move v13, v4

    goto :goto_d

    :cond_18
    move v5, v2

    goto/16 :goto_8
.end method

.method final getUserCaptionFontScaleV19()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 254
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0
.end method

.method final getUserCaptionStyleV19()Lcom/google/android/exoplayer2/g/a;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    .line 261
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/g/a;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/g/a;

    move-result-object v0

    return-object v0
.end method

.method public final setApplyEmbeddedStyles(Z)V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    if-ne v0, p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public final setBottomPaddingFraction(F)V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:F

    .line 218
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public final setCues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Ljava/util/List;

    .line 96
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 98
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    new-instance v2, Lcom/google/android/exoplayer2/ui/a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ui/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method

.method public final setFractionalTextSize(F)V
    .locals 1

    .prologue
    .line 141
    .line 1158
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1161
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 1162
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 1164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    .line 142
    :cond_1
    return-void
.end method

.method public final setStyle(Lcom/google/android/exoplayer2/g/a;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/g/a;

    if-ne v0, p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Lcom/google/android/exoplayer2/g/a;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->invalidate()V

    goto :goto_0
.end method
