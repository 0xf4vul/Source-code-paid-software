.class public final Lcom/piriform/ccleaner/ui/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/z;


# instance fields
.field final a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

.field final b:Lcom/piriform/ccleaner/ui/view/j;

.field final c:Lcom/piriform/ccleaner/ui/view/j;

.field private d:J

.field private e:J

.field private f:J

.field private final g:I

.field private final h:I

.field private final i:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

.field private j:Z

.field private final k:Lcom/piriform/ccleaner/t/q;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;Lcom/piriform/ccleaner/t/q$a;IIII)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/a;->i:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    .line 50
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->getBar()Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 52
    iput p3, p0, Lcom/piriform/ccleaner/ui/view/a;->g:I

    .line 53
    iput p4, p0, Lcom/piriform/ccleaner/ui/view/a;->h:I

    .line 55
    new-instance v0, Lcom/piriform/ccleaner/ui/view/j;

    invoke-direct {v0, p5, v2, v3}, Lcom/piriform/ccleaner/ui/view/j;-><init>(IJ)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->b:Lcom/piriform/ccleaner/ui/view/j;

    .line 56
    new-instance v0, Lcom/piriform/ccleaner/ui/view/j;

    invoke-direct {v0, p6, v2, v3}, Lcom/piriform/ccleaner/ui/view/j;-><init>(IJ)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->c:Lcom/piriform/ccleaner/ui/view/j;

    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/a;->b:Lcom/piriform/ccleaner/ui/view/j;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a(Lcom/piriform/ccleaner/ui/view/j;)V

    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/a;->c:Lcom/piriform/ccleaner/ui/view/j;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->a(Lcom/piriform/ccleaner/ui/view/j;)V

    .line 60
    new-instance v0, Lcom/piriform/ccleaner/t/q;

    invoke-direct {v0, p0, p2}, Lcom/piriform/ccleaner/t/q;-><init>(Lcom/piriform/ccleaner/t/z;Lcom/piriform/ccleaner/t/q$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->k:Lcom/piriform/ccleaner/t/q;

    .line 61
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    .line 2112
    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    move v0, v1

    .line 104
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->i:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    .line 2116
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2117
    iget-wide v4, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2118
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 2119
    const-string/jumbo v5, " / "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/piriform/ccleaner/ui/view/a;->e:J

    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2120
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/piriform/ccleaner/ui/view/a;->g:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v5, v2, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2121
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/piriform/ccleaner/ui/view/a;->h:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->setRightText(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->getMaxValue()J

    move-result-wide v4

    .line 2127
    iget-wide v6, p0, Lcom/piriform/ccleaner/ui/view/a;->f:J

    mul-long/2addr v6, v4

    iget-wide v8, p0, Lcom/piriform/ccleaner/ui/view/a;->e:J

    div-long/2addr v6, v8

    .line 2128
    iget-wide v8, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    mul-long/2addr v4, v8

    iget-wide v8, p0, Lcom/piriform/ccleaner/ui/view/a;->e:J

    div-long/2addr v4, v8

    .line 2130
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/view/a;->c:Lcom/piriform/ccleaner/ui/view/j;

    .line 3021
    iget-wide v8, v3, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 2130
    long-to-int v3, v8

    aput v3, v0, v2

    long-to-int v3, v6

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2131
    new-instance v1, Lcom/piriform/ccleaner/ui/view/a$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/piriform/ccleaner/ui/view/a$1;-><init>(Lcom/piriform/ccleaner/ui/view/a;J)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2146
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/view/a;->j:Z

    .line 109
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2112
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/piriform/ccleaner/ui/view/a;->f:J

    .line 73
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/a;->b()V

    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/a;->j:Z

    .line 75
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/view/a;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/piriform/ccleaner/ui/view/a;->f:J

    .line 79
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/a;->b()V

    .line 80
    return-void
.end method

.method public final a(JJ)V
    .locals 5

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/view/a;->j:Z

    if-nez v0, :cond_0

    .line 2092
    iget-wide v0, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    long-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 84
    :goto_0
    if-eqz v0, :cond_1

    .line 2096
    :cond_0
    iput-wide p1, p0, Lcom/piriform/ccleaner/ui/view/a;->d:J

    .line 2100
    iput-wide p3, p0, Lcom/piriform/ccleaner/ui/view/a;->e:J

    .line 87
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/view/a;->b()V

    .line 89
    :cond_1
    return-void

    .line 2092
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/t/f;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->k:Lcom/piriform/ccleaner/t/q;

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/t/f;->a(Lcom/piriform/ccleaner/t/o;)V

    .line 65
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/t/f;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a;->k:Lcom/piriform/ccleaner/t/q;

    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/t/f;->b(Lcom/piriform/ccleaner/t/o;)V

    .line 69
    return-void
.end method
