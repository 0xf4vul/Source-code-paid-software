.class final Lcom/b/a/a/d;
.super Lc/a/a/a/a$b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/b/a/a/q;

.field private final b:Lcom/b/a/a/g;


# direct methods
.method public constructor <init>(Lcom/b/a/a/q;Lcom/b/a/a/g;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc/a/a/a/a$b;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/q;

    .line 16
    iput-object p2, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/g;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/q;

    sget-object v1, Lcom/b/a/a/s$b;->a:Lcom/b/a/a/s$b;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/q;->a(Landroid/app/Activity;Lcom/b/a/a/s$b;)V

    .line 27
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/q;

    sget-object v1, Lcom/b/a/a/s$b;->b:Lcom/b/a/a/s$b;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/q;->a(Landroid/app/Activity;Lcom/b/a/a/s$b;)V

    .line 32
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/g;

    .line 1053
    iput-boolean v2, v0, Lcom/b/a/a/g;->e:Z

    .line 1055
    iget-object v0, v0, Lcom/b/a/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 1056
    if-eqz v0, :cond_0

    .line 1057
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 33
    :cond_0
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 37
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/q;

    sget-object v1, Lcom/b/a/a/s$b;->c:Lcom/b/a/a/s$b;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/q;->a(Landroid/app/Activity;Lcom/b/a/a/s$b;)V

    .line 38
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/g;

    .line 1062
    iget-boolean v1, v0, Lcom/b/a/a/g;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/b/a/a/g;->e:Z

    if-nez v1, :cond_0

    .line 1063
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/a/a/g;->e:Z

    .line 1065
    :try_start_0
    iget-object v1, v0, Lcom/b/a/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/b/a/a/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/b/a/a/g$1;

    invoke-direct {v4, v0}, Lcom/b/a/a/g$1;-><init>(Lcom/b/a/a/g;)V

    const-wide/16 v6, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Failed to schedule background detector"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/a/q;

    sget-object v1, Lcom/b/a/a/s$b;->d:Lcom/b/a/a/s$b;

    invoke-virtual {v0, p1, v1}, Lcom/b/a/a/q;->a(Landroid/app/Activity;Lcom/b/a/a/s$b;)V

    .line 44
    return-void
.end method
