.class public final Lcom/google/android/gms/internal/o;
.super Lcom/google/android/gms/internal/g;


# instance fields
.field final d:Lcom/google/android/gms/common/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/internal/aga",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/x;


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/g;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->d:Lcom/google/android/gms/common/util/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/x;

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/x;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/internal/o;

    if-eq v2, p0, :cond_0

    iput-object p0, v0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/internal/o;

    iget-object v2, v0, Lcom/google/android/gms/internal/x;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v0, v0, Lcom/google/android/gms/internal/x;->h:Ljava/util/Set;

    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/internal/o;->d:Lcom/google/android/gms/common/util/a;

    .line 1000
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/x;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/g;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/x;

    .line 3000
    sget-object v1, Lcom/google/android/gms/internal/x;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/internal/o;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/x;->g:Lcom/google/android/gms/internal/o;

    iget-object v0, v0, Lcom/google/android/gms/internal/x;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/o;->f:Lcom/google/android/gms/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/x;->b()V

    return-void
.end method
