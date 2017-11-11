.class public Lcom/piriform/ccleaner/core/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/core/a/e;

.field final b:Lcom/piriform/ccleaner/core/a/d;

.field public c:Z

.field d:Lcom/piriform/ccleaner/core/a/f;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/core/a/e;Lcom/piriform/ccleaner/core/a/f;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/piriform/ccleaner/core/a/d;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/a/d;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/core/a/k;->c:Z

    .line 44
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/k;->a:Lcom/piriform/ccleaner/core/a/e;

    .line 45
    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/k;->d:Lcom/piriform/ccleaner/core/a/f;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/core/a/f;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/piriform/ccleaner/core/a/e;->a:Lcom/piriform/ccleaner/core/a/e;

    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/core/a/k;-><init>(Lcom/piriform/ccleaner/core/a/e;Lcom/piriform/ccleaner/core/a/f;)V

    .line 38
    return-void
.end method

.method static a()Lcom/piriform/ccleaner/b/e;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 3

    .prologue
    .line 115
    const-string/jumbo v0, "\nSpaceConsumingResource:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v0, "\n\tSpaceConsumingResource ItemView(Header or Only SpaceConsumingResource) ItemViewType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1071
    iget-object v1, p1, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 2050
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v0, "\n\tSpaceConsumingResource Children Count: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/piriform/ccleaner/core/a/o;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2075
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 120
    const-string/jumbo v2, "\n\t\tSpaceConsumingResource has child with ItemViewType: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3050
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->b:Lcom/piriform/ccleaner/core/a/g;

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/piriform/ccleaner/core/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/core/a/d;->a(I)Lcom/piriform/ccleaner/core/a/o;

    move-result-object v0

    .line 5071
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 195
    return-object v0
.end method

.method public final a(II)Lcom/piriform/ccleaner/core/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/core/a/d;->a(I)Lcom/piriform/ccleaner/core/a/o;

    move-result-object v0

    .line 5079
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 203
    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/a/c;)Lcom/piriform/ccleaner/ui/b/n;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 5142
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/b/n;

    .line 241
    return-object v0
.end method

.method final a(ILcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;",
            "Lcom/piriform/ccleaner/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 1020
    invoke-virtual {v0, p2}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 66
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1020
    goto :goto_0

    .line 70
    :cond_1
    if-ne p1, v2, :cond_2

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 1033
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    new-instance v2, Lcom/piriform/ccleaner/core/a/o;

    invoke-direct {v2, p2}, Lcom/piriform/ccleaner/core/a/o;-><init>(Lcom/piriform/ccleaner/core/a/b;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-virtual {v0, p2, p3}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    .line 76
    :goto_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/k;->c()V

    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 1038
    iget-object v2, v0, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    new-instance v3, Lcom/piriform/ccleaner/core/a/o;

    invoke-direct {v3, p2}, Lcom/piriform/ccleaner/core/a/o;-><init>(Lcom/piriform/ccleaner/core/a/b;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1039
    invoke-virtual {v0, p2, p3}, Lcom/piriform/ccleaner/core/a/d;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/a/c;)V

    goto :goto_2
.end method

.method public a(Lcom/piriform/ccleaner/core/a/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 268
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/v/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 255
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/o;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9075
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/b;

    .line 257
    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/core/a/b;->a(Z)V

    goto :goto_1

    .line 10071
    :cond_1
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 261
    invoke-interface {p1, v0}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/core/a/b;->a(Z)V

    goto :goto_0

    .line 264
    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v3, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 6114
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lcom/piriform/ccleaner/core/a/d;->a()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 6115
    iget-object v0, v3, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 7071
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 8059
    iget-object v1, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 6116
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6117
    iget-object v0, v3, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6114
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 8083
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8084
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/core/a/b;

    .line 9059
    iget-object v6, v1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 8085
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 8086
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8089
    :cond_2
    iget-object v1, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8090
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/o;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6123
    :cond_3
    if-eqz p2, :cond_4

    .line 6124
    invoke-virtual {v3}, Lcom/piriform/ccleaner/core/a/d;->b()V

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/a/k;->c()V

    .line 247
    return-void
.end method

.method final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    const-string/jumbo v0, "\nDetails of CleanableResources Object:\nCleanableResources size (amount of cleanableResources inside CleanableResources object): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 106
    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/a/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/d;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 108
    invoke-static {v1, v0}, Lcom/piriform/ccleaner/core/a/k;->a(Ljava/lang/StringBuilder;Lcom/piriform/ccleaner/core/a/o;)V

    goto :goto_0

    .line 110
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->a:Lcom/piriform/ccleaner/core/a/e;

    invoke-interface {v0}, Lcom/piriform/ccleaner/core/a/e;->a()V

    .line 146
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/a/b",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/k;->b:Lcom/piriform/ccleaner/core/a/d;

    .line 3095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3097
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/a/o;

    .line 4071
    iget-object v3, v0, Lcom/piriform/ccleaner/core/a/o;->b:Lcom/piriform/ccleaner/core/a/b;

    .line 5038
    iget-boolean v4, v3, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 3099
    if-eqz v4, :cond_0

    .line 3100
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_0
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/o;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 149
    :cond_1
    return-object v1
.end method
