.class public final Lcom/google/android/gms/internal/aab;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/eo;

.field private final h:Lcom/google/android/gms/internal/tz;

.field private final i:Lcom/google/android/gms/internal/abx;

.field private j:[Lcom/google/android/gms/internal/va;

.field private k:Lcom/google/android/gms/internal/qn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/tz;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/td;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/td;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/aab;-><init>(Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/abx;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/tz;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/aab;-><init>(Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/tz;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/abx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/aab;->g:Lcom/google/android/gms/internal/eo;

    iput-object p2, p0, Lcom/google/android/gms/internal/aab;->h:Lcom/google/android/gms/internal/tz;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/va;

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    iput-object p3, p0, Lcom/google/android/gms/internal/aab;->i:Lcom/google/android/gms/internal/abx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/za;)Lcom/google/android/gms/internal/za;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/za",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/za",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 0
    .line 4000
    iput-object p0, p1, Lcom/google/android/gms/internal/za;->f:Lcom/google/android/gms/internal/aab;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/aab;->b:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/za;->e:Ljava/lang/Integer;

    .line 0
    const-string/jumbo v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 7000
    iget-boolean v0, p1, Lcom/google/android/gms/internal/za;->g:Z

    .line 0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    monitor-enter v1

    .line 9000
    :try_start_2
    iget-object v2, p1, Lcom/google/android/gms/internal/za;->b:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/google/android/gms/internal/afh;->b:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/afh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public final a()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->k:Lcom/google/android/gms/internal/qn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->k:Lcom/google/android/gms/internal/qn;

    .line 2000
    iput-boolean v3, v0, Lcom/google/android/gms/internal/qn;->a:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qn;->interrupt()V

    :cond_0
    move v0, v1

    .line 1000
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    aget-object v2, v2, v0

    .line 3000
    iput-boolean v3, v2, Lcom/google/android/gms/internal/va;->a:Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/va;->interrupt()V

    .line 1000
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 0
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/qn;

    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/aab;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/aab;->g:Lcom/google/android/gms/internal/eo;

    iget-object v5, p0, Lcom/google/android/gms/internal/aab;->i:Lcom/google/android/gms/internal/abx;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/qn;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/abx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aab;->k:Lcom/google/android/gms/internal/qn;

    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->k:Lcom/google/android/gms/internal/qn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qn;->start()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/va;

    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/aab;->h:Lcom/google/android/gms/internal/tz;

    iget-object v4, p0, Lcom/google/android/gms/internal/aab;->g:Lcom/google/android/gms/internal/eo;

    iget-object v5, p0, Lcom/google/android/gms/internal/aab;->i:Lcom/google/android/gms/internal/abx;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/va;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/abx;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aab;->j:[Lcom/google/android/gms/internal/va;

    aput-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/va;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
