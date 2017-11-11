.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/frontend/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/q;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onError getting StorageAnalysisResults"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    const-string/jumbo v1, "Error running Storage Analysis"

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 1017
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 38
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;->f()V

    .line 39
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 1028
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 2017
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 1028
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;->a(Lcom/piriform/ccleaner/storageanalyzer/a;)V

    .line 2084
    iget-boolean v0, p1, Lcom/piriform/ccleaner/storageanalyzer/a;->c:Z

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$1;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/q;

    .line 3017
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/q;->d:Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;

    .line 1030
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/q$a;->g()V

    .line 25
    :cond_0
    return-void
.end method
