.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->b(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1$1;-><init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    return-void
.end method
