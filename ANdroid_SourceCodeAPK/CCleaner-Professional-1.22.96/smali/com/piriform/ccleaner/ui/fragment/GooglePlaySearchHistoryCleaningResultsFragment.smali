.class public Lcom/piriform/ccleaner/ui/fragment/GooglePlaySearchHistoryCleaningResultsFragment;
.super Lcom/piriform/ccleaner/ui/fragment/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/ui/fragment/t",
        "<",
        "Lcom/piriform/ccleaner/a/a/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/fragment/t;-><init>(Lcom/piriform/ccleaner/a/h;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/piriform/ccleaner/a/a/a;)V
    .locals 5

    .prologue
    .line 12
    check-cast p1, Lcom/piriform/ccleaner/a/a/s;

    .line 1098
    iget-object v0, p1, Lcom/piriform/ccleaner/a/a/s;->i:Ljava/util/List;

    .line 1021
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/k;

    .line 1022
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/GooglePlaySearchHistoryCleaningResultsFragment;->b:Lcom/piriform/ccleaner/core/a/h;

    new-instance v3, Lcom/piriform/ccleaner/ui/b/z;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/piriform/ccleaner/ui/b/z;-><init>(Lcom/piriform/ccleaner/core/data/k;Z)V

    sget-object v0, Lcom/piriform/ccleaner/a/c;->a:Lcom/piriform/ccleaner/a/c;

    invoke-virtual {v2, v3, v0}, Lcom/piriform/ccleaner/core/a/h;->b(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method
