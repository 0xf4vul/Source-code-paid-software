.class public final Lcom/piriform/ccleaner/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/f/m;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    .line 15
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0}, Lcom/piriform/ccleaner/f/m;->b()Lcom/piriform/ccleaner/f/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/l;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    new-instance v1, Lcom/piriform/ccleaner/v/b$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/v/b$a;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/piriform/ccleaner/f/q;->a(Ljava/io/File;ZLcom/piriform/ccleaner/v/b;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/File;ZLcom/piriform/ccleaner/v/b;)Lcom/piriform/ccleaner/f/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z",
            "Lcom/piriform/ccleaner/v/b",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/piriform/ccleaner/f/j;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    invoke-interface {v8, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    const-wide/16 v4, 0x0

    move v7, v1

    move v6, v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 31
    invoke-interface {p3, v0}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/f/m;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move-wide v2, v4

    move v0, v7

    move v5, v1

    move v4, v6

    :goto_1
    if-ge v5, v10, :cond_6

    aget-object v6, v9, v5

    .line 33
    invoke-interface {p3, v6}, Lcom/piriform/ccleaner/v/b;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 34
    iget-object v7, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v7, v6}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/piriform/ccleaner/f/q;->a(Ljava/lang/String;)Z

    move-result v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 39
    :cond_1
    iget-object v11, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v11, v6}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    if-nez p2, :cond_2

    if-nez v7, :cond_3

    .line 42
    :cond_2
    iget-object v7, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v7, v6}, Lcom/piriform/ccleaner/f/m;->f(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 32
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 44
    :cond_4
    iget-object v7, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v7, v6}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v7, v6}, Lcom/piriform/ccleaner/f/m;->i(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 45
    invoke-interface {v8, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/piriform/ccleaner/f/q;->a:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/f/m;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/f/q;->a(Ljava/lang/String;)Z

    move-result v8

    .line 1045
    new-instance v1, Lcom/piriform/ccleaner/f/j;

    const/4 v3, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/piriform/ccleaner/f/j;-><init>(Ljava/io/File;ZJIIZ)V

    .line 53
    return-object v1

    :cond_6
    move v7, v0

    move v6, v4

    move-wide v4, v2

    goto :goto_0
.end method
