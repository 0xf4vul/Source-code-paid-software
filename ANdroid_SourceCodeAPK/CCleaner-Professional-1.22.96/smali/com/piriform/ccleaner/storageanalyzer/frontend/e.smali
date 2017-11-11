.class public final Lcom/piriform/ccleaner/storageanalyzer/frontend/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/g;


# instance fields
.field private final a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/storageanalyzer/f;)V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/f;->a:Lcom/piriform/ccleaner/storageanalyzer/f;

    if-ne p1, v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->a(Landroid/content/Context;Lcom/piriform/ccleaner/storageanalyzer/f;)Landroid/content/Intent;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/e;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
