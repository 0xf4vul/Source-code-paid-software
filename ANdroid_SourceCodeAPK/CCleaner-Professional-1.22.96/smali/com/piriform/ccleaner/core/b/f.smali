.class public final Lcom/piriform/ccleaner/core/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/piriform/ccleaner/core/b/f;->a:[Ljava/io/File;

    return-void
.end method

.method public static a(Ljava/io/File;Z)Lcom/piriform/ccleaner/f/h;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/f/h;->a:Lcom/piriform/ccleaner/f/h;

    .line 71
    :goto_0
    return-object v0

    .line 44
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 45
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 47
    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 49
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 50
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-static {v0, v9}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 52
    array-length v6, v5

    move v0, v3

    :goto_1
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    .line 53
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 54
    invoke-interface {v1, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 62
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2079
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2121
    invoke-static {v0, v9}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 2079
    array-length v1, v1

    if-nez v1, :cond_7

    move v1, v2

    .line 2075
    :goto_3
    if-eqz v1, :cond_8

    if-nez p1, :cond_6

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    move v1, v2

    .line 63
    :goto_4
    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 65
    if-eqz v1, :cond_5

    .line 66
    invoke-static {v0}, Lcom/piriform/ccleaner/f/j;->a(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move v1, v3

    .line 2079
    goto :goto_3

    :cond_8
    move v1, v3

    .line 2075
    goto :goto_4

    .line 71
    :cond_9
    invoke-static {v5}, Lcom/piriform/ccleaner/f/h;->a(Ljava/util/List;)Lcom/piriform/ccleaner/f/h;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([Ljava/io/File;)[Lcom/piriform/ccleaner/f/j;
    .locals 3

    .prologue
    .line 113
    array-length v0, p0

    new-array v1, v0, [Lcom/piriform/ccleaner/f/j;

    .line 114
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 115
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/piriform/ccleaner/f/j;->b(Ljava/io/File;)Lcom/piriform/ccleaner/f/j;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/core/b/f;->a:[Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 104
    :try_start_0
    invoke-static {p0}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/core/b/f;->a(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
