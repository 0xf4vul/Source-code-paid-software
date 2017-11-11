.class final Lf/d/a/x$d;
.super Lf/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<",
        "Lf/d",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final r:[Lf/d/a/x$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/d/a/x$b",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field e:Lf/d/a/x$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/x$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Lf/j/b;

.field volatile h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Z

.field final m:Ljava/lang/Object;

.field volatile n:[Lf/d/a/x$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/d/a/x$b",
            "<*>;"
        }
    .end annotation
.end field

.field o:J

.field p:J

.field q:I

.field final s:I

.field t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Lf/d/a/x$b;

    sput-object v0, Lf/d/a/x$d;->r:[Lf/d/a/x$b;

    return-void
.end method

.method public constructor <init>(Lf/i;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    .line 189
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 190
    iput-object p1, p0, Lf/d/a/x$d;->a:Lf/i;

    .line 191
    iput-boolean p2, p0, Lf/d/a/x$d;->c:Z

    .line 192
    iput p3, p0, Lf/d/a/x$d;->d:I

    .line 193
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/x$d;->i:Lf/d/a/d;

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/d/a/x$d;->m:Ljava/lang/Object;

    .line 195
    sget-object v0, Lf/d/a/x$d;->r:[Lf/d/a/x$b;

    iput-object v0, p0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 196
    if-ne p3, v1, :cond_0

    .line 197
    iput v1, p0, Lf/d/a/x$d;->s:I

    .line 198
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lf/d/a/x$d;->a(J)V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lf/d/a/x$d;->s:I

    .line 201
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lf/d/a/x$d;->a(J)V

    goto :goto_0
.end method

.method static a(Lf/d/a/x$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/x$b",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-static {}, Lf/d/e/i;->a()Lf/d/e/i;

    move-result-object v0

    .line 377
    invoke-virtual {p0, v0}, Lf/d/a/x$b;->a(Lf/j;)V

    .line 378
    iput-object v0, p0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 381
    :cond_0
    :try_start_0
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d/e/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lf/b/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {p0}, Lf/d/a/x$b;->b()V

    .line 384
    invoke-virtual {p0, v0}, Lf/d/a/x$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    :catch_1
    move-exception v0

    .line 1108
    iget-object v1, p0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 387
    if-nez v1, :cond_1

    .line 388
    invoke-virtual {p0}, Lf/d/a/x$b;->b()V

    .line 389
    invoke-virtual {p0, v0}, Lf/d/a/x$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lf/d/a/x$d;->f:Ljava/util/Queue;

    .line 489
    if-nez v0, :cond_0

    .line 490
    iget v1, p0, Lf/d/a/x$d;->d:I

    .line 491
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_2

    .line 492
    new-instance v0, Lf/d/e/a/h;

    sget v1, Lf/d/e/i;->b:I

    invoke-direct {v0, v1}, Lf/d/e/a/h;-><init>(I)V

    .line 504
    :goto_0
    iput-object v0, p0, Lf/d/a/x$d;->f:Ljava/util/Queue;

    .line 506
    :cond_0
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lf/d/a/x$d;->b()V

    .line 508
    new-instance v0, Lf/b/c;

    invoke-direct {v0}, Lf/b/c;-><init>()V

    invoke-static {v0, p1}, Lf/b/g;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/x$d;->onError(Ljava/lang/Throwable;)V

    .line 511
    :cond_1
    return-void

    .line 3042
    :cond_2
    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 494
    :goto_1
    if-eqz v0, :cond_5

    .line 495
    invoke-static {}, Lf/d/e/b/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    new-instance v0, Lf/d/e/b/w;

    invoke-direct {v0, v1}, Lf/d/e/b/w;-><init>(I)V

    goto :goto_0

    .line 3042
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 498
    :cond_4
    new-instance v0, Lf/d/e/a/d;

    invoke-direct {v0, v1}, Lf/d/e/a/d;-><init>(I)V

    goto :goto_0

    .line 501
    :cond_5
    new-instance v0, Lf/d/e/a/e;

    invoke-direct {v0, v1}, Lf/d/e/a/e;-><init>(I)V

    goto :goto_0
.end method

.method private g()Lf/j/b;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lf/d/a/x$d;->g:Lf/j/b;

    .line 220
    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v1, p0, Lf/d/a/x$d;->g:Lf/j/b;

    .line 224
    if-nez v1, :cond_1

    .line 225
    new-instance v1, Lf/j/b;

    invoke-direct {v1}, Lf/j/b;-><init>()V

    .line 226
    iput-object v1, p0, Lf/d/a/x$d;->g:Lf/j/b;

    .line 227
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    move v1, v2

    .line 229
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lf/d/a/x$d;->a(Lf/j;)V

    .line 234
    :cond_0
    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, v0

    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v1, p0, Lf/d/a/x$d;->a:Lf/i;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lf/d/a/x$d;->a:Lf/i;

    new-instance v2, Lf/b/a;

    invoke-direct {v2, v0, v3}, Lf/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 818
    iget-object v1, p0, Lf/d/a/x$d;->a:Lf/i;

    .line 5108
    iget-object v1, v1, Lf/i;->b:Lf/d/e/l;

    .line 6059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 818
    if-eqz v1, :cond_0

    .line 830
    :goto_0
    return v0

    .line 821
    :cond_0
    iget-object v1, p0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 822
    iget-boolean v2, p0, Lf/d/a/x$d;->c:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 824
    :try_start_0
    invoke-direct {p0}, Lf/d/a/x$d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    invoke-virtual {p0}, Lf/d/a/x$d;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lf/d/a/x$d;->b()V

    throw v0

    .line 830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 207
    if-nez v0, :cond_1

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 212
    iput-object v0, p0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 214
    :cond_0
    monitor-exit p0

    .line 216
    :cond_1
    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e()V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-boolean v0, p0, Lf/d/a/x$d;->k:Z

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$d;->l:Z

    .line 570
    monitor-exit p0

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$d;->k:Z

    .line 573
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-virtual {p0}, Lf/d/a/x$d;->f()V

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final f()V
    .locals 23

    .prologue
    .line 580
    const/4 v3, 0x0

    .line 582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lf/d/a/x$d;->a:Lf/i;

    .line 585
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 807
    :cond_1
    :goto_1
    return-void

    .line 589
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lf/d/a/x$d;->f:Ljava/util/Queue;

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    invoke-virtual {v2}, Lf/d/a/x$c;->get()J

    move-result-wide v4

    .line 592
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v11, v2

    .line 595
    :goto_2
    const/4 v2, 0x0

    .line 598
    if-eqz v9, :cond_9

    .line 600
    :cond_3
    const/4 v7, 0x0

    .line 601
    const/4 v6, 0x0

    .line 602
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v8, v4, v12

    if-lez v8, :cond_7

    .line 603
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 605
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->i()Z

    move-result v8

    if-nez v8, :cond_1

    .line 609
    if-eqz v6, :cond_7

    .line 612
    invoke-static {v6}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 615
    :try_start_1
    invoke-virtual {v14, v8}, Lf/i;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :goto_4
    add-int/lit8 v8, v2, 0x1

    .line 627
    add-int/lit8 v2, v7, 0x1

    .line 628
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    move v7, v2

    move v2, v8

    .line 629
    goto :goto_3

    .line 592
    :cond_4
    const/4 v2, 0x0

    move v11, v2

    goto :goto_2

    .line 616
    :catch_0
    move-exception v8

    .line 617
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lf/d/a/x$d;->c:Z

    if-nez v10, :cond_6

    .line 618
    invoke-static {v8}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 619
    const/4 v3, 0x1

    .line 620
    invoke-virtual/range {p0 .. p0}, Lf/d/a/x$d;->b()V

    .line 621
    invoke-virtual {v14, v8}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 804
    :catchall_0
    move-exception v2

    if-nez v3, :cond_5

    .line 805
    monitor-enter p0

    .line 806
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lf/d/a/x$d;->k:Z

    .line 807
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_5
    throw v2

    .line 624
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lf/d/a/x$d;->a()Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 630
    :cond_7
    if-lez v7, :cond_8

    .line 631
    if-eqz v11, :cond_c

    .line 632
    const-wide v4, 0x7fffffffffffffffL

    .line 637
    :cond_8
    :goto_5
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-eqz v7, :cond_9

    if-nez v6, :cond_3

    :cond_9
    move-wide v6, v4

    move v5, v2

    .line 649
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lf/d/a/x$d;->j:Z

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lf/d/a/x$d;->f:Ljava/util/Queue;

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 655
    array-length v0, v15

    move/from16 v16, v0

    .line 659
    if-eqz v2, :cond_e

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_a
    if-nez v16, :cond_e

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lf/d/a/x$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 661
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 662
    :cond_b
    invoke-virtual {v14}, Lf/i;->onCompleted()V

    goto/16 :goto_1

    .line 634
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    .line 3139
    neg-int v5, v7

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lf/d/a/x$c;->addAndGet(J)J

    move-result-wide v4

    goto :goto_5

    .line 664
    :cond_d
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->h()V

    goto/16 :goto_1

    .line 670
    :cond_e
    const/4 v4, 0x0

    .line 671
    if-lez v16, :cond_24

    .line 673
    move-object/from16 v0, p0

    iget-wide v12, v0, Lf/d/a/x$d;->p:J

    .line 674
    move-object/from16 v0, p0

    iget v2, v0, Lf/d/a/x$d;->q:I

    .line 678
    move/from16 v0, v16

    if-le v0, v2, :cond_f

    aget-object v8, v15, v2

    iget-wide v8, v8, Lf/d/a/x$b;->c:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_13

    .line 679
    :cond_f
    move/from16 v0, v16

    if-gt v0, v2, :cond_10

    .line 680
    const/4 v2, 0x0

    .line 684
    :cond_10
    const/4 v8, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_12

    .line 685
    aget-object v9, v15, v2

    iget-wide v0, v9, Lf/d/a/x$b;->c:J

    move-wide/from16 v18, v0

    cmp-long v9, v18, v12

    if-eqz v9, :cond_12

    .line 689
    add-int/lit8 v2, v2, 0x1

    .line 690
    move/from16 v0, v16

    if-ne v2, v0, :cond_11

    .line 691
    const/4 v2, 0x0

    .line 684
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 697
    :cond_12
    move-object/from16 v0, p0

    iput v2, v0, Lf/d/a/x$d;->q:I

    .line 698
    aget-object v8, v15, v2

    iget-wide v8, v8, Lf/d/a/x$b;->c:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lf/d/a/x$d;->p:J

    .line 703
    :cond_13
    const/4 v8, 0x0

    move v9, v8

    move v8, v2

    move/from16 v20, v5

    move-wide/from16 v21, v6

    move/from16 v7, v20

    move v6, v4

    move-wide/from16 v4, v21

    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_20

    .line 705
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
    aget-object v17, v15, v8

    .line 712
    const/4 v2, 0x0

    .line 714
    :cond_14
    const/4 v10, 0x0

    .line 715
    :goto_8
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_15

    .line 717
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->i()Z

    move-result v12

    if-nez v12, :cond_1

    .line 721
    move-object/from16 v0, v17

    iget-object v12, v0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 722
    if-eqz v12, :cond_15

    .line 725
    invoke-virtual {v12}, Lf/d/e/i;->g()Ljava/lang/Object;

    move-result-object v2

    .line 726
    if-eqz v2, :cond_15

    .line 729
    invoke-static {v2}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 732
    :try_start_5
    invoke-virtual {v14, v12}, Lf/i;->onNext(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 743
    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    .line 744
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v4, v12

    .line 745
    goto :goto_8

    .line 733
    :catch_1
    move-exception v2

    .line 734
    const/4 v3, 0x1

    .line 735
    :try_start_6
    invoke-static {v2}, Lf/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 737
    :try_start_7
    invoke-virtual {v14, v2}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 739
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lf/d/a/x$d;->b()V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lf/d/a/x$d;->b()V

    throw v2

    .line 746
    :cond_15
    if-lez v10, :cond_16

    .line 747
    if-nez v11, :cond_1c

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    .line 4139
    neg-int v5, v10

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lf/d/a/x$c;->addAndGet(J)J

    move-result-wide v4

    .line 752
    :goto_9
    int-to-long v12, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lf/d/a/x$b;->b(J)V

    .line 755
    :cond_16
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-eqz v10, :cond_17

    if-nez v2, :cond_14

    .line 759
    :cond_17
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lf/d/a/x$b;->d:Z

    .line 760
    move-object/from16 v0, v17

    iget-object v10, v0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 761
    if-eqz v2, :cond_1a

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Lf/d/e/i;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4298
    :cond_18
    move-object/from16 v0, v17

    iget-object v2, v0, Lf/d/a/x$b;->e:Lf/d/e/i;

    .line 4299
    if-eqz v2, :cond_19

    .line 4300
    invoke-virtual {v2}, Lf/d/e/i;->e()V

    .line 4304
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lf/d/a/x$d;->g:Lf/j/b;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lf/j/b;->b(Lf/j;)V

    .line 4305
    move-object/from16 v0, p0

    iget-object v10, v0, Lf/d/a/x$d;->m:Ljava/lang/Object;

    monitor-enter v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4306
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 4307
    array-length v13, v12

    .line 4308
    const/4 v6, -0x1

    .line 4310
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v13, :cond_23

    .line 4311
    aget-object v18, v12, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 4316
    :goto_b
    if-gez v2, :cond_1e

    .line 4317
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 763
    :goto_c
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lf/d/a/x$d;->i()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 767
    add-int/lit8 v7, v7, 0x1

    .line 768
    const/4 v6, 0x1

    .line 771
    :cond_1a
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-eqz v2, :cond_20

    .line 776
    add-int/lit8 v2, v8, 0x1

    .line 777
    move/from16 v0, v16

    if-ne v2, v0, :cond_1b

    .line 778
    const/4 v2, 0x0

    .line 703
    :cond_1b
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v2

    goto/16 :goto_7

    .line 750
    :cond_1c
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_9

    .line 4310
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4319
    :cond_1e
    const/4 v6, 0x1

    if-ne v13, v6, :cond_1f

    .line 4320
    :try_start_b
    sget-object v2, Lf/d/a/x$d;->r:[Lf/d/a/x$b;

    move-object/from16 v0, p0

    iput-object v2, v0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 4321
    monitor-exit v10

    goto :goto_c

    .line 4327
    :catchall_2
    move-exception v2

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 4323
    :cond_1f
    add-int/lit8 v6, v13, -0x1

    :try_start_d
    new-array v6, v6, [Lf/d/a/x$b;

    .line 4324
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4325
    add-int/lit8 v17, v2, 0x1

    sub-int/2addr v13, v2

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v17

    invoke-static {v12, v0, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4326
    move-object/from16 v0, p0

    iput-object v6, v0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 4327
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :cond_20
    move v2, v6

    move v4, v7

    .line 782
    :try_start_e
    move-object/from16 v0, p0

    iput v8, v0, Lf/d/a/x$d;->q:I

    .line 783
    aget-object v5, v15, v8

    iget-wide v6, v5, Lf/d/a/x$b;->c:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lf/d/a/x$d;->p:J

    .line 786
    :goto_d
    if-lez v4, :cond_21

    .line 787
    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lf/d/a/x$d;->a(J)V

    .line 790
    :cond_21
    if-nez v2, :cond_0

    .line 794
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 795
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lf/d/a/x$d;->l:Z

    if-nez v2, :cond_22

    .line 796
    const/4 v3, 0x1

    .line 797
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lf/d/a/x$d;->k:Z

    .line 798
    monitor-exit p0

    goto/16 :goto_1

    .line 801
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 800
    :cond_22
    const/4 v2, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lf/d/a/x$d;->l:Z

    .line 801
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_0

    .line 807
    :catchall_4
    move-exception v2

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v2

    :cond_23
    move v2, v6

    goto/16 :goto_b

    :cond_24
    move v2, v4

    move v4, v5

    goto :goto_d
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$d;->j:Z

    .line 283
    invoke-virtual {p0}, Lf/d/a/x$d;->e()V

    .line 284
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lf/d/a/x$d;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$d;->j:Z

    .line 278
    invoke-virtual {p0}, Lf/d/a/x$d;->e()V

    .line 279
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    check-cast p1, Lf/d;

    .line 6239
    if-eqz p1, :cond_0

    .line 6242
    invoke-static {}, Lf/d;->a()Lf/d;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6256
    iget v0, p0, Lf/d/a/x$d;->t:I

    add-int/lit8 v0, v0, 0x1

    .line 6257
    iget v2, p0, Lf/d/a/x$d;->s:I

    if-ne v0, v2, :cond_1

    .line 6258
    iput v1, p0, Lf/d/a/x$d;->t:I

    .line 6259
    int-to-long v0, v0

    .line 6441
    invoke-virtual {p0, v0, v1}, Lf/d/a/x$d;->a(J)V

    .line 7553
    :cond_0
    :goto_0
    return-void

    .line 6261
    :cond_1
    iput v0, p0, Lf/d/a/x$d;->t:I

    goto :goto_0

    .line 6245
    :cond_2
    instance-of v0, p1, Lf/d/e/k;

    if-eqz v0, :cond_b

    .line 6246
    check-cast p1, Lf/d/e/k;

    .line 7085
    iget-object v3, p1, Lf/d/e/k;->b:Ljava/lang/Object;

    .line 7457
    iget-object v0, p0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    invoke-virtual {v0}, Lf/d/a/x$c;->get()J

    move-result-wide v4

    .line 7458
    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    .line 7459
    monitor-enter p0

    .line 7461
    :try_start_0
    iget-object v0, p0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    invoke-virtual {v0}, Lf/d/a/x$c;->get()J

    move-result-wide v4

    .line 7462
    iget-boolean v0, p0, Lf/d/a/x$d;->k:Z

    if-nez v0, :cond_c

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c

    .line 7463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/x$d;->k:Z

    move v0, v2

    .line 7466
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7468
    :goto_2
    if-eqz v0, :cond_a

    .line 7469
    iget-object v0, p0, Lf/d/a/x$d;->f:Ljava/util/Queue;

    .line 7470
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7517
    :cond_3
    :try_start_1
    iget-object v0, p0, Lf/d/a/x$d;->a:Lf/i;

    invoke-virtual {v0, v3}, Lf/i;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 7528
    :goto_3
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 7529
    :try_start_2
    iget-object v0, p0, Lf/d/a/x$d;->e:Lf/d/a/x$c;

    .line 8139
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lf/d/a/x$c;->addAndGet(J)J

    .line 7532
    :cond_4
    iget v0, p0, Lf/d/a/x$d;->t:I

    add-int/lit8 v0, v0, 0x1

    .line 7533
    iget v3, p0, Lf/d/a/x$d;->s:I

    if-ne v0, v3, :cond_7

    .line 7534
    const/4 v3, 0x0

    iput v3, p0, Lf/d/a/x$d;->t:I

    .line 7535
    int-to-long v4, v0

    .line 8441
    invoke-virtual {p0, v4, v5}, Lf/d/a/x$d;->a(J)V

    .line 7541
    :goto_4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 7543
    :try_start_3
    iget-boolean v0, p0, Lf/d/a/x$d;->l:Z

    if-nez v0, :cond_8

    .line 7544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/x$d;->k:Z

    .line 7545
    monitor-exit p0

    goto :goto_0

    .line 7548
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7550
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_5
    if-nez v1, :cond_5

    .line 7551
    monitor-enter p0

    .line 7552
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lf/d/a/x$d;->k:Z

    .line 7553
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_5
    throw v0

    .line 7466
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 7518
    :catch_0
    move-exception v0

    .line 7519
    :try_start_7
    iget-boolean v3, p0, Lf/d/a/x$d;->c:Z

    if-nez v3, :cond_6

    .line 7520
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 7522
    :try_start_8
    invoke-virtual {p0}, Lf/d/a/x$d;->b()V

    .line 7523
    invoke-virtual {p0, v0}, Lf/d/a/x$d;->onError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 7526
    :cond_6
    :try_start_9
    invoke-virtual {p0}, Lf/d/a/x$d;->a()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7550
    :catchall_3
    move-exception v0

    goto :goto_5

    .line 7537
    :cond_7
    iput v0, p0, Lf/d/a/x$d;->t:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 7547
    :cond_8
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lf/d/a/x$d;->l:Z

    .line 7548
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 7563
    invoke-virtual {p0}, Lf/d/a/x$d;->f()V

    goto/16 :goto_0

    .line 7553
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 7473
    :cond_9
    invoke-direct {p0, v3}, Lf/d/a/x$d;->a(Ljava/lang/Object;)V

    .line 7474
    invoke-virtual {p0}, Lf/d/a/x$d;->f()V

    goto/16 :goto_0

    .line 7477
    :cond_a
    invoke-direct {p0, v3}, Lf/d/a/x$d;->a(Ljava/lang/Object;)V

    .line 7478
    invoke-virtual {p0}, Lf/d/a/x$d;->e()V

    goto/16 :goto_0

    .line 6248
    :cond_b
    new-instance v0, Lf/d/a/x$b;

    iget-wide v2, p0, Lf/d/a/x$d;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lf/d/a/x$d;->o:J

    invoke-direct {v0, p0, v2, v3}, Lf/d/a/x$b;-><init>(Lf/d/a/x$d;J)V

    .line 9287
    invoke-direct {p0}, Lf/d/a/x$d;->g()Lf/j/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/j/b;->a(Lf/j;)V

    .line 9288
    iget-object v1, p0, Lf/d/a/x$d;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 9289
    :try_start_c
    iget-object v2, p0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 9290
    array-length v3, v2

    .line 9291
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lf/d/a/x$b;

    .line 9292
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9293
    aput-object v0, v4, v3

    .line 9294
    iput-object v4, p0, Lf/d/a/x$d;->n:[Lf/d/a/x$b;

    .line 9295
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 6250
    invoke-virtual {p1, v0}, Lf/d;->a(Lf/i;)Lf/j;

    .line 6251
    invoke-virtual {p0}, Lf/d/a/x$d;->e()V

    goto/16 :goto_0

    .line 9295
    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move-wide v4, v6

    move v0, v1

    goto/16 :goto_2
.end method
