.class public Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/GridLayout;

.field private h:Lcom/piriform/ccleaner/ui/b/d$a;

.field private i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;->d:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;->d:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    .line 59
    sget-object v0, Lcom/piriform/ccleaner/h$a;->AnalysisListItemView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    const v2, 0x7f03004f

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f03004f

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;->d:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    .line 77
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;)Lcom/piriform/ccleaner/ui/b/d$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->h:Lcom/piriform/ccleaner/ui/b/d$a;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    .line 17214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->b:Landroid/widget/ImageView;

    .line 2016
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->c:Landroid/widget/TextView;

    .line 3016
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->d:Landroid/widget/TextView;

    .line 4016
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->e:Landroid/widget/TextView;

    .line 5016
    const v0, 0x7f100100

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->g:Landroid/widget/GridLayout;

    .line 6016
    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    .line 7016
    const v0, 0x7f100103

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    .line 93
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->h:Lcom/piriform/ccleaner/ui/b/d$a;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/core/a/b;Z)V
    .locals 2

    .prologue
    .line 18204
    invoke-virtual {p1, p2}, Lcom/piriform/ccleaner/core/a/b;->a(Z)V

    .line 18206
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/b/d;

    if-eqz v0, :cond_0

    .line 18207
    check-cast p1, Lcom/piriform/ccleaner/ui/b/d;

    .line 19059
    iget-object v0, p1, Lcom/piriform/ccleaner/ui/b/d;->d:Lcom/piriform/ccleaner/ui/b/b;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/b/d;->b()Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/piriform/ccleaner/ui/b/b;->a(Lcom/piriform/ccleaner/a/h;Z)V

    .line 18210
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;->a(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    .line 7059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 99
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 100
    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15193
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v2

    .line 7226
    iget v2, v2, Lcom/piriform/ccleaner/a/h;->y:I

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8140
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v1

    .line 9118
    iget-object v6, v1, Lcom/piriform/ccleaner/core/i;->g:Ljava/util/List;

    .line 8142
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8143
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->g:Landroid/widget/GridLayout;

    invoke-virtual {v2, v3}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 10100
    iget-object v2, v1, Lcom/piriform/ccleaner/core/i;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/piriform/ccleaner/core/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    .line 8144
    :goto_1
    if-eqz v1, :cond_4

    .line 8145
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8146
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v2

    .line 11096
    iget-object v2, v2, Lcom/piriform/ccleaner/core/i;->d:Ljava/lang/String;

    .line 8146
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->e:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v2

    .line 11108
    iget-object v2, v2, Lcom/piriform/ccleaner/core/i;->e:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/a/a/d;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    new-instance v1, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$1;-><init>(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/a/a/d;)V

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11218
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->n()Lcom/piriform/ccleaner/a/a/d$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/piriform/ccleaner/a/a/d$c;->a()Z

    move-result v1

    .line 121
    if-eqz v1, :cond_a

    .line 122
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a()V

    .line 12222
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->n()Lcom/piriform/ccleaner/a/a/d$c;

    move-result-object v1

    .line 13082
    sget-object v2, Lcom/piriform/ccleaner/a/a/d$c;->b:Lcom/piriform/ccleaner/a/a/d$c;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/piriform/ccleaner/a/a/d$c;->c:Lcom/piriform/ccleaner/a/a/d$c;

    if-ne v1, v2, :cond_6

    :cond_2
    move v1, v5

    .line 12172
    :goto_3
    if-eqz v1, :cond_7

    .line 13232
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13233
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13234
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/b;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    move v1, v4

    .line 10100
    goto :goto_1

    .line 8148
    :cond_4
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 8151
    :cond_5
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8152
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1, v4}, Landroid/widget/GridLayout;->setVisibility(I)V

    move v3, v4

    .line 8154
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 8155
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 8156
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8154
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_6
    move v1, v4

    .line 13082
    goto :goto_3

    .line 12175
    :cond_7
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->i()Lcom/piriform/ccleaner/a/a/d$b;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    if-ne v0, v1, :cond_8

    .line 12176
    :goto_5
    if-eqz v5, :cond_9

    const v0, 0x7f0200dc

    .line 14226
    :goto_6
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 14227
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14228
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v5, v4

    .line 12175
    goto :goto_5

    .line 12176
    :cond_9
    const v0, 0x7f0200dd

    goto :goto_6

    .line 15167
    :cond_a
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 15168
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15200
    sget-object v1, Lcom/piriform/ccleaner/a/c;->f:Lcom/piriform/ccleaner/a/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->o()Lcom/piriform/ccleaner/a/c;

    move-result-object v0

    if-eq v1, v0, :cond_b

    move v0, v5

    .line 15181
    :goto_7
    if-eqz v0, :cond_c

    .line 15182
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    .line 16038
    iget-boolean v1, p1, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 15184
    new-instance v2, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;

    invoke-direct {v2, p0, p1}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$2;-><init>(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;Lcom/piriform/ccleaner/core/a/b;)V

    .line 16242
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16243
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16244
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15192
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 15193
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->f:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/piriform/ccleaner/v/a;->a(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    move v0, v4

    .line 15200
    goto :goto_7

    .line 15195
    :cond_c
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a()V

    goto/16 :goto_0
.end method

.method public setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->h:Lcom/piriform/ccleaner/ui/b/d$a;

    .line 132
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;)V
    .locals 0

    .prologue
    .line 136
    if-nez p1, :cond_0

    sget-object p1, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;->d:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->i:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;

    .line 137
    return-void
.end method
