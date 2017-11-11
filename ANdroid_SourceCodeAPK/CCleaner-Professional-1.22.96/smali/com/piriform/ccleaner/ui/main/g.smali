.class public final Lcom/piriform/ccleaner/ui/main/g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/LinearLayout;

.field private final e:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

.field private final f:Landroid/view/View;

.field private final g:Lcom/piriform/ccleaner/ui/main/i;

.field private final h:Landroid/view/View;

.field private i:Lcom/piriform/ccleaner/ui/b/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/main/i;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/g;->g:Lcom/piriform/ccleaner/ui/main/i;

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    .line 2016
    const v1, 0x7f1000c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->a:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    .line 3016
    const v1, 0x7f1000f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->b:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    .line 4016
    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->c:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    .line 5016
    const v1, 0x7f1000f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    check-cast v0, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->e:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    .line 6016
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->h:Landroid/view/View;

    .line 7016
    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->d:Landroid/widget/LinearLayout;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/g;)V
    .locals 1

    .prologue
    .line 25
    .line 22109
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 22138
    iget-boolean v0, v0, Lcom/piriform/ccleaner/ui/b/n;->e:Z

    .line 22109
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/main/g;->setExpanded(Z)V

    .line 25
    return-void

    .line 22109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExpanded(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 20142
    iput-boolean p1, v0, Lcom/piriform/ccleaner/ui/b/n;->e:Z

    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->e:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setExpanded(Z)V

    .line 115
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/main/g;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->d:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21123
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    .line 21124
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    .line 22039
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->M:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 120
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 115
    goto :goto_0

    :cond_2
    move v1, v2

    .line 116
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 8

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/g;->setVisibility(I)V

    .line 7059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 56
    check-cast v0, Lcom/piriform/ccleaner/a/c;

    .line 57
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->a:Landroid/widget/TextView;

    .line 7066
    iget v2, v0, Lcom/piriform/ccleaner/a/c;->q:I

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    check-cast p1, Lcom/piriform/ccleaner/ui/b/n;

    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 60
    invoke-virtual {p2}, Lcom/piriform/ccleaner/core/a/o;->e()Z

    move-result v4

    .line 61
    iget-object v5, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 7165
    if-eqz v4, :cond_3

    .line 7166
    iget-object v1, v5, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 8052
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/piriform/ccleaner/core/i;->b:J

    .line 7167
    iget-object v1, v5, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    iget-object v2, v5, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 9044
    iput v2, v1, Lcom/piriform/ccleaner/core/i;->a:I

    .line 9174
    iget-object v1, v5, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/core/a/b;

    .line 10050
    iget-object v2, v1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 9183
    sget-object v3, Lcom/piriform/ccleaner/core/a/g;->j:Lcom/piriform/ccleaner/core/a/g;

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/core/a/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/piriform/ccleaner/ui/b/d;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 9175
    :goto_1
    if-eqz v2, :cond_0

    .line 9176
    check-cast v1, Lcom/piriform/ccleaner/ui/b/d;

    .line 9177
    iget-object v7, v5, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 11059
    iget-object v2, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 10188
    if-nez v2, :cond_2

    .line 10189
    const-wide/16 v2, 0x0

    .line 9177
    :goto_2
    invoke-virtual {v7, v2, v3}, Lcom/piriform/ccleaner/core/i;->a(J)V

    goto :goto_0

    .line 9183
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 12059
    :cond_2
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 10191
    check-cast v1, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v1}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v1

    .line 12076
    iget-wide v2, v1, Lcom/piriform/ccleaner/core/i;->b:J

    goto :goto_2

    .line 7170
    :cond_3
    iget-object v1, v5, Lcom/piriform/ccleaner/ui/b/n;->d:Lcom/piriform/ccleaner/core/i;

    .line 12138
    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/i;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 12139
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->b:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13069
    :goto_3
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 13154
    iget v2, v1, Lcom/piriform/ccleaner/ui/b/n;->f:I

    .line 13070
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 14150
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/b/n;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 15098
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/piriform/ccleaner/core/a/o;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const/4 v1, 0x1

    .line 13072
    :goto_4
    if-eqz v1, :cond_7

    .line 13073
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17080
    :goto_5
    iget-boolean v0, v0, Lcom/piriform/ccleaner/a/c;->s:Z

    .line 16081
    if-eqz v0, :cond_8

    .line 16082
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->e:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setVisibility(I)V

    .line 16083
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    new-instance v1, Lcom/piriform/ccleaner/ui/main/g$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/main/g$1;-><init>(Lcom/piriform/ccleaner/ui/main/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16091
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->i:Lcom/piriform/ccleaner/ui/b/n;

    .line 17138
    iget-boolean v0, v0, Lcom/piriform/ccleaner/ui/b/n;->e:Z

    .line 16091
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/main/g;->setExpanded(Z)V

    .line 65
    :goto_6
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/g;->d:Landroid/widget/LinearLayout;

    .line 18128
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 18129
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/g;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 19075
    iget-object v0, p2, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 18130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/piriform/ccleaner/core/a/b;

    .line 18131
    iget-object v5, p0, Lcom/piriform/ccleaner/ui/main/g;->g:Lcom/piriform/ccleaner/ui/main/i;

    .line 20053
    new-instance v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iget-object v5, v5, Lcom/piriform/ccleaner/ui/main/i;->a:Lcom/piriform/ccleaner/ui/b/d$a;

    const v6, 0x7f030056

    invoke-direct {v0, v3, v5, v6}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 18132
    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Lcom/piriform/ccleaner/ui/main/j;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V

    .line 18133
    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 12143
    :cond_5
    new-instance v2, Lcom/piriform/ccleaner/ui/main/n;

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/main/g;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/piriform/ccleaner/ui/main/n;-><init>(Lcom/piriform/ccleaner/core/i;Landroid/content/res/Resources;)V

    .line 12144
    invoke-virtual {v2, v4}, Lcom/piriform/ccleaner/ui/main/n;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 12146
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/g;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12147
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 15098
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 13075
    :cond_7
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/g;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080160

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13076
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/g;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 18102
    :cond_8
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->e:Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/CollapseIndicatorView;->setVisibility(I)V

    .line 18103
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18104
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/g;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 66
    :cond_9
    return-void
.end method
