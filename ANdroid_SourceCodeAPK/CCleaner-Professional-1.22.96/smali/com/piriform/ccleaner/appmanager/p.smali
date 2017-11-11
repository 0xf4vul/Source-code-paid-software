.class final Lcom/piriform/ccleaner/appmanager/p;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lcom/piriform/ccleaner/appmanager/m;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/appmanager/o;

.field final b:Lcom/piriform/ccleaner/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/piriform/ccleaner/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/b",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/appmanager/o;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 17
    new-instance v0, Lcom/piriform/ccleaner/q/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/q/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/p;->b:Lcom/piriform/ccleaner/q/c;

    .line 19
    new-instance v0, Lcom/piriform/ccleaner/appmanager/p$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/p$1;-><init>(Lcom/piriform/ccleaner/appmanager/p;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/p;->c:Lcom/piriform/ccleaner/q/b;

    .line 26
    new-instance v0, Lcom/piriform/ccleaner/appmanager/p$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/p$2;-><init>(Lcom/piriform/ccleaner/appmanager/p;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/p;->f:Lcom/piriform/ccleaner/q/b;

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/p;->b:Lcom/piriform/ccleaner/q/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/q/c;->a(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/o;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 1

    .prologue
    .line 14
    .line 18040
    invoke-static {p1}, Lcom/piriform/ccleaner/appmanager/m;->a(Landroid/view/ViewGroup;)Lcom/piriform/ccleaner/appmanager/m;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 21

    .prologue
    .line 14
    check-cast p1, Lcom/piriform/ccleaner/appmanager/m;

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    .line 1079
    iget-object v2, v2, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/core/data/b;

    .line 2022
    iget-object v3, v2, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    .line 2099
    iget-object v4, v4, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v4}, Lcom/piriform/ccleaner/q/c;->a()Z

    move-result v10

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/appmanager/p;->a:Lcom/piriform/ccleaner/appmanager/o;

    .line 2103
    iget-object v4, v4, Lcom/piriform/ccleaner/appmanager/o;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;)Z

    move-result v11

    .line 1050
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/piriform/ccleaner/appmanager/p;->c:Lcom/piriform/ccleaner/q/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/appmanager/p;->b:Lcom/piriform/ccleaner/q/c;

    .line 1052
    invoke-interface {v4, v3}, Lcom/piriform/ccleaner/q/c;->a(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/piriform/ccleaner/appmanager/p;->f:Lcom/piriform/ccleaner/q/b;

    .line 3044
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/piriform/ccleaner/appmanager/m;->n:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    .line 4022
    iget-object v0, v2, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    move-object/from16 v16, v0

    .line 4026
    iget-boolean v0, v2, Lcom/piriform/ccleaner/core/data/b;->b:Z

    move/from16 v17, v0

    .line 4030
    iget-boolean v0, v2, Lcom/piriform/ccleaner/core/data/b;->c:Z

    move/from16 v18, v0

    .line 4100
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 4101
    iget-object v2, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a:Landroid/widget/TextView;

    .line 5103
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 4101
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4102
    iget-object v2, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5194
    iget-object v2, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5195
    const v2, 0x7f0801f5

    .line 6107
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 5195
    invoke-virtual {v15, v2, v3}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(ILjava/lang/String;)V

    .line 5196
    const v2, 0x7f0801f7

    .line 6111
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->c:Ljava/lang/String;

    .line 5196
    invoke-virtual {v15, v2, v3}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(ILjava/lang/String;)V

    .line 6135
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->f:J

    .line 6158
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->g:J

    .line 7123
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 7234
    iget-object v2, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->e:Lcom/piriform/ccleaner/t/f;

    invoke-interface {v2}, Lcom/piriform/ccleaner/t/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/t/u;

    .line 8140
    iget-object v0, v2, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    move-object/from16 v19, v0

    .line 7235
    sget-object v20, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 9140
    iget-object v2, v2, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 7236
    sget-object v19, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_0

    .line 7237
    :cond_1
    const/4 v2, 0x0

    .line 5202
    :goto_0
    if-eqz v2, :cond_8

    .line 9210
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    .line 5203
    add-long/2addr v8, v2

    .line 10202
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    .line 5204
    add-long/2addr v6, v2

    .line 11178
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 5205
    add-long/2addr v2, v4

    move-wide v4, v6

    move-wide v6, v8

    .line 5208
    :goto_1
    const v8, 0x7f0801f6

    invoke-virtual {v15, v8, v6, v7}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5209
    const v6, 0x7f0801ef

    invoke-virtual {v15, v6, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5210
    const v4, 0x7f0801ee

    invoke-virtual {v15, v4, v2, v3}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 12150
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    add-long/2addr v2, v4

    .line 5212
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 5213
    const v2, 0x7f0801f3

    .line 12210
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    .line 5213
    invoke-virtual {v15, v2, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5214
    const v2, 0x7f0801f0

    .line 13178
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 5214
    invoke-virtual {v15, v2, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5215
    const v2, 0x7f0801f1

    .line 13202
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    .line 5215
    invoke-virtual {v15, v2, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5216
    const v2, 0x7f0801f2

    .line 14186
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    .line 5216
    invoke-virtual {v15, v2, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 5217
    const v2, 0x7f0801f4

    .line 14194
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    .line 5217
    invoke-virtual {v15, v2, v4, v5}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->a(IJ)V

    .line 16016
    :cond_2
    const v2, 0x7f10014b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 17016
    const v2, 0x7f10014a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 15184
    if-eqz v17, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15185
    if-eqz v18, :cond_6

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15187
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15188
    if-nez v17, :cond_3

    if-eqz v18, :cond_7

    :cond_3
    invoke-virtual {v15}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00bd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 15189
    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 15190
    iget-object v2, v15, Lcom/piriform/ccleaner/appmanager/ApplicationView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3049
    invoke-virtual {v15, v10}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setCheckable(Z)V

    .line 3050
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setItemSelectedListener(Lcom/piriform/ccleaner/q/b;)V

    .line 3051
    invoke-virtual {v15, v11}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setChecked(Z)V

    .line 3052
    invoke-virtual {v15, v12}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setItemSelectedListener(Lcom/piriform/ccleaner/q/b;)V

    .line 3053
    invoke-virtual {v15, v13}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setExpanded(Z)V

    .line 3054
    invoke-virtual {v15, v14}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setOnExpandListener(Lcom/piriform/ccleaner/q/b;)V

    .line 3056
    invoke-virtual {v15}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    .line 3057
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/piriform/ccleaner/appmanager/m;->o:Lcom/piriform/ccleaner/core/a/a;

    .line 17223
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 3057
    invoke-virtual {v3, v2, v4}, Lcom/piriform/ccleaner/core/a/a;->a(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;)V

    .line 14
    return-void

    .line 7240
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 15184
    :cond_5
    const/16 v2, 0x8

    goto :goto_2

    .line 15185
    :cond_6
    const/16 v2, 0x8

    goto :goto_3

    .line 15188
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    goto/16 :goto_1
.end method
