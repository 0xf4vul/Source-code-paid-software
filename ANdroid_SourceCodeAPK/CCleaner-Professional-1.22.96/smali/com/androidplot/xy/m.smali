.class public abstract Lcom/androidplot/xy/m;
.super Lcom/androidplot/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XYFormatterType:",
        "Lcom/androidplot/xy/l;",
        ">",
        "Lcom/androidplot/b/j",
        "<",
        "Lcom/androidplot/xy/XYPlot;",
        "Lcom/androidplot/xy/k;",
        "TXYFormatterType;>;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/androidplot/xy/j;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 1043
    iget-object v0, p0, Lcom/androidplot/b/j;->a:Lcom/androidplot/Plot;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/Plot;->a(Ljava/lang/Class;)Lcom/androidplot/b/i;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, v0, Lcom/androidplot/b/i;->b:Ljava/util/LinkedList;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/androidplot/xy/l;

    .line 2045
    iget-object v0, v2, Lcom/androidplot/xy/l;->a:Lcom/androidplot/c/h;

    .line 43
    invoke-interface {v0}, Lcom/androidplot/c/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/androidplot/xy/c;

    .line 2053
    iget-object v0, v2, Lcom/androidplot/xy/l;->a:Lcom/androidplot/c/h;

    invoke-virtual {v0, v1}, Lcom/androidplot/c/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/xy/j;

    .line 2175
    iget-object v1, v1, Lcom/androidplot/xy/c;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_1
    return-object v3
.end method
