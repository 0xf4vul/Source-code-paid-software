.class public final Lcom/google/android/gms/internal/qn;
.super Ljava/lang/Thread;


# static fields
.field private static final b:Z


# instance fields
.field volatile a:Z

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/eo;

.field private final f:Lcom/google/android/gms/internal/abx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/afh;->b:Z

    sput-boolean v0, Lcom/google/android/gms/internal/qn;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/eo;Lcom/google/android/gms/internal/abx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/za",
            "<*>;>;",
            "Lcom/google/android/gms/internal/eo;",
            "Lcom/google/android/gms/internal/abx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/qn;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/qn;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/qn;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/qn;->e:Lcom/google/android/gms/internal/eo;

    iput-object p4, p0, Lcom/google/android/gms/internal/qn;->f:Lcom/google/android/gms/internal/abx;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/qn;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qn;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/qn;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start new dispatcher"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/afh;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/qn;->e:Lcom/google/android/gms/internal/eo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/eo;->a()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qn;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/za;

    const-string/jumbo v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/qn;->e:Lcom/google/android/gms/internal/eo;

    .line 2000
    iget-object v4, v0, Lcom/google/android/gms/internal/za;->b:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/eo$a;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/qn;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/qn;->a:Z

    if-eqz v0, :cond_1

    return-void

    .line 3000
    :cond_2
    :try_start_1
    iget-wide v6, v4, Lcom/google/android/gms/internal/eo$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    move v1, v2

    .line 0
    :goto_1
    if-eqz v1, :cond_4

    const-string/jumbo v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 4000
    iput-object v4, v0, Lcom/google/android/gms/internal/za;->j:Lcom/google/android/gms/internal/eo$a;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/qn;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 3000
    goto :goto_1

    .line 0
    :cond_4
    const-string/jumbo v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/wy;

    iget-object v5, v4, Lcom/google/android/gms/internal/eo$a;->a:[B

    iget-object v6, v4, Lcom/google/android/gms/internal/eo$a;->g:Ljava/util/Map;

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/wy;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Lcom/google/android/gms/internal/wy;)Lcom/google/android/gms/internal/aaw;

    move-result-object v5

    const-string/jumbo v1, "cache-hit-parsed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 5000
    iget-wide v6, v4, Lcom/google/android/gms/internal/eo$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    move v1, v2

    .line 0
    :goto_2
    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/qn;->f:Lcom/google/android/gms/internal/abx;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/abx;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;)V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 5000
    goto :goto_2

    .line 0
    :cond_6
    const-string/jumbo v1, "cache-hit-refresh-needed"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    .line 6000
    iput-object v4, v0, Lcom/google/android/gms/internal/za;->j:Lcom/google/android/gms/internal/eo$a;

    .line 0
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/google/android/gms/internal/aaw;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/qn;->f:Lcom/google/android/gms/internal/abx;

    new-instance v4, Lcom/google/android/gms/internal/qn$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/internal/qn$1;-><init>(Lcom/google/android/gms/internal/qn;Lcom/google/android/gms/internal/za;)V

    invoke-interface {v1, v0, v5, v4}, Lcom/google/android/gms/internal/abx;->a(Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
