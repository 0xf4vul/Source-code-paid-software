.class public Lcom/google/android/gms/internal/in;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/android/gms/internal/ld;

.field protected b:Lcom/google/android/gms/internal/ir;

.field protected c:Lcom/google/android/gms/internal/ij;

.field protected d:Lcom/google/android/gms/internal/iz;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/google/android/gms/internal/ld$a;

.field protected h:Z

.field protected i:J

.field protected j:Lcom/google/firebase/b;

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/internal/iv;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ld$a;->b:Lcom/google/android/gms/internal/ld$a;

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->g:Lcom/google/android/gms/internal/ld$a;

    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/android/gms/internal/in;->i:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/in;->k:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/in;->l:Z

    return-void
.end method

.method private m()Lcom/google/android/gms/internal/iv;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->n()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/is;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/is;->a:Lcom/google/android/gms/internal/is;

    .line 1000
    sget-object v1, Lcom/google/android/gms/internal/is;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v2, Lcom/google/android/gms/internal/is$2;

    invoke-direct {v2}, Lcom/google/android/gms/internal/is$2;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mc;->a(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/mb;)V

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/it;->a:Lcom/google/android/gms/internal/it;

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    goto :goto_0
.end method

.method private declared-synchronized n()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/hh;

    iget-object v1, p0, Lcom/google/android/gms/internal/in;->j:Lcom/google/firebase/b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hh;-><init>(Lcom/google/firebase/b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private o()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 0
    .line 17000
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/iz;

    .line 0
    instance-of v1, v0, Lcom/google/android/gms/internal/mo;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Custom run loops are not supported!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/mo;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/internal/mo;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/in;->e()Lcom/google/android/gms/internal/hy;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/lc;

    iget-object v1, p0, Lcom/google/android/gms/internal/in;->a:Lcom/google/android/gms/internal/ld;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/lc;-><init>(Lcom/google/android/gms/internal/ld;Ljava/lang/String;)V

    return-object v0
.end method

.method final declared-synchronized a()V
    .locals 3

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/in;->k:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/in;->k:Z

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->a:Lcom/google/android/gms/internal/ld;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/in;->g:Lcom/google/android/gms/internal/ld$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/ld$a;)Lcom/google/android/gms/internal/ld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->a:Lcom/google/android/gms/internal/ld;

    .line 2000
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/iv;->b()Ljava/lang/String;

    move-result-object v0

    .line 5000
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Firebase/5/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/database/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4000
    iput-object v0, p0, Lcom/google/android/gms/internal/in;->f:Ljava/lang/String;

    .line 6000
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->b:Lcom/google/android/gms/internal/ir;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/iv;->a()Lcom/google/android/gms/internal/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->b:Lcom/google/android/gms/internal/ir;

    .line 7000
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/iz;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/iz;

    .line 8000
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->e:Ljava/lang/String;

    .line 9000
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->c:Lcom/google/android/gms/internal/ij;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->m()Lcom/google/android/gms/internal/iv;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->o()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/iv;->a(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ij;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/in;->c:Lcom/google/android/gms/internal/ij;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Ljava/lang/String;)Lcom/google/android/gms/internal/jz;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/in;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->m:Lcom/google/android/gms/internal/iv;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/in;Ljava/lang/String;)Lcom/google/android/gms/internal/jz;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jy;-><init>()V

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/in;->l:Z

    if-eqz v0, :cond_0

    .line 10000
    iget-object v0, p0, Lcom/google/android/gms/internal/in;->b:Lcom/google/android/gms/internal/ir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ir;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/iz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/iz;->c()V

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/in;->l:Z

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 0
    .line 11000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/in;->k:Z

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/c;

    const-string/jumbo v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ld$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->g:Lcom/google/android/gms/internal/ld$a;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/hy;
    .locals 7

    .prologue
    .line 0
    new-instance v0, Lcom/google/android/gms/internal/hy;

    .line 12000
    iget-object v1, p0, Lcom/google/android/gms/internal/in;->a:Lcom/google/android/gms/internal/ld;

    .line 13000
    iget-object v3, p0, Lcom/google/android/gms/internal/in;->c:Lcom/google/android/gms/internal/ij;

    .line 14000
    new-instance v2, Lcom/google/android/gms/internal/in$1;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/in$1;-><init>(Lcom/google/android/gms/internal/ij;)V

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/in;->o()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 15000
    iget-boolean v4, p0, Lcom/google/android/gms/internal/in;->h:Z

    .line 0
    invoke-static {}, Lcom/google/firebase/database/f;->d()Ljava/lang/String;

    move-result-object v5

    .line 16000
    iget-object v6, p0, Lcom/google/android/gms/internal/in;->f:Ljava/lang/String;

    .line 0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/hy;-><init>(Lcom/google/android/gms/internal/ld;Lcom/google/android/gms/internal/hx;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/in;->h:Z

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/in;->i:J

    return-wide v0
.end method

.method public final h()Lcom/google/android/gms/internal/ir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->b:Lcom/google/android/gms/internal/ir;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/internal/iz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->d:Lcom/google/android/gms/internal/iz;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/ij;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/in;->c:Lcom/google/android/gms/internal/ij;

    return-object v0
.end method
