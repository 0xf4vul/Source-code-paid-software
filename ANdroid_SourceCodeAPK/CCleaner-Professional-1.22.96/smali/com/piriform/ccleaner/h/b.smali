.class public final Lcom/piriform/ccleaner/h/b;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/v",
        "<",
        "Lcom/piriform/ccleaner/l/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-static {}, Lcom/piriform/ccleaner/l/d;->a()Lcom/piriform/ccleaner/l/d;

    move-result-object v0

    .line 1025
    invoke-virtual {p1}, Lcom/google/gson/c/a;->a()V

    .line 1026
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    invoke-virtual {p1}, Lcom/google/gson/c/a;->n()I

    move-result v1

    invoke-static {v1}, Lcom/piriform/ccleaner/scheduler/b;->a(I)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/l/d;->a(Lcom/piriform/ccleaner/scheduler/b;)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/c/a;->b()V

    .line 11
    return-object v0
.end method

.method public final synthetic a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p2, Lcom/piriform/ccleaner/l/d;

    .line 2015
    invoke-virtual {p1}, Lcom/google/gson/c/c;->a()Lcom/google/gson/c/c;

    .line 2076
    iget-object v0, p2, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    .line 2016
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/b;

    .line 2112
    iget v0, v0, Lcom/piriform/ccleaner/scheduler/b;->l:I

    .line 2017
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/c/c;->a(J)Lcom/google/gson/c/c;

    goto :goto_0

    .line 2019
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/c/c;->b()Lcom/google/gson/c/c;

    .line 11
    return-void
.end method
