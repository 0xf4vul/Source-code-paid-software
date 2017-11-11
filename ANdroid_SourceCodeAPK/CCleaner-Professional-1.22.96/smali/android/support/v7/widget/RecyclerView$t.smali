.class final Landroid/support/v7/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "t"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/support/v4/widget/n;

.field d:Landroid/view/animation/Interpolator;

.field final synthetic e:Landroid/support/v7/widget/RecyclerView;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4691
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4682
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/view/animation/Interpolator;

    .line 4686
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4689
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4692
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Landroid/support/v4/widget/n;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v4/widget/n;

    .line 4693
    return-void
.end method


# virtual methods
.method final a(II)I
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 4858
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4859
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4860
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 4861
    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4862
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4863
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4864
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4865
    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4866
    int-to-float v7, v6

    int-to-float v6, v6

    .line 18852
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 18853
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 18854
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 4867
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4870
    if-lez v4, :cond_2

    .line 4871
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4876
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4860
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4863
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4873
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4874
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 4873
    goto :goto_3
.end method

.method final a()V
    .locals 1

    .prologue
    .line 4827
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    if-eqz v0, :cond_0

    .line 4828
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 4833
    :goto_0
    return-void

    .line 4830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4831
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/x;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 4880
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$t;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4881
    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4890
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$t;->d:Landroid/view/animation/Interpolator;

    .line 4891
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/n;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v4/widget/n;

    .line 4893
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4894
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    .line 4895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v4/widget/n;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/n;->a(IIIII)V

    .line 4896
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 4897
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 4900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v4/widget/n;

    .line 19228
    iget-object v0, v0, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4902
    return-void
.end method

.method public final run()V
    .locals 17

    .prologue
    .line 4697
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    if-nez v1, :cond_1

    .line 4698
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->b()V

    .line 4812
    :cond_0
    :goto_0
    return-void

    .line 11815
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    .line 11816
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 4702
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 4705
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView$t;->c:Landroid/support/v4/widget/n;

    .line 4706
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v9, v1, Landroid/support/v7/widget/RecyclerView$h;->t:Landroid/support/v7/widget/RecyclerView$q;

    .line 12116
    iget-object v1, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    .line 4707
    if-eqz v1, :cond_15

    .line 13070
    iget-object v1, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 13079
    iget-object v1, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 4710
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    sub-int v12, v10, v1

    .line 4711
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    sub-int v13, v11, v1

    .line 4712
    const/4 v4, 0x0

    .line 4713
    const/4 v2, 0x0

    .line 4714
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    .line 4715
    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/v7/widget/RecyclerView$t;->b:I

    .line 4716
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4717
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v5, :cond_1a

    .line 4718
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 4719
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 4720
    const-string/jumbo v5, "RV Scroll"

    invoke-static {v5}, Landroid/support/v4/f/f;->a(Ljava/lang/String;)V

    .line 4721
    if-eqz v12, :cond_2

    .line 4722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v3, v12, v4, v5}, Landroid/support/v7/widget/RecyclerView$h;->a(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v4

    .line 4723
    sub-int v3, v12, v4

    .line 4725
    :cond_2
    if-eqz v13, :cond_3

    .line 4726
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/RecyclerView$n;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, v13, v2, v5}, Landroid/support/v7/widget/RecyclerView$h;->b(ILandroid/support/v7/widget/RecyclerView$n;Landroid/support/v7/widget/RecyclerView$r;)I

    move-result v2

    .line 4727
    sub-int v1, v13, v2

    .line 4729
    :cond_3
    invoke-static {}, Landroid/support/v4/f/f;->a()V

    .line 4730
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 4732
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 4733
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4735
    if-eqz v9, :cond_1a

    .line 14006
    iget-boolean v5, v9, Landroid/support/v7/widget/RecyclerView$q;->i:Z

    .line 4735
    if-nez v5, :cond_1a

    .line 14014
    iget-boolean v5, v9, Landroid/support/v7/widget/RecyclerView$q;->j:Z

    .line 4736
    if-eqz v5, :cond_1a

    .line 4737
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$r;->a()I

    move-result v5

    .line 4738
    if-nez v5, :cond_18

    .line 4739
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$q;->c()V

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 4748
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4749
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4751
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 4752
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v12, v13}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 4754
    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_e

    .line 4755
    :cond_6
    invoke-virtual {v8}, Landroid/support/v4/widget/n;->a()F

    move-result v5

    float-to-int v6, v5

    .line 4757
    const/4 v5, 0x0

    .line 4758
    if-eq v2, v10, :cond_25

    .line 4759
    if-gez v2, :cond_1b

    neg-int v5, v6

    :goto_2
    move v7, v5

    .line 4762
    :goto_3
    const/4 v5, 0x0

    .line 4763
    if-eq v1, v11, :cond_24

    .line 4764
    if-gez v1, :cond_1d

    neg-int v6, v6

    .line 4767
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v5

    const/4 v14, 0x2

    if-eq v5, v14, :cond_b

    .line 4768
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    .line 15166
    if-gez v7, :cond_1e

    .line 15167
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 15168
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/h;

    neg-int v15, v7

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/h;->a(I)Z

    .line 15174
    :cond_8
    :goto_5
    if-gez v6, :cond_1f

    .line 15175
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 15176
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/h;

    neg-int v15, v6

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/h;->a(I)Z

    .line 15182
    :cond_9
    :goto_6
    if-nez v7, :cond_a

    if-eqz v6, :cond_b

    .line 15183
    :cond_a
    invoke-static {v5}, Landroid/support/v4/view/x;->c(Landroid/view/View;)V

    .line 4770
    :cond_b
    if-nez v7, :cond_c

    if-eq v2, v10, :cond_c

    .line 16086
    iget-object v2, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    .line 4770
    if-nez v2, :cond_e

    :cond_c
    if-nez v6, :cond_d

    if-eq v1, v11, :cond_d

    .line 16093
    iget-object v1, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    .line 4771
    if-nez v1, :cond_e

    .line 16228
    :cond_d
    iget-object v1, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4775
    :cond_e
    if-nez v4, :cond_f

    if-eqz v3, :cond_10

    .line 4776
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 4779
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 4780
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4783
    :cond_11
    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    if-ne v3, v13, :cond_20

    const/4 v1, 0x1

    move v2, v1

    .line 4785
    :goto_7
    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$h;->e()Z

    move-result v1

    if-eqz v1, :cond_21

    if-ne v4, v12, :cond_21

    const/4 v1, 0x1

    .line 4787
    :goto_8
    if-nez v12, :cond_12

    if-eqz v13, :cond_13

    :cond_12
    if-nez v1, :cond_13

    if-eqz v2, :cond_22

    :cond_13
    const/4 v1, 0x1

    .line 17061
    :goto_9
    iget-object v2, v8, Landroid/support/v4/widget/n;->a:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    .line 4790
    if-nez v2, :cond_14

    if-nez v1, :cond_23

    .line 4791
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4792
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->p()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4793
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v7/widget/aa$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/aa$a;->a()V

    .line 4803
    :cond_15
    :goto_a
    if-eqz v9, :cond_17

    .line 18006
    iget-boolean v1, v9, Landroid/support/v7/widget/RecyclerView$q;->i:Z

    .line 4804
    if-eqz v1, :cond_16

    .line 4805
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v1, v2}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    .line 4807
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v1, :cond_17

    .line 4808
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$q;->c()V

    .line 18820
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$t;->f:Z

    .line 18821
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v1, :cond_0

    .line 18822
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    goto/16 :goto_0

    .line 14024
    :cond_18
    iget v6, v9, Landroid/support/v7/widget/RecyclerView$q;->f:I

    .line 4740
    if-lt v6, v5, :cond_19

    .line 4741
    add-int/lit8 v5, v5, -0x1

    .line 14963
    iput v5, v9, Landroid/support/v7/widget/RecyclerView$q;->f:I

    .line 4744
    :cond_19
    sub-int v5, v12, v3

    sub-int v6, v13, v1

    invoke-static {v9, v5, v6}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$q;II)V

    :cond_1a
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_1

    .line 4759
    :cond_1b
    if-lez v2, :cond_1c

    move v5, v6

    goto/16 :goto_2

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 4764
    :cond_1d
    if-gtz v1, :cond_7

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 15169
    :cond_1e
    if-lez v7, :cond_8

    .line 15170
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 15171
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/h;

    invoke-virtual {v14, v7}, Landroid/support/v4/widget/h;->a(I)Z

    goto/16 :goto_5

    .line 15177
    :cond_1f
    if-lez v6, :cond_9

    .line 15178
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 15179
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/h;

    invoke-virtual {v14, v6}, Landroid/support/v4/widget/h;->a(I)Z

    goto/16 :goto_6

    .line 4783
    :cond_20
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_7

    .line 4785
    :cond_21
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 4787
    :cond_22
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 4796
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$t;->a()V

    .line 4797
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/aa;

    if-eqz v1, :cond_15

    .line 4798
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/aa;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v12, v13}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_a

    :cond_24
    move v6, v5

    goto/16 :goto_4

    :cond_25
    move v7, v5

    goto/16 :goto_3
.end method
