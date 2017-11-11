.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/storageanalyzer/frontend/o;


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
    .line 248
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/g/d;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;->c(Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerFileCategoryActivity;)Lcom/piriform/ccleaner/g/a;

    move-result-object v0

    .line 1197
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3120
    iget-object v2, p1, Lcom/piriform/ccleaner/g/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/piriform/ccleaner/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2193
    invoke-static {v2}, Lcom/piriform/ccleaner/g/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/g/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    .line 252
    return-void
.end method
