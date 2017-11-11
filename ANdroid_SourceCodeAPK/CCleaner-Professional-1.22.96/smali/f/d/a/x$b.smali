.class final Lf/d/a/x$b;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final g:I


# instance fields
.field final a:Lf/d/a/x$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/x$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:J

.field volatile d:Z

.field volatile e:Lf/d/e/i;

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 839
    sget v0, Lf/d/e/i;->b:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lf/d/a/x$b;->g:I

    return-void
.end method

.method public constructor <init>(Lf/d/a/x$d;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/x$d",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 841
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 842
    iput-object p1, p0, Lf/d/a/x$b;->a:Lf/d/a/x$d;

    .line 843
    iput-wide p2, p0, Lf/d/a/x$b;->c:J

    .line 844
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 3

    .prologue
    .line 866
    iget v0, p0, Lf/d/a/x$b;->f:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 867
    sget v1, Lf/d/a/x$b;->g:I

    if-le v0, v1, :cond_1

    .line 868
    iput v0, p0, Lf/d/a/x$b;->f:I

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    sget v1, Lf/d/e/i;->b:I

    iput v1, p0, Lf/d/a/x$b;->f:I

    .line 872
    sget v1, Lf/d/e/i;->b:I

    sub-int v0, v1, v0

    .line 873
    if-lez v0, :cond_0

    .line 874
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lf/d/a/x$b;->a(J)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 847
    sget v0, Lf/d/e/i;->b:I

    iput v0, p0, Lf/d/a/x$b;->f:I

    .line 848
    sget v0, Lf/d/e/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lf/d/a/x$b;->a(J)V

    .line 849
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$b;->d:Z

    .line 863
    iget-object v0, p0, Lf/d/a/x$b;->a:Lf/d/a/x$d;

    invoke-virtual {v0}, Lf/d/a/x$d;->e()V

    .line 864
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$b;->d:Z

    .line 857
    iget-object v0, p0, Lf/d/a/x$b;->a:Lf/d/a/x$d;

    invoke-virtual {v0}, Lf/d/a/x$d;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lf/d/a/x$b;->a:Lf/d/a/x$d;

    invoke-virtual {v0}, Lf/d/a/x$d;->e()V

    .line 859
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 852
    iget-object v3, p0, Lf/d/a/x$b;->a:Lf/d/a/x$d;

    .line 1343
    iget-object v0, v3, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    invoke-virtual {v0}, Lf/d/a/x$c;->get()J

    move-result-wide v4

    .line 1344
    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    .line 1345
    monitor-enter v3

    .line 1347
    :try_start_0
    iget-object v0, v3, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    invoke-virtual {v0}, Lf/d/a/x$c;->get()J

    move-result-wide v4

    .line 1348
    iget-boolean v0, v3, Lf/d/a/x$d;->k:Z

    if-nez v0, :cond_7

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, v3, Lf/d/a/x$d;->k:Z

    move v0, v2

    .line 1352
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1354
    :goto_1
    if-eqz v0, :cond_6

    .line 1355
    iget-object v0, p0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 1356
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/d/e/i;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1399
    :cond_0
    :try_start_1
    iget-object v0, v3, Lf/d/a/x$d;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1410
    :goto_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 1411
    :try_start_2
    iget-object v0, v3, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    .line 2139
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lf/d/a/x$c;->addAndGet(J)J

    .line 1413
    :cond_1
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lf/d/a/x$b;->b(J)V

    .line 1415
    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1417
    :try_start_3
    iget-boolean v0, v3, Lf/d/a/x$d;->l:Z

    if-nez v0, :cond_4

    .line 1418
    const/4 v0, 0x0

    iput-boolean v0, v3, Lf/d/a/x$d;->k:Z

    .line 1419
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1427
    :goto_3
    return-void

    .line 1352
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    :try_start_5
    iget-boolean v6, v3, Lf/d/a/x$d;->c:Z

    if-nez v6, :cond_3

    .line 1402
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1404
    :try_start_6
    invoke-virtual {p0}, Lf/d/a/x$b;->b()V

    .line 1405
    invoke-virtual {p0, v0}, Lf/d/a/x$b;->onError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 1424
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_4
    if-nez v1, :cond_2

    .line 1425
    monitor-enter v3

    .line 1426
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, v3, Lf/d/a/x$d;->k:Z

    .line 1427
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_2
    throw v0

    .line 1408
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Lf/d/a/x$d;->a()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 1424
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1421
    :cond_4
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, v3, Lf/d/a/x$d;->l:Z

    .line 1422
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1437
    invoke-virtual {v3}, Lf/d/a/x$d;->f()V

    goto :goto_3

    .line 1422
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1427
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 1359
    :cond_5
    invoke-static {p0, p1}, Lf/d/a/x$d;->a(Lf/d/a/x$b;Ljava/lang/Object;)V

    .line 1360
    invoke-virtual {v3}, Lf/d/a/x$d;->f()V

    goto :goto_3

    .line 1363
    :cond_6
    invoke-static {p0, p1}, Lf/d/a/x$d;->a(Lf/d/a/x$b;Ljava/lang/Object;)V

    .line 1364
    invoke-virtual {v3}, Lf/d/a/x$d;->e()V

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move-wide v4, v6

    move v0, v1

    goto :goto_1
.end method
