.class final Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/storageanalyzer/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/e",
        "<-",
        "Lcom/piriform/ccleaner/g/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/g/b;

.field final synthetic b:Lcom/piriform/ccleaner/g/e;

.field final synthetic c:Lcom/piriform/ccleaner/storageanalyzer/backend/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/storageanalyzer/backend/c;Lcom/piriform/ccleaner/g/b;Lcom/piriform/ccleaner/g/e;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->c:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    iput-object p2, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->a:Lcom/piriform/ccleaner/g/b;

    iput-object p3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->b:Lcom/piriform/ccleaner/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    check-cast p1, Lf/e;

    .line 1256
    :try_start_0
    iget-object v3, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->a:Lcom/piriform/ccleaner/g/b;

    iget-object v4, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->b:Lcom/piriform/ccleaner/g/e;

    .line 2036
    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 2025
    :goto_0
    if-nez v2, :cond_1

    .line 1256
    :goto_1
    if-eqz v0, :cond_5

    .line 1257
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->b:Lcom/piriform/ccleaner/g/e;

    .line 3044
    iget-object v0, v0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    .line 1257
    invoke-interface {p1, v0}, Lf/e;->onNext(Ljava/lang/Object;)V

    .line 1264
    :goto_2
    return-void

    :cond_0
    move v2, v0

    .line 2036
    goto :goto_0

    .line 2029
    :cond_1
    iget-object v0, v3, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 2042
    sget-object v2, Lcom/piriform/ccleaner/g/b;->a:Ljava/io/File;

    if-ne v0, v2, :cond_3

    .line 2052
    iget-object v0, v3, Lcom/piriform/ccleaner/g/b;->d:Ljava/io/File;

    invoke-interface {v4}, Lcom/piriform/ccleaner/g/c;->a()V

    .line 2053
    iget-object v0, v3, Lcom/piriform/ccleaner/g/b;->b:Lcom/piriform/ccleaner/f/m;

    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->d:Ljava/io/File;

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/f/m;->j(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v3, Lcom/piriform/ccleaner/g/b;->d:Ljava/io/File;

    :cond_2
    :goto_3
    move v0, v1

    .line 2031
    goto :goto_1

    .line 2044
    :cond_3
    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->b:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/f/m;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2045
    invoke-interface {v4, v0}, Lcom/piriform/ccleaner/g/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    invoke-interface {p1, v0}, Lf/e;->onError(Ljava/lang/Throwable;)V

    .line 1263
    iget-object v1, p0, Lcom/piriform/ccleaner/storageanalyzer/backend/c$3;->c:Lcom/piriform/ccleaner/storageanalyzer/backend/c;

    invoke-static {v1}, Lcom/piriform/ccleaner/storageanalyzer/backend/c;->f(Lcom/piriform/ccleaner/storageanalyzer/backend/c;)Lcom/piriform/ccleaner/b/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2046
    :cond_4
    :try_start_1
    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->b:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/f/m;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2057
    invoke-interface {v4, v0}, Lcom/piriform/ccleaner/g/c;->a(Ljava/lang/Object;)V

    .line 2058
    iput-object v0, v3, Lcom/piriform/ccleaner/g/b;->d:Ljava/io/File;

    .line 2060
    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    sget-object v4, Lcom/piriform/ccleaner/g/b;->a:Ljava/io/File;

    invoke-interface {v2, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 2061
    iget-object v2, v3, Lcom/piriform/ccleaner/g/b;->b:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/f/m;->h(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 2062
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_2

    .line 2063
    iget-object v4, v3, Lcom/piriform/ccleaner/g/b;->c:Ljava/util/Deque;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 2062
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1259
    :cond_5
    invoke-interface {p1}, Lf/e;->onCompleted()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
