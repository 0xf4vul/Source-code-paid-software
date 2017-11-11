.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


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
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/frontend/m;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onError getting StorageAnalysisResults"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    const-string/jumbo v1, "Error running Storage Analysis"

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 1025
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 64
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->f()V

    .line 65
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/piriform/ccleaner/storageanalyzer/d;

    .line 1057
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$2;->a:Lcom/piriform/ccleaner/storageanalyzer/frontend/m;

    .line 2025
    iget-object v0, v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/m;->h:Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;

    .line 1057
    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/frontend/m$a;->a(Lcom/piriform/ccleaner/storageanalyzer/d;)V

    .line 54
    return-void
.end method
