.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/e",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onError deleting files in StorageAnalyzer"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    const-string/jumbo v1, "Error running Storage Analysis"

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 1025
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 43
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->f()V

    .line 44
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 33
    check-cast p1, Ljava/util/List;

    .line 1048
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 2025
    iget-object v1, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->d:Lcom/piriform/ccleaner/core/b/g;

    .line 2034
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 2040
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/piriform/ccleaner/f/j;->b(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    .line 2035
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/core/b/g;->a(Lcom/piriform/ccleaner/f/j;)V

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 3025
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 1049
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->a(Ljava/util/List;)V

    .line 33
    return-void
.end method
