.class final Lcom/google/android/gms/b/n;
.super Lcom/google/android/gms/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/b/e",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/m",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/b/e;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/m;

    invoke-direct {v0}, Lcom/google/android/gms/b/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    return-void
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/a",
            "<TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/b/g;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/b/n;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/b;",
            ")",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/b/g;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/b/n;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/c;)Lcom/google/android/gms/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/c",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/b/g;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/b/n;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/c;)Lcom/google/android/gms/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/b/a",
            "<TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    new-instance v1, Lcom/google/android/gms/b/i;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/b/i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/l;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/n;->e()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/b/b;",
            ")",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    new-instance v1, Lcom/google/android/gms/b/j;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/b/j;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/l;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/n;->e()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/c;)Lcom/google/android/gms/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/b/c",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/b/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    new-instance v1, Lcom/google/android/gms/b/k;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/b/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/b/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/l;)V

    invoke-direct {p0}, Lcom/google/android/gms/b/n;->e()V

    return-object p0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string/jumbo v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/b/n;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/b/n;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/b/n;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/b/n;->c:Z

    const-string/jumbo v2, "Task is not yet complete"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/b/d;

    iget-object v2, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/b/d;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/b/n;->d:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/b/n;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/b/n;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/b/n;->b:Lcom/google/android/gms/b/m;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/b/m;->a(Lcom/google/android/gms/b/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/b/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/n;->e:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
