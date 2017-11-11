.class public final Lcom/piriform/ccleaner/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/k;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/s/r;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/piriform/ccleaner/f/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/h;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/s/b;->a:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/piriform/ccleaner/s/b;->b:Lcom/piriform/ccleaner/f/m;

    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/s/b;->a:Ljava/util/List;

    new-instance v1, Lcom/piriform/ccleaner/s/m;

    invoke-direct {v1}, Lcom/piriform/ccleaner/s/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/s/b;->a:Ljava/util/List;

    new-instance v1, Lcom/piriform/ccleaner/s/n;

    invoke-direct {p0}, Lcom/piriform/ccleaner/s/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p3, v2}, Lcom/piriform/ccleaner/s/n;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/s/h;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/l;

    .line 64
    iget-object v3, p0, Lcom/piriform/ccleaner/s/b;->b:Lcom/piriform/ccleaner/f/m;

    .line 2017
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/piriform/ccleaner/s/l;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-interface {v3, v4}, Lcom/piriform/ccleaner/f/m;->c(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    return-object v1
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/s/b;->b:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/m;->c()Lcom/piriform/ccleaner/f/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/TreeSet;

    .line 1073
    new-instance v0, Lcom/piriform/ccleaner/s/b$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/s/b$1;-><init>(Lcom/piriform/ccleaner/s/b;)V

    .line 54
    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/s/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/r;

    .line 56
    invoke-interface {v0}, Lcom/piriform/ccleaner/s/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/s/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    new-instance v1, Lcom/piriform/ccleaner/s/l;

    invoke-direct {p0}, Lcom/piriform/ccleaner/s/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/s/l;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-direct {p0}, Lcom/piriform/ccleaner/s/b;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/s/b;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
