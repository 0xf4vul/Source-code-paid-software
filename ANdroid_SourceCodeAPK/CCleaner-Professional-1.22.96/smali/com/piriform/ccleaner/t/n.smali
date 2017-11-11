.class public final Lcom/piriform/ccleaner/t/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/o;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/o;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/piriform/ccleaner/t/s;

.field c:Lcom/piriform/ccleaner/t/r;

.field final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/s;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/piriform/ccleaner/t/n;->b:Lcom/piriform/ccleaner/t/s;

    .line 16
    iput-object p2, p0, Lcom/piriform/ccleaner/t/n;->d:Ljava/util/concurrent/Executor;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/o;

    .line 51
    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 58
    iget-object v1, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/o;

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/s;",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/o;

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
