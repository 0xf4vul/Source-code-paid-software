.class public Lcom/piriform/ccleaner/ui/main/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;
.implements Lcom/piriform/ccleaner/ui/main/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

.field private final b:Lcom/piriform/ccleaner/ui/main/c;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    check-cast v0, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    .line 2016
    const v0, 0x7f1000f9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Lcom/piriform/ccleaner/ui/main/c;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->b:Lcom/piriform/ccleaner/ui/main/c;

    .line 58
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/ui/main/d;->setClickListeners(Lcom/piriform/ccleaner/ui/b/d$a;)V

    .line 59
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)Lcom/piriform/ccleaner/ui/main/d;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/piriform/ccleaner/ui/main/d;

    const v1, 0x7f030055

    invoke-direct {v0, p0, p1, v1}, Lcom/piriform/ccleaner/ui/main/d;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;Lcom/piriform/ccleaner/b/b/b;)Lcom/piriform/ccleaner/ui/main/d;
    .locals 2

    .prologue
    .line 41
    invoke-interface {p2}, Lcom/piriform/ccleaner/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/piriform/ccleaner/ui/main/d;

    const v1, 0x7f030053

    invoke-direct {v0, p0, p1, v1}, Lcom/piriform/ccleaner/ui/main/d;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/main/d;

    const v1, 0x7f030054

    invoke-direct {v0, p0, p1, v1}, Lcom/piriform/ccleaner/ui/main/d;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;)Lcom/piriform/ccleaner/ui/main/d;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/piriform/ccleaner/ui/main/d;

    const v1, 0x7f030057

    invoke-direct {v0, p0, p1, v1}, Lcom/piriform/ccleaner/ui/main/d;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/ui/b/d$a;I)V

    return-object v0
.end method

.method private setClickListeners(Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->b:Lcom/piriform/ccleaner/ui/main/c;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->b:Lcom/piriform/ccleaner/ui/main/c;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/main/c;->setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    invoke-virtual {v0, p1, p2}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V

    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->a:Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;

    invoke-virtual {v0, p0}, Lcom/piriform/ccleaner/ui/main/AnalysisListItemView;->setOnCheckedChangeListener(Lcom/piriform/ccleaner/ui/main/AnalysisListItemView$a;)V

    .line 74
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/d;->b:Lcom/piriform/ccleaner/ui/main/c;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/d;->getResources()Landroid/content/res/Resources;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/ui/main/c;->a(Lcom/piriform/ccleaner/core/a/b;)V

    .line 75
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/d;->b:Lcom/piriform/ccleaner/ui/main/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/ui/main/c;->setVisibility(I)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
