.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/storageanalyzer/f;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->n:Lcom/piriform/ccleaner/b/a;

    invoke-static {p1}, Lcom/piriform/ccleaner/b/b;->c(Lcom/piriform/ccleaner/storageanalyzer/f;)Lcom/piriform/ccleaner/b/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;->m:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 1077
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->g:Lcom/piriform/ccleaner/storageanalyzer/frontend/g;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/g;->a(Lcom/piriform/ccleaner/storageanalyzer/f;)V

    .line 45
    return-void
.end method
