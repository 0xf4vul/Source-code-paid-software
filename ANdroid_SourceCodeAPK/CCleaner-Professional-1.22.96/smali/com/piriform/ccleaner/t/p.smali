.class public final Lcom/piriform/ccleaner/t/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/f;


# instance fields
.field public final a:Lcom/piriform/ccleaner/t/s;

.field private final b:Lcom/piriform/ccleaner/t/n;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/t/s;)V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    .line 12
    new-instance v0, Lcom/piriform/ccleaner/t/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    invoke-direct {v0, v1, p1}, Lcom/piriform/ccleaner/t/n;-><init>(Lcom/piriform/ccleaner/t/s;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/p;->b:Lcom/piriform/ccleaner/t/n;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/t/p;->a:Lcom/piriform/ccleaner/t/s;

    .line 3064
    iget-object v0, v0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 3093
    iget-object v0, v0, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    .line 27
    return-object v0
.end method

.method public final a(Lcom/piriform/ccleaner/t/o;)V
    .locals 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/piriform/ccleaner/t/p;->b:Lcom/piriform/ccleaner/t/n;

    .line 1032
    iget-object v1, v0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    monitor-enter v1

    .line 1033
    :try_start_0
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2020
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->c:Lcom/piriform/ccleaner/t/r;

    if-nez v2, :cond_0

    .line 2021
    new-instance v2, Lcom/piriform/ccleaner/t/r;

    iget-object v3, v0, Lcom/piriform/ccleaner/t/n;->b:Lcom/piriform/ccleaner/t/s;

    invoke-direct {v2, v3, v0}, Lcom/piriform/ccleaner/t/r;-><init>(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/o;)V

    iput-object v2, v0, Lcom/piriform/ccleaner/t/n;->c:Lcom/piriform/ccleaner/t/r;

    .line 2022
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->c:Lcom/piriform/ccleaner/t/r;

    iget-object v0, v0, Lcom/piriform/ccleaner/t/n;->d:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v3}, Lcom/piriform/ccleaner/t/r;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1035
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

.method public final b(Lcom/piriform/ccleaner/t/o;)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/t/p;->b:Lcom/piriform/ccleaner/t/n;

    .line 2039
    iget-object v1, v0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    monitor-enter v1

    .line 2040
    :try_start_0
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2041
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3027
    iget-object v2, v0, Lcom/piriform/ccleaner/t/n;->c:Lcom/piriform/ccleaner/t/r;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/t/r;->cancel(Z)Z

    .line 3028
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/piriform/ccleaner/t/n;->c:Lcom/piriform/ccleaner/t/r;

    .line 2044
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
