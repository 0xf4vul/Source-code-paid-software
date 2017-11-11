.class final Lcom/piriform/ccleaner/b/a/e$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/b/a/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/a/e;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/piriform/ccleaner/b/a/e$1;->a:Lcom/piriform/ccleaner/b/a/e;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 32
    check-cast p1, Ljava/util/Map;

    .line 1035
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/e$1;->a:Lcom/piriform/ccleaner/b/a/e;

    .line 2014
    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/e;->d:Lcom/google/firebase/b/a;

    .line 2015
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2016
    const v1, 0x7f060002

    const-string/jumbo v2, "avast.burger"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/b/a;->a(ILjava/lang/String;)V

    .line 1036
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/e$1;->a:Lcom/piriform/ccleaner/b/a/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/e$1;->a:Lcom/piriform/ccleaner/b/a/e;

    invoke-static {v1}, Lcom/piriform/ccleaner/b/a/e;->a(Lcom/piriform/ccleaner/b/a/e;)Lcom/piriform/ccleaner/b/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/b/a/e;->a(Ljava/lang/Object;)V

    .line 32
    return-void

    .line 2018
    :cond_0
    const-string/jumbo v1, "avast.burger"

    .line 3000
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/b/a;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    goto :goto_0
.end method
