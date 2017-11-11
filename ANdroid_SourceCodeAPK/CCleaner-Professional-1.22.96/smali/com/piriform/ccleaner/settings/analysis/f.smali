.class public final Lcom/piriform/ccleaner/settings/analysis/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/settings/analysis/c;


# instance fields
.field a:Lcom/piriform/ccleaner/l/b;

.field private final b:Lcom/piriform/ccleaner/scheduler/n;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/scheduler/n;J)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/f;->b:Lcom/piriform/ccleaner/scheduler/n;

    .line 17
    iput-wide p2, p0, Lcom/piriform/ccleaner/settings/analysis/f;->c:J

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/f;->b:Lcom/piriform/ccleaner/scheduler/n;

    iget-wide v2, p0, Lcom/piriform/ccleaner/settings/analysis/f;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/scheduler/n;->a(Ljava/lang/Long;)Lf/d;

    move-result-object v0

    .line 12394
    invoke-static {v0}, Lf/e/a;->a(Lf/d;)Lf/e/a;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/piriform/ccleaner/settings/analysis/f$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/settings/analysis/f$1;-><init>(Lcom/piriform/ccleaner/settings/analysis/f;)V

    .line 12509
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v2

    .line 12510
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12513
    iget-object v4, v0, Lf/e/a;->a:Lf/d;

    new-instance v5, Lf/e/a$1;

    invoke-direct {v5, v0, v3, v2}, Lf/e/a$1;-><init>(Lf/e/a;Ljava/util/concurrent/BlockingQueue;Lf/d/a/d;)V

    .line 13213
    invoke-static {v5, v4}, Lf/d;->a(Lf/i;Lf/d;)Lf/j;

    move-result-object v2

    .line 12530
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 12531
    if-nez v0, :cond_1

    .line 12532
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .line 12534
    :cond_1
    invoke-static {v1, v0}, Lf/d/a/d;->a(Lf/e;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 12542
    invoke-interface {v2}, Lf/j;->b()V

    .line 12543
    :goto_0
    return-void

    .line 12538
    :catch_0
    move-exception v0

    .line 12539
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 12540
    invoke-interface {v1, v0}, Lf/e;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12542
    invoke-interface {v2}, Lf/j;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lf/j;->b()V

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;Z)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/f;->a:Lcom/piriform/ccleaner/l/b;

    .line 14149
    if-eqz p2, :cond_0

    .line 14150
    iget-object v0, v0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 14152
    :cond_0
    iget-object v0, v0, Lcom/piriform/ccleaner/l/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/f;->a:Lcom/piriform/ccleaner/l/b;

    .line 14140
    iget-object v0, v0, Lcom/piriform/ccleaner/l/b;->b:Ljava/util/Set;

    .line 39
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/f;->b:Lcom/piriform/ccleaner/scheduler/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/f;->a:Lcom/piriform/ccleaner/l/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/scheduler/n;->a(Lcom/piriform/ccleaner/l/c;)Lf/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/d;->c()Lf/j;

    .line 35
    return-void
.end method
