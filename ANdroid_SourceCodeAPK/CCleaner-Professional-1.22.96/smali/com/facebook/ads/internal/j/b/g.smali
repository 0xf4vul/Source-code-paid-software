.class final Lcom/facebook/ads/internal/j/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/j/b/g$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile b:Lcom/facebook/ads/internal/j/b/e;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/j/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/ads/internal/j/b/b;

.field private final f:Lcom/facebook/ads/internal/j/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/j/b/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/ads/internal/j/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/facebook/ads/internal/j/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j/b/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->f:Lcom/facebook/ads/internal/j/b/c;

    new-instance v0, Lcom/facebook/ads/internal/j/b/g$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/j/b/g;->c:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/internal/j/b/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->e:Lcom/facebook/ads/internal/j/b/b;

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 5

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->b:Lcom/facebook/ads/internal/j/b/e;

    if-nez v0, :cond_0

    .line 1000
    new-instance v1, Lcom/facebook/ads/internal/j/b/h;

    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->d:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/j/b/h;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/facebook/ads/internal/j/b/a/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->f:Lcom/facebook/ads/internal/j/b/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/j/b/g;->d:Ljava/lang/String;

    .line 2000
    iget-object v4, v0, Lcom/facebook/ads/internal/j/b/c;->b:Lcom/facebook/ads/internal/j/b/a/c;

    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/j/b/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v0, v0, Lcom/facebook/ads/internal/j/b/c;->a:Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->f:Lcom/facebook/ads/internal/j/b/c;

    iget-object v0, v0, Lcom/facebook/ads/internal/j/b/c;->c:Lcom/facebook/ads/internal/j/b/a/a;

    invoke-direct {v2, v4, v0}, Lcom/facebook/ads/internal/j/b/a/b;-><init>(Ljava/io/File;Lcom/facebook/ads/internal/j/b/a/a;)V

    new-instance v0, Lcom/facebook/ads/internal/j/b/e;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/j/b/e;-><init>(Lcom/facebook/ads/internal/j/b/h;Lcom/facebook/ads/internal/j/b/a/b;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/j/b/g;->e:Lcom/facebook/ads/internal/j/b/b;

    .line 3000
    iput-object v1, v0, Lcom/facebook/ads/internal/j/b/e;->c:Lcom/facebook/ads/internal/j/b/b;

    .line 0
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->b:Lcom/facebook/ads/internal/j/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->b:Lcom/facebook/ads/internal/j/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->b:Lcom/facebook/ads/internal/j/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/j/b/g;->b:Lcom/facebook/ads/internal/j/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
