.class public Lcom/piriform/ccleaner/storageanalyzer/frontend/n;
.super Landroid/support/v7/widget/RecyclerView$u;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    .line 11
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/piriform/ccleaner/storageanalyzer/frontend/n;
    .locals 3

    .prologue
    .line 18
    .line 2017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2018
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2019
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2020
    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/l;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/l;-><init>(Landroid/view/View;)V

    .line 18
    return-object v1
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)Lcom/piriform/ccleaner/storageanalyzer/frontend/n;
    .locals 5

    .prologue
    .line 14
    .line 1039
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1041
    new-instance v1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 1042
    new-instance v2, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 1043
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 1045
    new-instance v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$i;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1047
    new-instance v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/k;-><init>(Lcom/piriform/ccleaner/ui/view/ListViewItem;Lcom/piriform/ccleaner/ui/view/c;Lcom/piriform/ccleaner/storageanalyzer/frontend/o;)V

    .line 14
    return-object v0
.end method
