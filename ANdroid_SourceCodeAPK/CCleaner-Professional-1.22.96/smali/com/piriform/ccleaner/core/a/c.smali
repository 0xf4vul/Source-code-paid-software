.class public final Lcom/piriform/ccleaner/core/a/c;
.super Lcom/piriform/ccleaner/core/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/piriform/ccleaner/core/data/l",
        "<TT;>;:",
        "Ljava/lang/Comparable",
        "<TC;>;T:",
        "Ljava/lang/Enum",
        "<TT;>;:",
        "Lcom/piriform/ccleaner/core/f",
        "<*TT;>;>",
        "Lcom/piriform/ccleaner/core/a/k;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/ArrayList",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/piriform/ccleaner/core/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/piriform/ccleaner/core/a/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/piriform/ccleaner/core/a/n;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/f;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/c;->f:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/c;->e:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/c;->g:Ljava/lang/Class;

    .line 1281
    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/k;->a:Lcom/piriform/ccleaner/core/a/e;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .line 2059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/piriform/ccleaner/core/data/l;

    .line 29
    if-eqz p2, :cond_1

    .line 30
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(Lcom/piriform/ccleaner/core/a/b;Z)V

    .line 39
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/piriform/ccleaner/core/a/c;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/piriform/ccleaner/core/a/k;->a(Ljava/util/List;Z)V

    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/c;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 45
    iget-object v4, p0, Lcom/piriform/ccleaner/core/a/c;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 46
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/core/data/l;

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method
