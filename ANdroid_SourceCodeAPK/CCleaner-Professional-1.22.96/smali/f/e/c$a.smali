.class final Lf/e/c$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lf/e;
.implements Lf/f;
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lf/e",
        "<TT;>;",
        "Lf/f;",
        "Lf/j;"
    }
.end annotation


# instance fields
.field private final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lf/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/c",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf/i;Lf/e/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Lf/e/c",
            "<TS;TT;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 341
    iput-object p1, p0, Lf/e/c$a;->a:Lf/i;

    .line 342
    iput-object p2, p0, Lf/e/c$a;->b:Lf/e/c;

    .line 343
    iput-object p3, p0, Lf/e/c$a;->e:Ljava/lang/Object;

    .line 344
    return-void
.end method

.method private a(Lf/e/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/e/c",
            "<TS;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lf/e/c$a;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lf/e/c;->a(Ljava/lang/Object;Lf/e;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lf/e/c$a;->e:Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private a(Lf/i;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    iget-boolean v0, p0, Lf/e/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-static {p2}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/e/c$a;->d:Z

    .line 423
    invoke-virtual {p1, p2}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p0}, Lf/e/c$a;->b()V

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 372
    iget-boolean v0, p0, Lf/e/c$a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf/e/c$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0, v2, v3}, Lf/e/c$a;->set(J)V

    .line 374
    invoke-direct {p0}, Lf/e/c$a;->d()V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lf/e/c$a;->b:Lf/e/c;

    iget-object v1, p0, Lf/e/c$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lf/e/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 385
    invoke-static {v0}, Lf/g/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 391
    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    invoke-static {p0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    .line 392
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 1401
    iget-object v0, p0, Lf/e/c$a;->b:Lf/e/c;

    .line 1402
    iget-object v1, p0, Lf/e/c$a;->a:Lf/i;

    .line 1406
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lf/e/c$a;->c:Z

    .line 1407
    invoke-direct {p0, v0}, Lf/e/c$a;->a(Lf/e/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    invoke-direct {p0}, Lf/e/c$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1440
    :cond_1
    :goto_0
    return-void

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    invoke-direct {p0, v1, v0}, Lf/e/c$a;->a(Lf/i;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1429
    :cond_2
    iget-object v2, p0, Lf/e/c$a;->b:Lf/e/c;

    .line 1430
    iget-object v3, p0, Lf/e/c$a;->a:Lf/i;

    :cond_3
    move-wide v0, p1

    .line 1436
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lf/e/c$a;->c:Z

    .line 1437
    invoke-direct {p0, v2}, Lf/e/c$a;->a(Lf/e/c;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1442
    invoke-direct {p0}, Lf/e/c$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1445
    iget-boolean v4, p0, Lf/e/c$a;->c:Z

    if-eqz v4, :cond_5

    .line 1446
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 1448
    :cond_5
    cmp-long v4, v0, v6

    if-nez v4, :cond_4

    .line 1449
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lf/e/c$a;->addAndGet(J)J

    move-result-wide p1

    .line 1450
    cmp-long v0, p1, v6

    if-gtz v0, :cond_3

    .line 1455
    invoke-direct {p0}, Lf/e/c$a;->a()Z

    goto :goto_0

    .line 1438
    :catch_1
    move-exception v0

    .line 1439
    invoke-direct {p0, v3, v0}, Lf/e/c$a;->a(Lf/i;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 354
    :cond_0
    invoke-virtual {p0}, Lf/e/c$a;->get()J

    move-result-wide v0

    .line 355
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lf/e/c$a;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    invoke-direct {p0}, Lf/e/c$a;->d()V

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_1
    const-wide/16 v2, -0x2

    invoke-virtual {p0, v0, v1, v2, v3}, Lf/e/c$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lf/e/c$a;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCompleted()V
    .locals 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lf/e/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/e/c$a;->d:Z

    .line 468
    iget-object v0, p0, Lf/e/c$a;->a:Lf/i;

    .line 2108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 468
    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lf/e/c$a;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V

    .line 471
    :cond_1
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 475
    iget-boolean v0, p0, Lf/e/c$a;->d:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/e/c$a;->d:Z

    .line 479
    iget-object v0, p0, Lf/e/c$a;->a:Lf/i;

    .line 3108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 479
    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lf/e/c$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 482
    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 486
    iget-boolean v0, p0, Lf/e/c$a;->c:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onNext called multiple times!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/e/c$a;->c:Z

    .line 490
    iget-object v0, p0, Lf/e/c$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 491
    return-void
.end method
