.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/professional/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->d(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/frontend/b;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    .line 2024
    const v0, 0x7f10011f

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1037
    check-cast v0, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iput-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->a:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    .line 3024
    const v0, 0x7f10016b

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1038
    check-cast v0, Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    iput-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->b:Lcom/piriform/ccleaner/professional/ui/ProPurchasedCardView;

    .line 4024
    const v0, 0x7f100120

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1039
    iput-object v0, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/b;->c:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->n:Lcom/piriform/ccleaner/professional/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/professional/p;->a()V

    .line 260
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->p:Lcom/novoda/notils/c/b/e;

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 265
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$3;->b:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->p:Lcom/novoda/notils/c/b/e;

    const v1, 0x7f080279

    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/e;->a(I)V

    .line 270
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    const-string/jumbo v1, "Storage Analyzer Screen: Purchase dialog failed with permanent error from play store"

    .line 275
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;)V

    .line 276
    return-void
.end method
