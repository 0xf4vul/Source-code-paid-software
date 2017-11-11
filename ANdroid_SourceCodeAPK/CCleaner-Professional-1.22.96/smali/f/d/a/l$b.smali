.class final Lf/d/a/l$b;
.super Lf/d/a/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
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
        "Lf/d/a/l$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Throwable;

.field volatile e:Z

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field final g:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lf/d/a/l$a;-><init>(Lf/i;)V

    .line 290
    invoke-static {}, Lf/d/e/b/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lf/d/e/b/ae;

    invoke-direct {v0, p2}, Lf/d/e/b/ae;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lf/d/a/l$b;->c:Ljava/util/Queue;

    .line 293
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lf/d/a/l$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 294
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/l$b;->g:Lf/d/a/d;

    .line 295
    return-void

    .line 290
    :cond_0
    new-instance v0, Lf/d/e/a/h;

    invoke-direct {v0, p2}, Lf/d/e/a/h;-><init>(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    .line 329
    iget-object v0, p0, Lf/d/a/l$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v8, p0, Lf/d/a/l$b;->a:Lf/i;

    .line 335
    iget-object v9, p0, Lf/d/a/l$b;->c:Ljava/util/Queue;

    move v0, v1

    .line 338
    :cond_1
    invoke-virtual {p0}, Lf/d/a/l$b;->get()J

    move-result-wide v10

    move-wide v4, v6

    .line 341
    :goto_1
    cmp-long v2, v4, v10

    if-eqz v2, :cond_6

    .line 1108
    iget-object v2, v8, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v2, v2, Lf/d/e/l;->b:Z

    .line 342
    if-eqz v2, :cond_2

    .line 343
    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 347
    :cond_2
    iget-boolean v3, p0, Lf/d/a/l$b;->e:Z

    .line 349
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v12

    .line 351
    if-nez v12, :cond_3

    move v2, v1

    .line 353
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 354
    iget-object v0, p0, Lf/d/a/l$b;->d:Ljava/lang/Throwable;

    .line 355
    if-eqz v0, :cond_4

    .line 356
    invoke-super {p0, v0}, Lf/d/a/l$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 358
    :cond_4
    invoke-super {p0}, Lf/d/a/l$a;->onCompleted()V

    goto :goto_0

    .line 363
    :cond_5
    if-nez v2, :cond_6

    .line 367
    invoke-static {v12}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 369
    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    .line 370
    goto :goto_1

    .line 372
    :cond_6
    cmp-long v2, v4, v10

    if-nez v2, :cond_9

    .line 2108
    iget-object v2, v8, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v2, v2, Lf/d/e/l;->b:Z

    .line 373
    if-eqz v2, :cond_7

    .line 374
    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 378
    :cond_7
    iget-boolean v2, p0, Lf/d/a/l$b;->e:Z

    .line 380
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    .line 382
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 383
    iget-object v0, p0, Lf/d/a/l$b;->d:Ljava/lang/Throwable;

    .line 384
    if-eqz v0, :cond_8

    .line 385
    invoke-super {p0, v0}, Lf/d/a/l$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 387
    :cond_8
    invoke-super {p0}, Lf/d/a/l$a;->onCompleted()V

    goto :goto_0

    .line 393
    :cond_9
    cmp-long v2, v4, v6

    if-eqz v2, :cond_a

    .line 394
    invoke-static {p0, v4, v5}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 397
    :cond_a
    iget-object v2, p0, Lf/d/a/l$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 398
    if-nez v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lf/d/a/l$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lf/d/a/l$b;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 326
    :cond_0
    return-void
.end method

.method final d()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lf/d/a/l$b;->e()V

    .line 319
    return-void
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/l$b;->e:Z

    .line 313
    invoke-direct {p0}, Lf/d/a/l$b;->e()V

    .line 314
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lf/d/a/l$b;->d:Ljava/lang/Throwable;

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/l$b;->e:Z

    .line 307
    invoke-direct {p0}, Lf/d/a/l$b;->e()V

    .line 308
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
    .line 299
    iget-object v0, p0, Lf/d/a/l$b;->c:Ljava/util/Queue;

    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 300
    invoke-direct {p0}, Lf/d/a/l$b;->e()V

    .line 301
    return-void
.end method
