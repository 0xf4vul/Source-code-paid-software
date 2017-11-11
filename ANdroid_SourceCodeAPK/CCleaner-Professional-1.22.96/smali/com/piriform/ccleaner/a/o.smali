.class public final Lcom/piriform/ccleaner/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/d;


# instance fields
.field private final a:Lcom/piriform/ccleaner/s/h;

.field private final b:Lcom/piriform/ccleaner/n/a;

.field private final c:Lcom/piriform/ccleaner/a/b;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/piriform/ccleaner/a/o;->a:Lcom/piriform/ccleaner/s/h;

    .line 24
    iput-object p3, p0, Lcom/piriform/ccleaner/a/o;->b:Lcom/piriform/ccleaner/n/a;

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/a/o;->c:Lcom/piriform/ccleaner/a/b;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/o;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 33
    sget-object v3, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/piriform/ccleaner/a/o;->b:Lcom/piriform/ccleaner/n/a;

    sget-object v4, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_2
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/a/o;->c:Lcom/piriform/ccleaner/a/b;

    .line 1048
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    sget-object v2, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    sget-object v2, Lcom/piriform/ccleaner/a/h;->c:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    sget-object v2, Lcom/piriform/ccleaner/a/h;->g:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    sget-object v2, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    sget-object v2, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    sget-object v2, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v2, Lcom/piriform/ccleaner/a/h;->v:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    sget-object v2, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    sget-object v2, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    sget-object v2, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-object v2, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v2, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-object v2, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    sget-object v2, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v2, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    iget-object v2, p0, Lcom/piriform/ccleaner/a/o;->a:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    sget-object v2, Lcom/piriform/ccleaner/a/h;->t:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/b;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
