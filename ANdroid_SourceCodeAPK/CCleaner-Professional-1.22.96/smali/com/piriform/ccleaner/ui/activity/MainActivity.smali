.class public Lcom/piriform/ccleaner/ui/activity/MainActivity;
.super Lcom/piriform/ccleaner/ui/a/c;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a;
.implements Lcom/piriform/ccleaner/cleaning/d;
.implements Lcom/piriform/ccleaner/core/a/h$a;
.implements Lcom/piriform/ccleaner/reminder/e$a;
.implements Lcom/piriform/ccleaner/ui/activity/h$a;


# instance fields
.field A:Lcom/piriform/ccleaner/b/c/a;

.field B:Lcom/piriform/ccleaner/b/e;

.field C:Lcom/piriform/ccleaner/a/b;

.field D:Lcom/piriform/ccleaner/b/b/b;

.field E:Lcom/piriform/ccleaner/b/f;

.field F:Lcom/piriform/ccleaner/s/e;

.field public final G:Lcom/piriform/ccleaner/ui/fragment/af$a;

.field private K:Lcom/piriform/ccleaner/d/a/b;

.field private L:Lcom/piriform/ccleaner/c;

.field private M:Z

.field private N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

.field private O:Landroid/widget/Button;

.field private P:Landroid/view/View;

.field private Q:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

.field private R:J

.field private S:Lcom/piriform/ccleaner/ui/main/h;

.field private T:J

.field private U:J

.field private V:Lcom/piriform/ccleaner/a/d;

.field private W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/piriform/ccleaner/ui/c;

.field private ad:Lcom/facebook/ads/g;

.field private final ae:Landroid/view/View$OnClickListener;

.field private final af:Lcom/piriform/ccleaner/ui/b/d$a;

.field m:Lcom/piriform/ccleaner/a/a;

.field n:Lcom/piriform/ccleaner/d/a/a;

.field public o:Lcom/piriform/ccleaner/n/a;

.field p:Lcom/piriform/ccleaner/ui/activity/g;

.field q:Lcom/piriform/ccleaner/ui/activity/h;

.field s:Lcom/piriform/ccleaner/reminder/d;

.field t:Lcom/piriform/ccleaner/a/e;

.field u:Lcom/piriform/ccleaner/b;

.field v:Lcom/piriform/ccleaner/t/p;

.field w:Lcom/piriform/ccleaner/s/h;

.field x:Lcom/piriform/ccleaner/reminder/b;

.field y:Ljava/util/concurrent/Executor;

.field z:Lcom/piriform/ccleaner/m/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/a/c;-><init>()V

    .line 99
    sget-object v0, Lcom/piriform/ccleaner/c;->a:Lcom/piriform/ccleaner/c;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->L:Lcom/piriform/ccleaner/c;

    .line 229
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ae:Landroid/view/View$OnClickListener;

    .line 266
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$5;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->af:Lcom/piriform/ccleaner/ui/b/d$a;

    .line 846
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->G:Lcom/piriform/ccleaner/ui/fragment/af$a;

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 706
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 41069
    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v2

    .line 40073
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 706
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->X:Z

    if-eqz v2, :cond_1

    .line 707
    :goto_1
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->P:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 708
    return-void

    :cond_0
    move v2, v1

    .line 40073
    goto :goto_0

    :cond_1
    move v0, v1

    .line 706
    goto :goto_1
.end method

.method private B()V
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 711
    .line 713
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->b()V

    .line 714
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 42069
    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v2

    .line 715
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    move-wide v4, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 716
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->i()Lcom/piriform/ccleaner/a/a/d$b;

    move-result-object v1

    sget-object v7, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    if-ne v1, v7, :cond_0

    .line 720
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v1

    .line 43036
    iget v7, v1, Lcom/piriform/ccleaner/core/i;->h:I

    .line 721
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    .line 43076
    iget-wide v8, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 723
    sget v0, Lcom/piriform/ccleaner/core/i$a;->b:I

    if-ne v7, v0, :cond_3

    .line 724
    add-long v0, v2, v8

    .line 725
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    .line 43114
    iget-object v2, v2, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->i:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v2, v8, v9}, Lcom/piriform/ccleaner/ui/view/a;->a(J)V

    .line 728
    :goto_1
    sget v2, Lcom/piriform/ccleaner/core/i$a;->a:I

    if-ne v7, v2, :cond_2

    .line 729
    add-long v2, v4, v8

    .line 730
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v4, v8, v9}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->a(J)V

    :goto_2
    move-wide v4, v2

    move-wide v2, v0

    .line 732
    goto :goto_0

    .line 734
    :cond_1
    iput-wide v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    .line 735
    iput-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->U:J

    .line 736
    return-void

    :cond_2
    move-wide v2, v4

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method private C()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 799
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->P:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 800
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->X:Z

    .line 801
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/c;)Lcom/piriform/ccleaner/c;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->L:Lcom/piriform/ccleaner/c;

    return-object p1
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->u()V

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/ui/b/d;)V
    .locals 3

    .prologue
    .line 86
    .line 50083
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/b/d;->b()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    .line 50085
    invoke-static {v1}, Lcom/piriform/ccleaner/n/a;->b(Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;

    move-result-object v1

    .line 50086
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->M:Z

    .line 806
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 50058
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->b()V

    .line 50061
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 807
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 50063
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->o:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 809
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Starting cleaning for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->c()V

    .line 814
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->K:Lcom/piriform/ccleaner/d/a/b;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/d/a/b;->a(Ljava/util/List;)V

    .line 816
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/n/a;->a(J)V

    .line 50067
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ab:Z

    if-eqz v0, :cond_1

    .line 50070
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->C:Lcom/piriform/ccleaner/a/b;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->w:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/b;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    .line 50071
    new-instance v1, Lcom/piriform/ccleaner/ui/b/d;

    new-instance v2, Lcom/piriform/ccleaner/ui/b/s;

    invoke-direct {v2}, Lcom/piriform/ccleaner/ui/b/s;-><init>()V

    sget-object v3, Lcom/piriform/ccleaner/core/a/g;->s:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {v1, v0, v2, v3}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    .line 50072
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/piriform/ccleaner/ui/main/h;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 819
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 86
    .line 50079
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100146

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 86
    goto :goto_0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/activity/MainActivity;)Lcom/piriform/ccleaner/ui/main/h;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    .line 39135
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setVisibility(I)V

    .line 39136
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v1, p1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 39137
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->b()V

    .line 692
    return-void
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 1

    .prologue
    .line 50080
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/d;-><init>(Landroid/app/Activity;)V

    .line 50081
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/p;->a()V

    .line 86
    return-void
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->x()V

    return-void
.end method

.method static synthetic e(Lcom/piriform/ccleaner/ui/activity/MainActivity;)Lcom/piriform/ccleaner/a/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->m:Lcom/piriform/ccleaner/a/a;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->L:Lcom/piriform/ccleaner/c;

    sget-object v1, Lcom/piriform/ccleaner/c;->a:Lcom/piriform/ccleaner/c;

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    .line 15115
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/h;->f:Lcom/piriform/ccleaner/b/c/a;

    .line 16094
    sget-object v2, Lcom/piriform/ccleaner/b/c/a$a;->a:Lcom/piriform/ccleaner/b/c/a$a;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/b/c/a;->a(Lcom/piriform/ccleaner/b/c/a$a;)V

    .line 15116
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->f()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->L:Lcom/piriform/ccleaner/c;

    sget-object v1, Lcom/piriform/ccleaner/c;->b:Lcom/piriform/ccleaner/c;

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 16102
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->m:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 203
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->y()V

    goto :goto_0
.end method

.method private v()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 17102
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->getGroupCount()I

    move-result v0

    .line 318
    if-lez v0, :cond_2

    .line 17331
    const-wide/16 v2, 0x0

    move v0, v1

    .line 17332
    :goto_0
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    invoke-virtual {v4}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 17333
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 17335
    if-eqz v5, :cond_0

    .line 17339
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    invoke-virtual {v4}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    const/4 v4, 0x1

    .line 17350
    :goto_1
    new-instance v6, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;

    invoke-direct {v6, p0, v4}, Lcom/piriform/ccleaner/ui/activity/MainActivity$6;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Z)V

    .line 17344
    invoke-static {p0, v5, v2, v3, v6}, Lcom/piriform/ccleaner/ui/b;->a(Landroid/content/Context;Landroid/view/View;JLcom/piriform/ccleaner/ui/b$a;)V

    .line 17345
    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    .line 17332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    .line 17339
    goto :goto_1

    .line 321
    :cond_2
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->x()V

    .line 323
    :cond_3
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Q:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->setVisibility(I)V

    .line 328
    return-void
.end method

.method private x()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    const-string/jumbo v1, "Starting analysis"

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 363
    iput-boolean v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->X:Z

    .line 364
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->x:Lcom/piriform/ccleaner/reminder/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/reminder/b;->b()V

    .line 366
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 18082
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->f()V

    .line 18636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 368
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->c()V

    .line 369
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->b()V

    .line 370
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->R:J

    .line 372
    sget-object v0, Lcom/piriform/ccleaner/c;->b:Lcom/piriform/ccleaner/c;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Lcom/piriform/ccleaner/c;)V

    .line 19413
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/g;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->V:Lcom/piriform/ccleaner/a/d;

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/ui/activity/g;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/a/d;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    .line 19414
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->y:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/activity/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19418
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->aa:Z

    if-eqz v0, :cond_0

    .line 19421
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->C:Lcom/piriform/ccleaner/a/b;

    sget-object v1, Lcom/piriform/ccleaner/a/h;->w:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/b;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    .line 19422
    new-instance v1, Lcom/piriform/ccleaner/ui/b/d;

    new-instance v2, Lcom/piriform/ccleaner/ui/b/s;

    invoke-direct {v2}, Lcom/piriform/ccleaner/ui/b/s;-><init>()V

    sget-object v3, Lcom/piriform/ccleaner/core/a/g;->r:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {v1, v0, v2, v3}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    .line 19423
    invoke-virtual {v1, v4}, Lcom/piriform/ccleaner/core/a/b;->a(Z)V

    .line 19424
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/piriform/ccleaner/ui/main/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 377
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/activity/g;->cancel(Z)Z

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->p:Lcom/piriform/ccleaner/ui/activity/g;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->n:Lcom/piriform/ccleaner/d/a/a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/d/a/a;->a()V

    .line 512
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    .line 612
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 613
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->U:J

    add-long/2addr v0, v2

    .line 614
    const v2, 0x7f080087

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->b(Ljava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->M:Z

    if-eqz v0, :cond_2

    .line 627
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 628
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    const v2, 0x7f080088

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->a(Ljava/lang/String;)V

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    .line 37122
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->g:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setProgress(F)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    .line 483
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->z()V

    .line 484
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/a/d;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 635
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Analysis item completed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 637
    iget-object v5, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    .line 38026
    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    .line 38222
    sget-object v1, Lcom/piriform/ccleaner/a/h;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 38043
    :goto_0
    if-eqz v0, :cond_3

    .line 38044
    new-instance v0, Lcom/piriform/ccleaner/ui/b/u;

    invoke-direct {v0, v5}, Lcom/piriform/ccleaner/ui/b/u;-><init>(Lcom/piriform/ccleaner/n/a;)V

    move-object v1, v0

    .line 38028
    :goto_1
    instance-of v0, p1, Lcom/piriform/ccleaner/a/a/u;

    if-eqz v0, :cond_4

    .line 38029
    new-instance v0, Lcom/piriform/ccleaner/ui/b/c;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/ui/b/c;-><init>(Lcom/piriform/ccleaner/a/a/d;)V

    .line 639
    :goto_2
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/ui/main/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 38650
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->w:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38657
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    invoke-virtual {v0, v4, v3}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->scrollBy(II)V

    .line 38658
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->scrollBy(II)V

    .line 642
    :cond_0
    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    .line 39076
    iget-wide v0, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 643
    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->R:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->R:J

    .line 644
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-interface {p1}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/a/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v2, v0, v1}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->a(J)V

    .line 647
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 38222
    goto :goto_0

    .line 38046
    :cond_3
    new-instance v0, Lcom/piriform/ccleaner/ui/b/s;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/b/s;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 38030
    :cond_4
    instance-of v0, p1, Lcom/piriform/ccleaner/a/a/j;

    if-eqz v0, :cond_5

    .line 38031
    new-instance v2, Lcom/piriform/ccleaner/ui/b/i;

    move-object v0, p1

    check-cast v0, Lcom/piriform/ccleaner/a/a/j;

    invoke-direct {v2, v0, v1, v5, p0}, Lcom/piriform/ccleaner/ui/b/i;-><init>(Lcom/piriform/ccleaner/a/a/j;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    move-object v0, v2

    goto :goto_2

    .line 38032
    :cond_5
    instance-of v0, p1, Lcom/piriform/ccleaner/a/a/t;

    if-eqz v0, :cond_6

    .line 38033
    new-instance v2, Lcom/piriform/ccleaner/ui/b/r;

    move-object v0, p1

    check-cast v0, Lcom/piriform/ccleaner/a/a/t;

    invoke-direct {v2, v0, v1, v5, p0}, Lcom/piriform/ccleaner/ui/b/r;-><init>(Lcom/piriform/ccleaner/a/a/t;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    move-object v0, v2

    goto :goto_2

    .line 38034
    :cond_6
    instance-of v0, p1, Lcom/piriform/ccleaner/a/a/i;

    if-eqz v0, :cond_7

    .line 38035
    new-instance v0, Lcom/piriform/ccleaner/ui/b/d;

    sget-object v2, Lcom/piriform/ccleaner/core/a/g;->q:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {v0, p1, v1, v2}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;Lcom/piriform/ccleaner/core/a/g;)V

    goto :goto_2

    .line 38037
    :cond_7
    new-instance v0, Lcom/piriform/ccleaner/ui/b/d;

    invoke-direct {v0, p1, v1}, Lcom/piriform/ccleaner/ui/b/d;-><init>(Lcom/piriform/ccleaner/a/a/d;Lcom/piriform/ccleaner/ui/b/b;)V

    goto :goto_2
.end method

.method public final a(Lcom/piriform/ccleaner/c;)V
    .locals 5

    .prologue
    .line 381
    const-wide/16 v0, 0x0

    .line 382
    sget-object v2, Lcom/piriform/ccleaner/ui/activity/MainActivity$9;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/piriform/ccleaner/c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :pswitch_0
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->O:Landroid/widget/Button;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 385
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->P:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 20399
    :goto_0
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Analysis state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 20400
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 20401
    new-instance v3, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/piriform/ccleaner/ui/activity/MainActivity$7;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/c;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void

    .line 388
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->O:Landroid/widget/Button;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 389
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A()V

    .line 390
    const-wide/16 v0, 0x64

    .line 391
    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 740
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/b/d;

    if-eqz v0, :cond_0

    .line 741
    check-cast p1, Lcom/piriform/ccleaner/ui/b/d;

    .line 44059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 43749
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    .line 43750
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/h;->b()Z

    move-result v0

    .line 742
    if-eqz v0, :cond_0

    .line 44754
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/b/d;->b()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    .line 44755
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    .line 45125
    invoke-static {v0}, Lcom/piriform/ccleaner/n/a;->b(Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;

    move-result-object v2

    .line 45126
    iget-object v1, v1, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 44755
    if-nez v1, :cond_0

    .line 45226
    iget v0, v0, Lcom/piriform/ccleaner/a/h;->y:I

    .line 44756
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44757
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/af;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/af;

    move-result-object v0

    .line 46036
    iput-object p1, v0, Lcom/piriform/ccleaner/ui/fragment/af;->aa:Lcom/piriform/ccleaner/ui/b/d;

    .line 44759
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/fragment/af;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/af;->a(Landroid/support/v4/app/m;Ljava/lang/String;)V

    .line 746
    :cond_0
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/reminder/a;)V
    .locals 6

    .prologue
    .line 765
    .line 46771
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47155
    const v2, 0x7f08025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47110
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    .line 48036
    iget v2, p1, Lcom/piriform/ccleaner/reminder/a;->f:I

    .line 47110
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48775
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->s:Lcom/piriform/ccleaner/reminder/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/reminder/d;->a(Lcom/piriform/ccleaner/reminder/a;)V

    .line 767
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 49118
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->h:Lcom/piriform/ccleaner/b/b;

    .line 50044
    iget-object v2, p1, Lcom/piriform/ccleaner/reminder/a;->g:Ljava/lang/String;

    .line 50045
    iget v3, p1, Lcom/piriform/ccleaner/reminder/a;->f:I

    .line 49118
    int-to-long v4, v3

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 768
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->a(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public final b_(I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    sget v0, Lcom/piriform/ccleaner/cleaning/f;->b:I

    if-ne p1, v0, :cond_3

    .line 30532
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 30599
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    const-string/jumbo v3, "Clean finished"

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 30600
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 31069
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 30601
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 30602
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Clean finished for \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' with result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 30536
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->B()V

    .line 31607
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/n/a;->a(Landroid/content/res/Resources;)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v0

    .line 31608
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->s:Lcom/piriform/ccleaner/reminder/d;

    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/reminder/d;->a(Lcom/piriform/ccleaner/reminder/a;)V

    .line 30539
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    .line 32178
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->d:Lcom/piriform/ccleaner/n/a;

    .line 33134
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v4, "cleaningReminderShown"

    invoke-virtual {v0, v4, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 32178
    if-nez v0, :cond_4

    move v0, v1

    .line 32171
    :goto_1
    if-eqz v0, :cond_1

    .line 32172
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->h()V

    .line 32173
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->d:Lcom/piriform/ccleaner/n/a;

    .line 34130
    iget-object v0, v0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v3, "cleaningReminderShown"

    invoke-virtual {v0, v3, v1}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    .line 34591
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->z:Lcom/piriform/ccleaner/m/m;

    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    invoke-static {v0, v4, v5}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/m/m;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34592
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    .line 35086
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v3, Lcom/piriform/ccleaner/b/b;->j:Lcom/piriform/ccleaner/b/b;

    const/4 v6, 0x0

    sget-object v7, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    sget-object v8, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v7, v4, v5, v8}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v4

    invoke-interface {v0, v3, v6, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 34593
    new-instance v0, Lcom/piriform/ccleaner/ui/b/aa;

    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/piriform/ccleaner/ui/b/aa;-><init>(Ljava/lang/Long;)V

    .line 34594
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    sget-object v4, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v3, v0, v4}, Lcom/piriform/ccleaner/ui/main/h;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 30542
    :cond_2
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->M:Z

    .line 30543
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->b()V

    .line 30545
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->O:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 30546
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 35636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 30548
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->T:J

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 36069
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v1

    .line 30548
    invoke-virtual {v0, v2, v3, v1}, Lcom/piriform/ccleaner/b/c/a;->a(JLjava/util/List;)V

    .line 30549
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 37069
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v1

    .line 30549
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/b/c/a;->a(Ljava/util/List;)V

    .line 30551
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->z()V

    .line 529
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 32178
    goto :goto_1
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->w()V

    .line 314
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->v()V

    .line 315
    return-void
.end method

.method public final g()Lcom/piriform/ccleaner/a/a/d;
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 25069
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 490
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v2

    sget-object v3, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/a/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 556
    new-instance v0, Lcom/piriform/ccleaner/ui/b/y;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/b/y;-><init>()V

    .line 557
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    sget-object v2, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/ui/main/h;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 558
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Z:Z

    .line 563
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Z:Z

    .line 568
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->aa:Z

    .line 573
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->aa:Z

    .line 578
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ab:Z

    .line 583
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ab:Z

    .line 588
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->b(Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    .line 159
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 7133
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 160
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    .line 161
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->t:Lcom/piriform/ccleaner/a/e;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/e;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->V:Lcom/piriform/ccleaner/a/d;

    .line 162
    new-instance v0, Lcom/piriform/ccleaner/a/l;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->w:Lcom/piriform/ccleaner/s/h;

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/a/l;-><init>(Landroid/app/Activity;Lcom/piriform/ccleaner/s/h;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->m:Lcom/piriform/ccleaner/a/a;

    .line 163
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->u:Lcom/piriform/ccleaner/b;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/b;->a(Lcom/piriform/ccleaner/a/f;)Lcom/piriform/ccleaner/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->n:Lcom/piriform/ccleaner/d/a/a;

    .line 164
    invoke-static {p0}, Lcom/piriform/ccleaner/b;->a(Lcom/piriform/ccleaner/cleaning/d;)Lcom/piriform/ccleaner/d/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->K:Lcom/piriform/ccleaner/d/a/b;

    .line 165
    new-instance v0, Lcom/piriform/ccleaner/ui/c;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->F:Lcom/piriform/ccleaner/s/e;

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/ui/c;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/s/e;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ac:Lcom/piriform/ccleaner/ui/c;

    .line 7208
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->setContentView(I)V

    .line 8024
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7210
    check-cast v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    .line 9024
    const v0, 0x7f100098

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7212
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->O:Landroid/widget/Button;

    .line 10024
    const v0, 0x7f100099

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7213
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->P:Landroid/view/View;

    .line 11024
    const v0, 0x7f100097

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7214
    check-cast v0, Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Q:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    .line 12024
    const v0, 0x7f100096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7215
    check-cast v0, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    .line 7217
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 7218
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7219
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    new-instance v3, Lcom/piriform/ccleaner/ui/view/l;

    invoke-direct {v3, v0, v1}, Lcom/piriform/ccleaner/ui/view/l;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 7221
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ae:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->setHeaderBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 7222
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    .line 12141
    iput-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    .line 12142
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->j:Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 12143
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->k:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12144
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->f:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->a(Landroid/support/v7/widget/Toolbar;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->l:Landroid/view/View;

    .line 7224
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Q:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    .line 12251
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 12252
    if-eqz v2, :cond_0

    .line 12253
    new-instance v3, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$4;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;Landroid/view/View;Lcom/piriform/ccleaner/ui/view/LastCleanedView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7226
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Q:Lcom/piriform/ccleaner/ui/view/LastCleanedView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/n/a;->a()J

    move-result-wide v2

    .line 13049
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/g;->a(J)Lcom/piriform/ccleaner/g;

    move-result-object v1

    .line 13050
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 14040
    iget v5, v1, Lcom/piriform/ccleaner/g;->e:I

    .line 13051
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 13053
    sget-object v6, Lcom/piriform/ccleaner/g;->a:Lcom/piriform/ccleaner/g;

    if-eq v1, v6, :cond_1

    .line 13054
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13055
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800d6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13056
    invoke-static {v2, v1, v5}, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;

    move-result-object v1

    .line 13061
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13064
    :cond_1
    const v1, 0x7f020133

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 13065
    if-eqz v1, :cond_2

    .line 13066
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13067
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/LastCleanedView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14179
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->O:Landroid/widget/Button;

    new-instance v1, Lcom/piriform/ccleaner/ui/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$1;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14188
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->P:Landroid/view/View;

    new-instance v1, Lcom/piriform/ccleaner/ui/activity/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity$2;-><init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v5, Lcom/piriform/ccleaner/ui/main/i;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->af:Lcom/piriform/ccleaner/ui/b/d$a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->D:Lcom/piriform/ccleaner/b/b/b;

    invoke-direct {v5, v0, p0, v1}, Lcom/piriform/ccleaner/ui/main/i;-><init>(Lcom/piriform/ccleaner/ui/b/d$a;Lcom/piriform/ccleaner/a;Lcom/piriform/ccleaner/b/b/b;)V

    .line 172
    new-instance v0, Lcom/piriform/ccleaner/ui/main/h;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    new-instance v4, Lcom/piriform/ccleaner/core/a/k;

    new-instance v1, Lcom/piriform/ccleaner/core/a/l;

    invoke-direct {v1}, Lcom/piriform/ccleaner/core/a/l;-><init>()V

    invoke-direct {v4, v1}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/ui/main/h;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/core/a/h$a;Lcom/piriform/ccleaner/core/a/k;Lcom/piriform/ccleaner/ui/main/i;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 175
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->N:Lcom/piriform/ccleaner/ui/main/CleanableItemsView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/CleanableItemsView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 283
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Z:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 286
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 516
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    .line 25110
    sget-object v2, Lcom/piriform/ccleaner/ui/activity/h$a;->a:Lcom/piriform/ccleaner/ui/activity/h$a;

    iput-object v2, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    .line 25111
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/activity/h;->j:Lf/j;

    .line 27093
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lf/j;->c()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 26097
    :goto_0
    if-eqz v0, :cond_0

    .line 26098
    invoke-interface {v2}, Lf/j;->b()V

    .line 517
    :cond_0
    iput-object v5, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->m:Lcom/piriform/ccleaner/a/a;

    .line 518
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    if-eqz v0, :cond_4

    .line 519
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    .line 28000
    iget-object v0, v2, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    if-eqz v0, :cond_2

    iget-object v3, v2, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    .line 30000
    iget-boolean v0, v3, Lcom/facebook/ads/internal/b;->h:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/internal/b;->b:Landroid/content/Context;

    iget-object v4, v3, Lcom/facebook/ads/internal/b;->g:Lcom/facebook/ads/internal/b$c;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/ads/internal/b;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29000
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/ads/internal/b;->e()V

    iget-object v0, v3, Lcom/facebook/ads/internal/b;->e:Lcom/facebook/ads/internal/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/b;->a(Lcom/facebook/ads/internal/b/a;)V

    iget-object v0, v3, Lcom/facebook/ads/internal/b;->c:Lcom/facebook/ads/internal/l/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/l/b;->a()V

    iput-object v5, v3, Lcom/facebook/ads/internal/b;->f:Landroid/view/View;

    iput-boolean v1, v3, Lcom/facebook/ads/internal/b;->d:Z

    .line 28000
    iput-object v5, v2, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/g;->c:Lcom/facebook/ads/internal/k;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/facebook/ads/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/facebook/ads/g;->c:Lcom/facebook/ads/internal/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/k;->a()V

    iget-object v0, v2, Lcom/facebook/ads/g;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, v2, Lcom/facebook/ads/g;->c:Lcom/facebook/ads/internal/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/g;->removeAllViews()V

    iput-object v5, v2, Lcom/facebook/ads/g;->b:Landroid/view/View;

    .line 521
    :cond_4
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onDestroy()V

    .line 522
    return-void

    :cond_5
    move v0, v1

    .line 27093
    goto :goto_0

    .line 30000
    :catch_0
    move-exception v0

    const-string/jumbo v4, "Error unregistering screen state receiever"

    invoke-static {v0, v4}, Lcom/facebook/ads/internal/m/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/m/p;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/q;->a(Lcom/facebook/ads/internal/m/p;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onNewIntent(Landroid/content/Intent;)V

    .line 477
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 292
    const v1, 0x7f100181

    if-ne v0, v1, :cond_0

    .line 293
    invoke-static {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 16114
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->g:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->v:Lcom/piriform/ccleaner/t/p;

    .line 25105
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->h:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v2, v1}, Lcom/piriform/ccleaner/ui/view/a;->b(Lcom/piriform/ccleaner/t/f;)V

    .line 25106
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->i:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/a;->b(Lcom/piriform/ccleaner/t/f;)V

    .line 500
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->y()V

    .line 503
    :cond_0
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onPause()V

    .line 504
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/a/c;->onPostCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_start_analysis"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->w()V

    .line 307
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->v()V

    .line 308
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 17090
    sget-object v1, Lcom/piriform/ccleaner/b/c/a$a;->b:Lcom/piriform/ccleaner/b/c/a$a;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/b/c/a;->a(Lcom/piriform/ccleaner/b/c/a$a;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onResume()V

    .line 430
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->W:Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->v:Lcom/piriform/ccleaner/t/p;

    .line 21100
    iget-object v3, v1, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->h:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v3, v2}, Lcom/piriform/ccleaner/ui/view/a;->a(Lcom/piriform/ccleaner/t/f;)V

    .line 21101
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/main/AnalysisAppBar;->i:Lcom/piriform/ccleaner/ui/view/a;

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/a;->a(Lcom/piriform/ccleaner/t/f;)V

    .line 431
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->s_()V

    .line 21436
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ac:Lcom/piriform/ccleaner/ui/c;

    .line 22019
    iget-object v2, v1, Lcom/piriform/ccleaner/ui/c;->b:Lcom/piriform/ccleaner/s/e;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/s/e;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 21436
    :goto_0
    if-eqz v1, :cond_2

    .line 21437
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->u()V

    :cond_0
    :goto_1
    return-void

    .line 22023
    :cond_1
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/c;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 22024
    const-string/jumbo v2, "analyzeShortcut"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 21438
    :cond_2
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ac:Lcom/piriform/ccleaner/ui/c;

    .line 22028
    iget-object v2, v1, Lcom/piriform/ccleaner/ui/c;->b:Lcom/piriform/ccleaner/s/e;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/s/e;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 21438
    :goto_2
    if-eqz v0, :cond_0

    .line 22444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Y:Z

    .line 22445
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->u()V

    goto :goto_1

    .line 22032
    :cond_3
    iget-object v0, v1, Lcom/piriform/ccleaner/ui/c;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22033
    const-string/jumbo v1, "cleanShortcut"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 450
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/a/c;->onStart()V

    .line 451
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    .line 23057
    iput-object p0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    .line 23062
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/h;->c:Lcom/piriform/ccleaner/b/a/a;

    invoke-interface {v1}, Lcom/piriform/ccleaner/b/a/a;->a()V

    .line 23063
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/h;->g:Lcom/piriform/ccleaner/b/b/c;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/b/b/c;->a()Lf/d;

    move-result-object v1

    new-instance v2, Lcom/piriform/ccleaner/ui/activity/h$1;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/ui/activity/h$1;-><init>(Lcom/piriform/ccleaner/ui/activity/h;)V

    .line 23064
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/ui/activity/h;->j:Lf/j;

    .line 23456
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23457
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23468
    :cond_0
    :goto_0
    return-void

    .line 23461
    :cond_1
    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;->from(Landroid/os/Bundle;)Lcom/piriform/ccleaner/cleaning/advanced/q;

    move-result-object v0

    .line 23462
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;->hasResult()Z

    move-result v1

    if-nez v1, :cond_2

    .line 23463
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->E:Lcom/piriform/ccleaner/b/f;

    const-string/jumbo v1, "Advanced cleaning result not found."

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 23467
    :cond_2
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;->isStopService()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23468
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;->cleaningResult()Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    move-result-object v0

    .line 24146
    iget-object v2, v1, Lcom/piriform/ccleaner/ui/activity/h;->e:Lcom/piriform/ccleaner/cleaning/advanced/l;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/cleaning/advanced/l;->stopAdvancedCleaningService()V

    .line 24147
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/activity/h;->a(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    goto :goto_0

    .line 23470
    :cond_3
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/q;->cleaningResult()Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    move-result-object v0

    .line 24151
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/activity/h;->a(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    goto :goto_0
.end method

.method public final p()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 676
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->X:Z

    .line 677
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    const v0, 0x7f08005c

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->R:J

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->b(Ljava/lang/String;)V

    .line 684
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Y:Z

    if-eqz v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->C()V

    .line 686
    iput-boolean v4, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->Y:Z

    goto :goto_0
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->C()V

    .line 50046
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 50051
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v1

    .line 50047
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 50048
    sget-object v3, Lcom/piriform/ccleaner/a/a/d$c;->b:Lcom/piriform/ccleaner/a/a/d$c;

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/a/a/d$c;)V

    goto :goto_0

    .line 781
    :cond_0
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Ljava/util/List;)V

    .line 782
    return-void
.end method

.method public final r()V
    .locals 4

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->C()V

    .line 50052
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 50057
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v1

    .line 50053
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 50054
    sget-object v3, Lcom/piriform/ccleaner/a/a/d$c;->b:Lcom/piriform/ccleaner/a/a/d$c;

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/a/a/d$c;)V

    goto :goto_0

    .line 795
    :cond_0
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Ljava/util/List;)V

    .line 796
    return-void
.end method

.method public final s()V
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    if-eqz v0, :cond_1

    .line 50076
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    new-instance v0, Lcom/facebook/ads/g;

    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/f;->c:Lcom/facebook/ads/f;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/f;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    .line 894
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    new-instance v1, Lcom/piriform/ccleaner/ui/activity/e;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/ui/activity/e;-><init>(Lcom/piriform/ccleaner/b/c/a;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/g;->setAdListener(Lcom/facebook/ads/d;)V

    .line 50074
    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 895
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 896
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    .line 50076
    iget-boolean v1, v0, Lcom/facebook/ads/g;->d:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    .line 50077
    invoke-virtual {v1}, Lcom/facebook/ads/internal/b;->b()V

    .line 50076
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/g;->d:Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/facebook/ads/g;->a:Lcom/facebook/ads/internal/b;

    .line 50078
    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->e()V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->b()V

    goto :goto_0
.end method

.method public final s_()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->S:Lcom/piriform/ccleaner/ui/main/h;

    .line 39636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 698
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->L:Lcom/piriform/ccleaner/c;

    sget-object v1, Lcom/piriform/ccleaner/c;->a:Lcom/piriform/ccleaner/c;

    if-ne v0, v1, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A()V

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->B()V

    .line 703
    return-void
.end method

.method public final t()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    if-nez v0, :cond_0

    .line 905
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->ad:Lcom/facebook/ads/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/g;->setVisibility(I)V

    goto :goto_0
.end method
