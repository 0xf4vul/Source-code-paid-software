.class public Lcom/piriform/ccleaner/ui/view/InfoBarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ProgressBar;

.field private e:Lcom/piriform/ccleaner/ui/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setBackgroundResource(I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->b:Landroid/widget/TextView;

    .line 2016
    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->c:Landroid/widget/TextView;

    .line 3016
    const v0, 0x7f100159

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->a:Landroid/view/View;

    .line 4016
    const v0, 0x7f10013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 42
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/piriform/ccleaner/ui/e;

    const v2, 0x7f0e005a

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f0e0059

    .line 45
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/piriform/ccleaner/ui/e;-><init>(II)V

    iput-object v1, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->e:Lcom/piriform/ccleaner/ui/e;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->e:Lcom/piriform/ccleaner/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 82
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public setLeftText(I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    return-void
.end method

.method public setLeftText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .prologue
    .line 71
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->e:Lcom/piriform/ccleaner/ui/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/e;->start()V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 76
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->d:Landroid/widget/ProgressBar;

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setRightText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/InfoBarView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
