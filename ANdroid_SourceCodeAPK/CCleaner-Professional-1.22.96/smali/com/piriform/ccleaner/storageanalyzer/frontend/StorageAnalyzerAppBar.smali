.class public Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;
.super Landroid/support/design/widget/AppBarLayout;
.source "SourceFile"


# instance fields
.field final f:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

.field final g:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

.field final h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

.field final i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

.field final j:[Lcom/piriform/ccleaner/ui/view/j;

.field private final k:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/piriform/ccleaner/storageanalyzer/f;->values()[Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/view/j;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->j:[Lcom/piriform/ccleaner/ui/view/j;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030098

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->k:Landroid/support/v7/widget/Toolbar;

    .line 2016
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->g:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    .line 3016
    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    check-cast v0, Lcom/piriform/ccleaner/ui/view/InfoBarView;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setProgress(F)V

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->g:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;->getBar()Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->i:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 49
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    invoke-direct {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->f:Lcom/piriform/ccleaner/storageanalyzer/frontend/s;

    .line 50
    return-void
.end method


# virtual methods
.method public getUsageBar()Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->g:Lcom/piriform/ccleaner/ui/view/HeaderUsageBarView;

    return-object v0
.end method

.method public setProgressText(I)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerAppBar;->h:Lcom/piriform/ccleaner/ui/view/InfoBarView;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/ui/view/InfoBarView;->setLeftText(I)V

    .line 127
    return-void
.end method
