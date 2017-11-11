.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 321
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$6;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->a(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/storageanalyzer/frontend/j;

    move-result-object v1

    .line 1113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    iget-object v1, v1, Lcom/piriform/ccleaner/storageanalyzer/frontend/j;->c:Lcom/piriform/ccleaner/q/c;

    invoke-interface {v1}, Lcom/piriform/ccleaner/q/c;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1115
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1139
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/e;

    .line 1140
    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/e;->a(Ljava/util/List;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->c:Lf/g;

    .line 1141
    invoke-virtual {v1, v2}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->b:Lf/g;

    .line 1142
    invoke-virtual {v1, v2}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v1

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->f:Lf/e;

    .line 1143
    invoke-virtual {v1, v0}, Lf/d;->a(Lf/e;)Lf/j;

    .line 325
    return-void
.end method
