.class public final Lcom/piriform/ccleaner/t/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 95
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 97
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Lcom/piriform/ccleaner/t/u$b;)Lcom/piriform/ccleaner/t/u;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/piriform/ccleaner/t/u;

    sget-object v1, Lcom/piriform/ccleaner/t/u$a;->b:Lcom/piriform/ccleaner/t/u$a;

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/t/u;-><init>(Lcom/piriform/ccleaner/t/u$b;Lcom/piriform/ccleaner/t/u$a;)V

    .line 85
    new-instance v1, Lcom/piriform/ccleaner/t/x;

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->o:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 1136
    iput-object v1, v0, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 87
    new-instance v1, Lcom/piriform/ccleaner/t/x;

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->n:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x;)V

    .line 89
    new-instance v1, Lcom/piriform/ccleaner/t/x;

    sget-object v2, Lcom/piriform/ccleaner/t/x$b;->m:Lcom/piriform/ccleaner/t/x$b;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/t/x;-><init>(Lcom/piriform/ccleaner/t/x$b;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x;)V

    .line 91
    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/f/d;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/s/k;",
            "Lcom/piriform/ccleaner/f/d;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/d;->a()Z

    move-result v5

    .line 38
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/d;->b()Z

    move-result v3

    .line 40
    const-string/jumbo v2, ""

    .line 41
    const-wide/16 v0, 0x0

    .line 43
    if-eqz v3, :cond_6

    .line 44
    invoke-interface {p1}, Lcom/piriform/ccleaner/f/d;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/piriform/ccleaner/t/w;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 47
    if-eqz v5, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    .line 49
    :goto_0
    invoke-static {v0}, Lcom/piriform/ccleaner/t/w;->a(Lcom/piriform/ccleaner/t/u$b;)Lcom/piriform/ccleaner/t/u;

    move-result-object v0

    .line 50
    const-string/jumbo v6, "path"

    invoke-virtual {v0, v6, v1}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_1
    invoke-interface {p0}, Lcom/piriform/ccleaner/s/k;->a()Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/l;

    .line 1013
    iget-object v0, v0, Lcom/piriform/ccleaner/s/l;->a:Ljava/lang/String;

    .line 57
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 47
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 62
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-static {v0}, Lcom/piriform/ccleaner/t/w;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    cmp-long v7, v8, v2

    if-eqz v7, :cond_2

    .line 66
    :cond_3
    sget-object v7, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    invoke-static {v7}, Lcom/piriform/ccleaner/t/w;->a(Lcom/piriform/ccleaner/t/u$b;)Lcom/piriform/ccleaner/t/u;

    move-result-object v7

    .line 67
    const-string/jumbo v8, "path"

    invoke-virtual {v7, v8, v0}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_4
    if-eqz v5, :cond_5

    .line 75
    sget-object v0, Lcom/piriform/ccleaner/t/u$b;->f:Lcom/piriform/ccleaner/t/u$b;

    invoke-static {v0}, Lcom/piriform/ccleaner/t/w;->a(Lcom/piriform/ccleaner/t/u$b;)Lcom/piriform/ccleaner/t/u;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "path"

    invoke-interface {p1}, Lcom/piriform/ccleaner/f/d;->d()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_5
    return-object v4

    :cond_6
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    goto/16 :goto_1
.end method
