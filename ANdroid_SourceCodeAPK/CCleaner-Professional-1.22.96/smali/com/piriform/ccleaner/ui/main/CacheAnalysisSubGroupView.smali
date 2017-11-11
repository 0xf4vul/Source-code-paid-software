.class public Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/c;


# instance fields
.field a:Lcom/piriform/ccleaner/cleaning/advanced/d;

.field b:Lcom/piriform/ccleaner/cleaning/advanced/b;

.field c:Lcom/piriform/ccleaner/b/a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

.field private g:Lcom/piriform/ccleaner/ui/b/d$a;

.field private final h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    new-instance v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$6;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->h:Landroid/view/View$OnClickListener;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setOrientation(I)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)Lcom/piriform/ccleaner/ui/b/d$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->g:Lcom/piriform/ccleaner/ui/b/d$a;

    return-object v0
.end method

.method private a(FII)V
    .locals 4

    .prologue
    .line 250
    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 252
    if-lez p3, :cond_0

    .line 253
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 256
    return-void
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V
    .locals 2

    .prologue
    .line 10325
    new-instance v0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$7;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$7;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    .line 10333
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->from(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/ak$a;)Lcom/piriform/ccleaner/cleaning/advanced/ak;

    move-result-object v0

    .line 10334
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ak;->show()V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 6

    .prologue
    const v5, 0x7f0801b4

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 83
    .line 3059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 83
    check-cast v0, Lcom/piriform/ccleaner/a/a/i;

    .line 84
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    new-instance v3, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;

    invoke-direct {v3, p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$1;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;Lcom/piriform/ccleaner/a/a/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 3096
    check-cast v0, Lcom/piriform/ccleaner/a/a/i;

    .line 3097
    if-nez v0, :cond_0

    .line 3098
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    .line 7170
    :goto_0
    return-void

    .line 3101
    :cond_0
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/i;->s()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4160
    iget-object v2, v0, Lcom/piriform/ccleaner/a/a/a;->c:Lcom/piriform/ccleaner/a/a/d$b;

    .line 4118
    sget-object v3, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/a/a/d$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4110
    if-eqz v2, :cond_1

    .line 5122
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto :goto_0

    .line 5127
    :cond_1
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/i;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5128
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto :goto_0

    .line 5131
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a:Lcom/piriform/ccleaner/cleaning/advanced/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/d;->isAdvancedCleaningServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5140
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5141
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5142
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setVisibility(I)V

    .line 5144
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0801b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5145
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5146
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    const v2, 0x7f0801bc

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setText(I)V

    .line 5148
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    .line 6074
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    iget-object v3, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6075
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a()V

    .line 5150
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto :goto_0

    .line 6155
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6156
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6157
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setVisibility(I)V

    .line 6159
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    const v2, 0x7f0801be

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 6160
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setText(I)V

    .line 6162
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6163
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    .line 7105
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    iget-object v3, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7106
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a()V

    .line 6165
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto/16 :goto_0

    .line 8059
    :cond_4
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 7177
    check-cast v0, Lcom/piriform/ccleaner/a/a/i;

    .line 7178
    if-eqz v0, :cond_6

    .line 7182
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/i;->t()Z

    move-result v0

    .line 7183
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a:Lcom/piriform/ccleaner/cleaning/advanced/d;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/cleaning/advanced/d;->isAdvancedCleaningServiceEnabled()Z

    move-result v2

    .line 7184
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    .line 9038
    iget-boolean v0, p1, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 7184
    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 7169
    :goto_1
    if-eqz v0, :cond_7

    .line 9188
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 7184
    goto :goto_1

    .line 9193
    :cond_7
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9194
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9195
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setVisibility(I)V

    .line 9197
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    const v2, 0x7f0801bd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9198
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->setText(I)V

    .line 9200
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9201
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    .line 10091
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->c:Landroid/widget/Button;

    iget-object v3, v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10092
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;->a()V

    .line 9203
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    .line 1016
    :cond_0
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->d:Landroid/widget/TextView;

    .line 2016
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->e:Landroid/widget/Button;

    .line 3016
    const v0, 0x7f1000fc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    check-cast v0, Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->f:Lcom/piriform/ccleaner/ui/main/PrimaryAdvancedCleaningCallToActionButton;

    .line 78
    return-void
.end method

.method public setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->g:Lcom/piriform/ccleaner/ui/b/d$a;

    .line 294
    return-void
.end method

.method public setVisibility(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 10216
    invoke-virtual {p0, v4}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->setAlpha(F)V

    .line 10222
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->measure(II)V

    .line 10223
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getMeasuredHeight()I

    move-result v0

    .line 10224
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10226
    new-instance v1, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$2;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;I)V

    .line 10238
    new-instance v2, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$3;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$3;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10245
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10246
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10218
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x50

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a(FII)V

    .line 213
    :goto_0
    return-void

    .line 10264
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getMeasuredHeight()I

    move-result v0

    .line 10265
    new-instance v1, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$4;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;I)V

    .line 10281
    new-instance v2, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$5;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView$5;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10287
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10288
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10260
    const/16 v0, 0x3c

    invoke-direct {p0, v4, v0, v5}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisSubGroupView;->a(FII)V

    goto :goto_0
.end method
