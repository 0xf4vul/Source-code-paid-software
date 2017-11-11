.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    move-result-object v0

    .line 7080
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a()I

    move-result v1

    .line 7081
    iget v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a:I

    .line 7082
    invoke-virtual {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->a()I

    move-result v2

    sub-int/2addr v2, v1

    .line 7779
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->d:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 130
    return-void
.end method
