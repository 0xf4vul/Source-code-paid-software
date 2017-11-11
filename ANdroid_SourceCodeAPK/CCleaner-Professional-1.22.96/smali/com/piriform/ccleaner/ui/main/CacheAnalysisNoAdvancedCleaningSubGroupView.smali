.class public Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/c;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/piriform/ccleaner/ui/b/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->setOrientation(I)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;)Lcom/piriform/ccleaner/ui/b/d$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->b:Lcom/piriform/ccleaner/ui/b/d$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 42
    .line 1059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/piriform/ccleaner/a/a/i;

    .line 1063
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/i;->t()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 44
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->setVisibility(I)V

    .line 45
    if-eqz v2, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/piriform/ccleaner/a/a/i;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080185

    .line 47
    :goto_2
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView$1;

    invoke-direct {v2, p0, v0}, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView$1;-><init>(Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;Lcom/piriform/ccleaner/a/a/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 1063
    goto :goto_0

    .line 44
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 1067
    :cond_3
    const v1, 0x7f080186

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1016
    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->a:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public setAnalysisClickListener(Lcom/piriform/ccleaner/ui/b/d$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/CacheAnalysisNoAdvancedCleaningSubGroupView;->b:Lcom/piriform/ccleaner/ui/b/d$a;

    .line 60
    return-void
.end method
