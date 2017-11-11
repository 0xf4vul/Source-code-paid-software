.class final Lcom/evernote/android/job/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/d$a;
    }
.end annotation


# static fields
.field private static final a:Ld/a/a/a/c;

.field private static final b:J


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/evernote/android/job/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/evernote/android/job/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/evernote/android/job/a/d;

    const-string/jumbo v1, "JobExecutor"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/d;->a:Ld/a/a/a/c;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/d;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/evernote/android/job/g$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/d;->c:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/android/job/d;->e:Landroid/util/LruCache;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/d;->f:Ljava/util/Set;

    .line 70
    return-void
.end method

.method private declared-synchronized a(Lcom/evernote/android/job/a;)V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    .line 10220
    :try_start_0
    iget-object v0, p1, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 10374
    iget-object v0, v0, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 11134
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 11474
    iget v0, v0, Lcom/evernote/android/job/i$b;->a:I

    .line 129
    iget-object v1, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    iget-object v1, p0, Lcom/evernote/android/job/d;->e:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/evernote/android/job/d;->a(Lcom/evernote/android/job/a;)V

    return-void
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/evernote/android/job/d;->b:J

    return-wide v0
.end method

.method static synthetic c()Ld/a/a/a/c;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/evernote/android/job/d;->a:Ld/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(I)Lcom/evernote/android/job/a;
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/evernote/android/job/d;->e:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/d;->a(Ljava/lang/String;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    .line 104
    if-eqz p1, :cond_0

    .line 6220
    iget-object v3, v0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 6382
    iget-object v3, v3, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 7142
    iget-object v3, v3, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 7474
    iget-object v3, v3, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/evernote/android/job/d;->e:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/a;

    .line 111
    if-eqz p1, :cond_4

    .line 8220
    iget-object v3, v0, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 8382
    iget-object v3, v3, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 9142
    iget-object v3, v3, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 9474
    iget-object v3, v3, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_5
    monitor-exit p0

    return-object v2
.end method

.method public final declared-synchronized a(Landroid/content/Context;Lcom/evernote/android/job/i;Lcom/evernote/android/job/a;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evernote/android/job/i;",
            "Lcom/evernote/android/job/a;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/evernote/android/job/a$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d;->f:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    if-nez p3, :cond_0

    .line 76
    sget-object v0, Lcom/evernote/android/job/d;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "JobCreator returned null for tag %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1142
    iget-object v4, p2, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 1474
    iget-object v4, v4, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 76
    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/4 v0, 0x0

    .line 88
    :goto_0
    monitor-exit p0

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/evernote/android/job/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "Job for tag %s was already run, a creator should always create a new Job instance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2142
    iget-object v5, p2, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-object v5, v5, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 80
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3224
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p3, Lcom/evernote/android/job/a;->f:Ljava/lang/ref/WeakReference;

    .line 3225
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p3, Lcom/evernote/android/job/a;->g:Landroid/content/Context;

    .line 4211
    new-instance v0, Lcom/evernote/android/job/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/evernote/android/job/a$a;-><init>(Lcom/evernote/android/job/i;B)V

    iput-object v0, p3, Lcom/evernote/android/job/a;->e:Lcom/evernote/android/job/a$a;

    .line 85
    sget-object v0, Lcom/evernote/android/job/d;->a:Ld/a/a/a/c;

    const-string/jumbo v1, "Executing %s, context %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ld/a/a/a/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/evernote/android/job/d;->d:Landroid/util/SparseArray;

    .line 5134
    iget-object v1, p2, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget v1, v1, Lcom/evernote/android/job/i$b;->a:I

    .line 87
    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/evernote/android/job/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/evernote/android/job/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/evernote/android/job/d$a;-><init>(Lcom/evernote/android/job/d;Lcom/evernote/android/job/a;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/evernote/android/job/i;)V
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/evernote/android/job/i;)Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
