.class public final Lcom/piriform/ccleaner/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/n;


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/i;

.field private final b:Lcom/piriform/ccleaner/f/l;

.field private final c:Lcom/piriform/ccleaner/core/b/g;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/l;Lcom/piriform/ccleaner/core/b/g;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/f/g;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/f/g;-><init>(Lcom/piriform/ccleaner/f/l;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/f/f;->a:Lcom/piriform/ccleaner/f/i;

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/f/f;->b:Lcom/piriform/ccleaner/f/l;

    .line 18
    iput-object p2, p0, Lcom/piriform/ccleaner/f/f;->c:Lcom/piriform/ccleaner/core/b/g;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/piriform/ccleaner/f/n$a;Z)Lcom/piriform/ccleaner/f/h;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;",
            "Lcom/piriform/ccleaner/f/n$a;",
            "Z)",
            "Lcom/piriform/ccleaner/f/h;"
        }
    .end annotation

    .prologue
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 29
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v0

    move-wide v4, v2

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 33
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-interface {p2, v1, v8}, Lcom/piriform/ccleaner/f/n$a;->c(II)V

    .line 35
    iget-object v1, p0, Lcom/piriform/ccleaner/f/f;->b:Lcom/piriform/ccleaner/f/l;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/f/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 36
    goto :goto_0

    .line 1265
    :cond_0
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 39
    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/piriform/ccleaner/f/f;->a:Lcom/piriform/ccleaner/f/i;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/f/j;->a(Lcom/piriform/ccleaner/f/i;)Lcom/piriform/ccleaner/f/h;

    move-result-object v3

    .line 2037
    iget-wide v0, v3, Lcom/piriform/ccleaner/f/h;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-long/2addr v0, v4

    .line 2041
    :try_start_1
    iget-object v4, v3, Lcom/piriform/ccleaner/f/h;->c:Ljava/util/List;

    .line 42
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2065
    iget-object v3, v3, Lcom/piriform/ccleaner/f/h;->d:Ljava/util/List;

    .line 43
    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    move v1, v2

    .line 44
    goto :goto_0

    .line 2284
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 3231
    iget-wide v10, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 46
    add-long/2addr v4, v10

    .line 48
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    if-eqz p3, :cond_2

    .line 50
    iget-object v1, p0, Lcom/piriform/ccleaner/f/f;->c:Lcom/piriform/ccleaner/core/b/g;

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/core/b/g;->a(Lcom/piriform/ccleaner/f/j;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-wide v0, v4

    move-wide v4, v0

    move v1, v2

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    move-wide v0, v4

    :goto_1
    move-wide v4, v0

    move v1, v2

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Lcom/piriform/ccleaner/f/h;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/piriform/ccleaner/f/h;-><init>(JLjava/util/List;Ljava/util/List;)V

    return-object v0

    .line 57
    :catch_1
    move-exception v3

    goto :goto_1
.end method
