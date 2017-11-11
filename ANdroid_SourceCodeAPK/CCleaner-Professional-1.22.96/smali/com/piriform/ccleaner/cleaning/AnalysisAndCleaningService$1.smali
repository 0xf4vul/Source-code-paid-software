.class final Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/c/b;

.field final synthetic b:Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;Lcom/piriform/ccleaner/c/b;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;->b:Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;->a:Lcom/piriform/ccleaner/c/b;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Failed to find scheduled clean"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 212
    check-cast p1, Lcom/piriform/ccleaner/l/c;

    .line 1215
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;->a:Lcom/piriform/ccleaner/c/b;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/c/b;->a(Ljava/lang/Object;)V

    .line 212
    return-void
.end method
