.class public Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a;
.implements Lcom/piriform/ccleaner/professional/p$a;
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;


# instance fields
.field private A:Lcom/piriform/ccleaner/storageanalyzer/f;

.field private B:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

.field private C:Lcom/piriform/ccleaner/ui/view/InfoBarView;

.field private final D:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

.field private final E:Lcom/piriform/ccleaner/professional/k$a;

.field private final F:Lcom/piriform/ccleaner/professional/p$c;

.field private final G:Lcom/piriform/ccleaner/q/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/piriform/ccleaner/q/c$a",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Landroid/view/View$OnClickListener;

.field m:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

.field n:Lcom/piriform/ccleaner/professional/p;

.field o:Lcom/piriform/ccleaner/professional/k;

.field p:Lcom/novoda/notils/c/b/e;

.field q:Lcom/piriform/ccleaner/b/a;

.field private s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

.field private t:Landroid/support/v7/widget/RecyclerView;

.field private u:Lcom/piriform/ccleaner/professional/ui/b;

.field private final v:Lcom/piriform/ccleaner/professional/ui/a;

.field private w:Landroid/widget/Button;

.field private final x:Lcom/piriform/ccleaner/g/a;

.field private y:Lcom/piriform/ccleaner/storageanalyzer/d;

.field private z:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    .line 52
    new-instance v0, Lcom/piriform/ccleaner/professional/ui/a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/professional/ui/a;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->v:Lcom/piriform/ccleaner/professional/ui/a;

    .line 54
    new-instance v0, Lcom/piriform/ccleaner/g/a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/g/a;-><init>(Lcom/piriform/ccleaner/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->x:Lcom/piriform/ccleaner/g/a;

    .line 248
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$2;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->D:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    .line 255
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->E:Lcom/piriform/ccleaner/professional/k$a;

    .line 280
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$4;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->F:Lcom/piriform/ccleaner/professional/p$c;

    .line 297
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$5;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$5;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->G:Lcom/piriform/ccleaner/q/c$a;

    .line 321
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->H:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/storageanalyzer/f;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string/jumbo v1, "CATEGORY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 331
    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/frontend/j;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    return-object v0
.end method

.method private a(IJJ)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->C:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->C:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    const v1, 0x7f08027c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 317
    invoke-static {p2, p3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p4, p5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setRightText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;Lcom/piriform/ccleaner/q/c;)V
    .locals 8

    .prologue
    .line 24306
    invoke-interface {p1}, Lcom/piriform/ccleaner/q/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 24307
    const-wide/16 v2, 0x0

    .line 24308
    invoke-interface {p1}, Lcom/piriform/ccleaner/q/c;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 25124
    iget-wide v6, v0, Lcom/piriform/ccleaner/g/d;->f:J

    .line 24309
    add-long/2addr v2, v6

    .line 24310
    goto :goto_0

    .line 24311
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->y:Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 26030
    iget-wide v4, v0, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    move-object v0, p0

    .line 24311
    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->a(IJJ)V

    .line 42
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->t:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/g/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->x:Lcom/piriform/ccleaner/g/a;

    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/frontend/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->B:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/f;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->A:Lcom/piriform/ccleaner/storageanalyzer/f;

    return-object v0
.end method

.method static synthetic f(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 18093
    iget-object v2, v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v2}, Lcom/piriform/ccleaner/q/c;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 154
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->y:Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 19044
    iget-object v2, v2, Lcom/piriform/ccleaner/storageanalyzer/d;->a:Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 19084
    iget-boolean v2, v2, Lcom/piriform/ccleaner/storageanalyzer/a;->c:Z

    .line 154
    if-eqz v2, :cond_1

    .line 19161
    :goto_1
    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 19165
    if-eqz v0, :cond_2

    .line 19166
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 18093
    goto :goto_0

    :cond_1
    move v0, v1

    .line 154
    goto :goto_1

    .line 19168
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19169
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 174
    .line 19182
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 20069
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19182
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->z:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;

    .line 21043
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;->setVisibility(I)V

    .line 21048
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21049
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 21050
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    .line 21051
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 21052
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 21053
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 19182
    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->z:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;

    .line 21057
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;->setVisibility(I)V

    goto :goto_1
.end method

.method private j()Lcom/piriform/ccleaner/storageanalyzer/f;
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CATEGORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/f;

    return-object v0
.end method


# virtual methods
.method public final B_()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->u:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/professional/ui/b;->a()V

    .line 225
    return-void
.end method

.method public final C_()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->o:Lcom/piriform/ccleaner/professional/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->E:Lcom/piriform/ccleaner/professional/k$a;

    invoke-interface {v0, p0, v1}, Lcom/piriform/ccleaner/professional/k;->a(Landroid/app/Activity;Lcom/piriform/ccleaner/professional/k$a;)V

    .line 240
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->v:Lcom/piriform/ccleaner/professional/ui/a;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/professional/ui/a;->a(Landroid/app/Activity;)V

    .line 215
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/m;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->u:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/professional/ui/b;->a(Lcom/piriform/ccleaner/professional/m;)V

    .line 230
    iget-object v3, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->B:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    .line 23062
    invoke-virtual {v3}, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/piriform/ccleaner/professional/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 23053
    :goto_0
    if-nez v0, :cond_1

    .line 23056
    iget-object v0, v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;->setVisibility(I)V

    .line 23057
    iget-object v0, v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 23066
    iget-object v0, v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    iget-object v3, v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->d:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_1
    invoke-virtual {p1}, Lcom/piriform/ccleaner/professional/m;->a()Z

    move-result v3

    .line 232
    iget-object v4, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    if-eqz v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->C:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 23087
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/q/c;->a(Z)V

    .line 23089
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 23698
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 235
    return-void

    :cond_3
    move v0, v1

    .line 23062
    goto :goto_0

    :cond_4
    move v0, v2

    .line 232
    goto :goto_1
.end method

.method public final a(Lcom/piriform/ccleaner/storageanalyzer/d;)V
    .locals 6

    .prologue
    .line 146
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->y:Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 17048
    iget-object v1, p1, Lcom/piriform/ccleaner/storageanalyzer/d;->c:Ljava/util/Set;

    .line 17073
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 17074
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17636
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 148
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 18030
    iget-wide v4, p1, Lcom/piriform/ccleaner/storageanalyzer/d;->d:J

    move-object v0, p0

    .line 148
    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->a(IJJ)V

    .line 149
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->h()V

    .line 150
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->i()V

    .line 151
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 21119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 21120
    iget-object v3, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21636
    :cond_0
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()V

    .line 200
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 22126
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/q/c;->d()V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 22207
    const v1, 0x7f08026b

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22208
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22209
    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->p:Lcom/novoda/notils/c/b/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/novoda/notils/c/b/e;->a(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->h()V

    .line 203
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->i()V

    .line 204
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;->a(Landroid/content/Context;)V

    .line 220
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->p:Lcom/novoda/notils/c/b/e;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 188
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->finish()V

    .line 189
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->p:Lcom/novoda/notils/c/b/e;

    const v1, 0x7f08026a

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 194
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->finish()V

    .line 195
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/activity/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 245
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->o:Lcom/piriform/ccleaner/professional/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/piriform/ccleaner/professional/k;->a(IILandroid/content/Intent;)V

    .line 246
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    .line 7093
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;-><init>()V

    .line 7094
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->j()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->setTitle(I)V

    .line 79
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->setContentView(I)V

    .line 8024
    const v0, 0x7f1000ae

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->t:Landroid/support/v7/widget/RecyclerView;

    .line 9024
    const v0, 0x7f100120

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->w:Landroid/widget/Button;

    .line 10024
    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/piriform/ccleaner/professional/ui/b;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->u:Lcom/piriform/ccleaner/professional/ui/b;

    .line 11024
    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->z:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;

    .line 12024
    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->C:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 86
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->B:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->z:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;

    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->j()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v1

    .line 12039
    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/f$a;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerCategoryEmptyView;)V

    .line 89
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->n:Lcom/piriform/ccleaner/professional/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->u:Lcom/piriform/ccleaner/professional/ui/b;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/professional/p;->a(Lcom/piriform/ccleaner/professional/ui/b;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 14147
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->c()Lf/d;

    move-result-object v0

    .line 14148
    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->B:Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    .line 15043
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15044
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 119
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 99
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onStart()V

    .line 100
    invoke-direct {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->j()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->A:Lcom/piriform/ccleaner/storageanalyzer/f;

    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->A:Lcom/piriform/ccleaner/storageanalyzer/f;

    .line 12083
    iput-object p0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 12084
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->e:Lf/j/b;

    iget-object v3, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 12085
    invoke-interface {v3}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->b()Lf/d;

    move-result-object v3

    .line 12107
    new-instance v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;

    invoke-direct {v4, v0, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$4;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;)V

    .line 12086
    invoke-virtual {v3, v4}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v3

    .line 12119
    new-instance v4, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;

    invoke-direct {v4, v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$5;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;Lcom/piriform/ccleaner/storageanalyzer/f;)V

    .line 12087
    invoke-virtual {v3, v4}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v1

    .line 13038
    new-instance v3, Lcom/piriform/ccleaner/p/c$1;

    invoke-direct {v3}, Lcom/piriform/ccleaner/p/c$1;-><init>()V

    .line 12088
    invoke-virtual {v1, v3}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v1

    iget-object v3, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->b:Lf/g;

    .line 12089
    invoke-virtual {v1, v3}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v1

    iget-object v3, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->c:Lf/g;

    .line 12090
    invoke-virtual {v1, v3}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v1

    .line 13097
    new-instance v3, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$3;

    invoke-direct {v3, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$3;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V

    .line 12091
    invoke-virtual {v1, v3}, Lf/d;->b(Lf/c/a;)Lf/d;

    move-result-object v1

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->g:Lf/e;

    .line 12092
    invoke-virtual {v1, v0}, Lf/d;->a(Lf/e;)Lf/j;

    move-result-object v0

    .line 12084
    invoke-virtual {v2, v0}, Lf/j/b;->a(Lf/j;)V

    .line 103
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->D:Lcom/piriform/ccleaner/storageanalyzer/frontend/o;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->G:Lcom/piriform/ccleaner/q/c$a;

    .line 14097
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/q/c;->a(Lcom/piriform/ccleaner/q/c$a;)V

    .line 105
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->t:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 107
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->t:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 108
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;

    .line 14123
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V

    .line 108
    invoke-direct {v1, v0, v2}, Lcom/piriform/ccleaner/storageanalyzer/frontend/a;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;)V

    .line 109
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->t:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 111
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->n:Lcom/piriform/ccleaner/professional/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->F:Lcom/piriform/ccleaner/professional/p$c;

    invoke-virtual {v0, p0, v1}, Lcom/piriform/ccleaner/professional/p;->a(Lcom/piriform/ccleaner/professional/p$a;Lcom/piriform/ccleaner/professional/p$c;)V

    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onStop()V

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->s:Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->G:Lcom/piriform/ccleaner/q/c$a;

    .line 15101
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/q/c;->b(Lcom/piriform/ccleaner/q/c$a;)V

    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 15134
    sget-object v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 15135
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->e:Lf/j/b;

    invoke-virtual {v0}, Lf/j/b;->a()V

    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->n:Lcom/piriform/ccleaner/professional/p;

    .line 16058
    sget-object v1, Lcom/piriform/ccleaner/professional/p$a;->a:Lcom/piriform/ccleaner/professional/p$a;

    iput-object v1, v0, Lcom/piriform/ccleaner/professional/p;->a:Lcom/piriform/ccleaner/professional/p$a;

    .line 142
    return-void
.end method
