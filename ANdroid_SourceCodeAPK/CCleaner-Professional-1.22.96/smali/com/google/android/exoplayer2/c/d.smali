.class public final Lcom/google/android/exoplayer2/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/d$a;,
        Lcom/google/android/exoplayer2/c/d$b;,
        Lcom/google/android/exoplayer2/c/d$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/c/d$b;

.field public final c:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer2/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/android/exoplayer2/c/d$a;

.field public final e:Lcom/google/android/exoplayer2/j/k;

.field public f:J

.field public g:Lcom/google/android/exoplayer2/Format;

.field public h:Lcom/google/android/exoplayer2/c/d$c;

.field private final i:Lcom/google/android/exoplayer2/i/b;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:J

.field private l:J

.field private m:Lcom/google/android/exoplayer2/i/a;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/i/b;)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d;->i:Lcom/google/android/exoplayer2/i/b;

    .line 86
    invoke-interface {p1}, Lcom/google/android/exoplayer2/i/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/c/d$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/d$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    .line 88
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/c/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/d$a;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    .line 90
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->o:Z

    .line 94
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    if-ne v0, v1, :cond_0

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->i:Lcom/google/android/exoplayer2/i/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/b;->a()Lcom/google/android/exoplayer2/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->d()V

    .line 536
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    .line 5623
    iput v1, v0, Lcom/google/android/exoplayer2/c/d$b;->b:I

    .line 5624
    iput v1, v0, Lcom/google/android/exoplayer2/c/d$b;->c:I

    .line 5625
    iput v1, v0, Lcom/google/android/exoplayer2/c/d$b;->d:I

    .line 5626
    iput v1, v0, Lcom/google/android/exoplayer2/c/d$b;->a:I

    .line 540
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d;->i:Lcom/google/android/exoplayer2/i/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/i/a;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/i/a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/i/b;->a([Lcom/google/android/exoplayer2/i/a;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->i:Lcom/google/android/exoplayer2/i/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/b;->b()V

    .line 543
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    .line 544
    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->l:J

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    .line 546
    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->o:Z

    .line 548
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;IZ)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 453
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/c/g;->a(I)I

    move-result v1

    .line 455
    if-ne v1, v0, :cond_1

    .line 456
    if-eqz p3, :cond_0

    .line 475
    :goto_0
    return v0

    .line 459
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    .line 461
    goto :goto_0

    .line 464
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/c/d;->a(I)I

    move-result v1

    .line 465
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/i/a;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    iget v4, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 4050
    iget v3, v3, Lcom/google/android/exoplayer2/i/a;->b:I

    add-int/2addr v3, v4

    .line 465
    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/c/g;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 467
    if-ne v1, v0, :cond_4

    .line 468
    if-eqz p3, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    goto :goto_0

    .line 471
    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    throw v0

    .line 473
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 474
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->l:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    move v0, v1

    .line 475
    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->d()V

    .line 181
    :cond_0
    return-void
.end method

.method public final a(JIII[B)V
    .locals 9

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/d$b;->b(J)V

    .line 523
    :goto_0
    return-void

    .line 506
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->p:Z

    if-eqz v0, :cond_3

    .line 507
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/d$b;->c(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    goto :goto_0

    .line 510
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->p:Z

    .line 512
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    .line 513
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    .line 522
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    goto :goto_0

    .line 516
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/d;->o:Z

    .line 518
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->k:J

    add-long v1, p1, v0

    .line 519
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->l:J

    int-to-long v6, p4

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/c/d$b;->a(JIJI[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    throw v0
.end method

.method public final a(J[BI)V
    .locals 7

    .prologue
    .line 388
    const/4 v0, 0x0

    move v1, v0

    .line 389
    :goto_0
    if-ge v1, p4, :cond_0

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/c/d;->b(J)V

    .line 391
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 392
    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i/a;

    .line 394
    iget-object v4, v0, Lcom/google/android/exoplayer2/i/a;->a:[B

    .line 2050
    iget v0, v0, Lcom/google/android/exoplayer2/i/a;->b:I

    add-int/2addr v0, v2

    .line 394
    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 397
    add-int v0, v1, v3

    move v1, v0

    .line 398
    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)V
    .locals 28

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/exoplayer2/c/d;->k:J

    .line 2571
    if-nez p1, :cond_2

    .line 2572
    const/16 p1, 0x0

    .line 444
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/c/d$b;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/d;->h:Lcom/google/android/exoplayer2/c/d$c;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/d;->h:Lcom/google/android/exoplayer2/c/d$c;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/c/d$c;->a()V

    .line 448
    :cond_1
    return-void

    .line 2574
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer2/Format;->u:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2575
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/exoplayer2/Format;->u:J

    add-long v24, v4, v2

    .line 3377
    new-instance v3, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->f:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->i:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->k:F

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/android/exoplayer2/Format;->l:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->m:F

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->o:[B

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->n:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->p:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->w:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v0

    invoke-direct/range {v3 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BIIIIIIILjava/lang/String;JLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    move-object/from16 p1, v3

    .line 2575
    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;I)V
    .locals 6

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 496
    :goto_0
    return-void

    .line 487
    :cond_0
    :goto_1
    if-lez p2, :cond_1

    .line 488
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/c/d;->a(I)I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/i/a;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->m:Lcom/google/android/exoplayer2/i/a;

    iget v3, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 5050
    iget v2, v2, Lcom/google/android/exoplayer2/i/a;->b:I

    add-int/2addr v2, v3

    .line 489
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 491
    iget v1, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/c/d;->n:I

    .line 492
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->l:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/d;->l:J

    .line 493
    sub-int/2addr p2, v0

    .line 494
    goto :goto_1

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->c()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v1, 0x2

    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 105
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/d;->d()V

    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    .line 1632
    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/d$b;->e:J

    .line 1633
    iput-wide v4, v2, Lcom/google/android/exoplayer2/c/d$b;->f:J

    .line 107
    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d;->g:Lcom/google/android/exoplayer2/Format;

    .line 110
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/d$b;->a(J)J

    move-result-wide v0

    .line 236
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/c/d;->b(J)V

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 9

    .prologue
    .line 408
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 409
    iget v1, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    div-int v2, v0, v1

    .line 410
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 411
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/d;->i:Lcom/google/android/exoplayer2/i/b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i/a;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/i/b;->a(Lcom/google/android/exoplayer2/i/a;)V

    .line 412
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    iget v0, p0, Lcom/google/android/exoplayer2/c/d;->a:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/d;->f:J

    .line 410
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method
