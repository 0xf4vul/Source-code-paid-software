.class public final Lcom/google/android/gms/internal/ru;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/lang/Object;

.field c:Lcom/google/android/gms/internal/rw;

.field d:Lcom/google/android/gms/internal/rz;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ru$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ru$1;-><init>(Lcom/google/android/gms/internal/ru;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ru;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ru;)V
    .locals 2

    .prologue
    .line 0
    .line 5000
    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rw;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rw;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rw;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru;->d:Lcom/google/android/gms/internal/rz;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/internal/adr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/adr;->b()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->d:Lcom/google/android/gms/internal/rz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->d:Lcom/google/android/gms/internal/rz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/rz;->a(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "Unable to call into cache service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/adf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdp;-><init>()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ru$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ru$3;-><init>(Lcom/google/android/gms/internal/ru;)V

    new-instance v2, Lcom/google/android/gms/internal/ru$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ru$4;-><init>(Lcom/google/android/gms/internal/ru;)V

    .line 4000
    new-instance v3, Lcom/google/android/gms/internal/rw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ru;->e:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/internal/adr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/adr;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/rw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;)V

    .line 0
    iput-object v3, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->c:Lcom/google/android/gms/internal/rw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/rw;->j_()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru;->e:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ud;->cZ:Lcom/google/android/gms/internal/ty;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ru;->a()V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ud;->cY:Lcom/google/android/gms/internal/ty;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ru$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ru$2;-><init>(Lcom/google/android/gms/internal/ru;)V

    .line 3000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->h()Lcom/google/android/gms/internal/rj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/rj;->a(Lcom/google/android/gms/internal/rj$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
