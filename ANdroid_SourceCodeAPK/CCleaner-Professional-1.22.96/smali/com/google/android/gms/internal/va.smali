.class public final Lcom/google/android/gms/internal/va;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/tz;

.field private final d:Lcom/google/android/gms/internal/eo;

.field private final e:Lcom/google/android/gms/internal/abx;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/abx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;",
            "Lcom/google/android/gms/internal/tz;",
            "Lcom/google/android/gms/internal/eo;",
            "Lcom/google/android/gms/internal/abx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/va;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/va;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/va;->c:Lcom/google/android/gms/internal/tz;

    iput-object p3, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/eo;

    iput-object p4, p0, Lcom/google/android/gms/internal/va;->e:Lcom/google/android/gms/internal/abx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/va;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/za;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 1000
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2000
    iget v1, v0, Lcom/google/android/gms/internal/za;->c:I

    .line 1000
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/va;->c:Lcom/google/android/gms/internal/tz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/tz;->a(Lcom/google/android/gms/internal/za;)Lcom/google/android/gms/internal/wy;

    move-result-object v1

    const-string/jumbo v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/wy;->d:Z

    if-eqz v4, :cond_1

    .line 3000
    iget-boolean v4, v0, Lcom/google/android/gms/internal/za;->h:Z

    .line 0
    if-eqz v4, :cond_1

    const-string/jumbo v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/afg; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 8000
    iput-wide v2, v1, Lcom/google/android/gms/internal/afg;->b:J

    .line 9000
    invoke-static {v1}, Lcom/google/android/gms/internal/za;->a(Lcom/google/android/gms/internal/afg;)Lcom/google/android/gms/internal/afg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/va;->e:Lcom/google/android/gms/internal/abx;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/abx;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/afg;)V

    goto :goto_0

    .line 0
    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/va;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/aaw;

    move-result-object v1

    const-string/jumbo v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 4000
    iget-boolean v4, v0, Lcom/google/android/gms/internal/za;->g:Z

    .line 0
    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/google/android/gms/internal/aaw;->b:Lcom/google/android/gms/internal/eo$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/va;->d:Lcom/google/android/gms/internal/eo;

    .line 6000
    iget-object v5, v0, Lcom/google/android/gms/internal/za;->b:Ljava/lang/String;

    .line 0
    iget-object v6, v1, Lcom/google/android/gms/internal/aaw;->b:Lcom/google/android/gms/internal/eo$a;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/String;Lcom/google/android/gms/internal/eo$a;)V

    const-string/jumbo v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 7000
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/za;->h:Z

    .line 0
    iget-object v4, p0, Lcom/google/android/gms/internal/va;->e:Lcom/google/android/gms/internal/abx;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/abx;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/afg; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "Unhandled exception %s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/afh;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/afg;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/afg;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 10000
    iput-wide v2, v4, Lcom/google/android/gms/internal/afg;->b:J

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/va;->e:Lcom/google/android/gms/internal/abx;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/abx;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/afg;)V

    goto/16 :goto_0
.end method
