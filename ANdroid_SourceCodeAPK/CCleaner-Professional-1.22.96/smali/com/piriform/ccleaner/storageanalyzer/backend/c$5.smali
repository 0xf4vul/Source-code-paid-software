.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/core/a/p",
        "<",
        "Lcom/piriform/ccleaner/storageanalyzer/a;",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$5;->a:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 96
    check-cast p1, Lcom/piriform/ccleaner/core/a/p;

    .line 2014
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/p;->a:Ljava/lang/Object;

    .line 1099
    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/a;

    .line 2018
    iget-object v1, p1, Lcom/piriform/ccleaner/core/a/p;->b:Ljava/lang/Object;

    .line 1100
    check-cast v1, Ljava/util/List;

    .line 2054
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/g/d;

    .line 2060
    iget-object v2, v0, Lcom/piriform/ccleaner/storageanalyzer/a;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/f;->a(Lcom/piriform/ccleaner/g/d;)Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/storageanalyzer/c;

    .line 2061
    if-eqz v2, :cond_0

    .line 2062
    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/storageanalyzer/c;->a(Lcom/piriform/ccleaner/g/d;)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method
