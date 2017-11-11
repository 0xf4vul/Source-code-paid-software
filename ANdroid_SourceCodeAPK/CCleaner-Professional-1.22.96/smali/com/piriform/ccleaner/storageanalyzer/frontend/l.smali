.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/l;
.super Lcom/piriform/ccleaner/storageanalyzer/frontend/n;
.source "SourceFile"


# instance fields
.field final n:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/n;-><init>(Landroid/view/View;)V

    .line 1016
    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/l;->n:Landroid/widget/ProgressBar;

    .line 26
    return-void
.end method
