.class final Lf/d/a/aa$e;
.super Lf/i;
.source "SourceFile"

# interfaces
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i",
        "<TT;>;",
        "Lf/j;"
    }
.end annotation


# static fields
.field static final e:[Lf/d/a/aa$b;

.field static final f:[Lf/d/a/aa$b;


# instance fields
.field final a:Lf/d/a/aa$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/aa$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field volatile g:Z

.field final h:Lf/d/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/e/g",
            "<",
            "Lf/d/a/aa$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field i:[Lf/d/a/aa$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf/d/a/aa$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile j:J

.field k:J

.field final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field m:Z

.field n:Z

.field o:J

.field p:J

.field volatile q:Lf/f;

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lf/d/a/aa$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    new-array v0, v1, [Lf/d/a/aa$b;

    sput-object v0, Lf/d/a/aa$e;->e:[Lf/d/a/aa$b;

    .line 315
    new-array v0, v1, [Lf/d/a/aa$b;

    sput-object v0, Lf/d/a/aa$e;->f:[Lf/d/a/aa$b;

    return-void
.end method

.method public constructor <init>(Lf/d/a/aa$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lf/i;-><init>()V

    .line 353
    iput-object p1, p0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    .line 355
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/aa$e;->c:Lf/d/a/d;

    .line 356
    new-instance v0, Lf/d/e/g;

    invoke-direct {v0}, Lf/d/e/g;-><init>()V

    iput-object v0, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 357
    sget-object v0, Lf/d/a/aa$e;->e:[Lf/d/a/aa$b;

    iput-object v0, p0, Lf/d/a/aa$e;->i:[Lf/d/a/aa$b;

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lf/d/a/aa$e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lf/d/a/aa$e;->a(J)V

    .line 362
    return-void
.end method

.method private a(JJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 575
    iget-wide v0, p0, Lf/d/a/aa$e;->p:J

    .line 576
    iget-object v2, p0, Lf/d/a/aa$e;->q:Lf/f;

    .line 578
    sub-long v4, p1, p3

    .line 579
    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 580
    iput-wide p1, p0, Lf/d/a/aa$e;->o:J

    .line 581
    if-eqz v2, :cond_2

    .line 582
    cmp-long v3, v0, v6

    if-eqz v3, :cond_1

    .line 583
    iput-wide v6, p0, Lf/d/a/aa$e;->p:J

    .line 584
    add-long/2addr v0, v4

    invoke-interface {v2, v0, v1}, Lf/f;->a(J)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-interface {v2, v4, v5}, Lf/f;->a(J)V

    goto :goto_0

    .line 590
    :cond_2
    add-long/2addr v0, v4

    .line 591
    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    .line 592
    const-wide v0, 0x7fffffffffffffffL

    .line 594
    :cond_3
    iput-wide v0, p0, Lf/d/a/aa$e;->p:J

    goto :goto_0

    .line 598
    :cond_4
    cmp-long v3, v0, v6

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 599
    iput-wide v6, p0, Lf/d/a/aa$e;->p:J

    .line 601
    invoke-interface {v2, v0, v1}, Lf/f;->a(J)V

    goto :goto_0
.end method

.method private e()[Lf/d/a/aa$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lf/d/a/aa$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v1, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 4208
    iget-object v0, v0, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 566
    array-length v2, v0

    .line 568
    new-array v3, v2, [Lf/d/a/aa$b;

    .line 569
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    monitor-exit v1

    return-object v3

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lf/d/a/aa$e;->i:[Lf/d/a/aa$b;

    .line 611
    iget-wide v2, p0, Lf/d/a/aa$e;->k:J

    iget-wide v4, p0, Lf/d/a/aa$e;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 612
    iget-object v2, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    monitor-enter v2

    .line 613
    :try_start_0
    iget-object v0, p0, Lf/d/a/aa$e;->i:[Lf/d/a/aa$b;

    .line 616
    iget-object v3, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 5208
    iget-object v3, v3, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 617
    array-length v4, v3

    .line 618
    array-length v5, v0

    if-eq v5, v4, :cond_0

    .line 619
    new-array v0, v4, [Lf/d/a/aa$b;

    .line 620
    iput-object v0, p0, Lf/d/a/aa$e;->i:[Lf/d/a/aa$b;

    .line 622
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iget-wide v4, p0, Lf/d/a/aa$e;->j:J

    iput-wide v4, p0, Lf/d/a/aa$e;->k:J

    .line 624
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_1
    iget-object v2, p0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    .line 627
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 628
    if-eqz v4, :cond_2

    .line 629
    invoke-interface {v2, v4}, Lf/d/a/aa$d;->a(Lf/d/a/aa$b;)V

    .line 627
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 632
    :cond_3
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lf/d/a/aa$e$1;

    invoke-direct {v0, p0}, Lf/d/a/aa$e$1;-><init>(Lf/d/a/aa$e;)V

    invoke-static {v0}, Lf/j/d;->a(Lf/c/a;)Lf/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/aa$e;->a(Lf/j;)V

    .line 384
    return-void
.end method

.method public final a(Lf/f;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lf/d/a/aa$e;->q:Lf/f;

    .line 433
    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only a single producer can be set on a Subscriber."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput-object p1, p0, Lf/d/a/aa$e;->q:Lf/f;

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/d/a/aa$e;->b(Lf/d/a/aa$b;)V

    .line 438
    invoke-direct {p0}, Lf/d/a/aa$e;->f()V

    .line 439
    return-void
.end method

.method final a(Lf/d/a/aa$b;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$b",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-boolean v1, p0, Lf/d/a/aa$e;->g:Z

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v4, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    monitor-enter v4

    .line 399
    :try_start_0
    iget-boolean v1, p0, Lf/d/a/aa$e;->g:Z

    if-eqz v1, :cond_1

    .line 400
    monitor-exit v4

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 403
    :cond_1
    :try_start_1
    iget-object v5, p0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 1067
    iget-object v1, v5, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 1068
    iget v2, v5, Lf/d/e/g;->b:I

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lf/d/e/g;->a(I)I

    move-result v0

    and-int/2addr v0, v2

    .line 1071
    aget-object v3, v1, v0

    .line 1072
    if-eqz v3, :cond_4

    .line 1073
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1077
    :cond_2
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    .line 1078
    aget-object v3, v1, v0

    .line 1079
    if-eqz v3, :cond_4

    .line 1082
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    :cond_3
    :goto_1
    iget-wide v0, p0, Lf/d/a/aa$e;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/d/a/aa$e;->j:J

    .line 405
    monitor-exit v4

    .line 406
    const/4 v0, 0x1

    goto :goto_0

    .line 1087
    :cond_4
    aput-object p1, v1, v0

    .line 1088
    iget v0, v5, Lf/d/e/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Lf/d/e/g;->c:I

    iget v1, v5, Lf/d/e/g;->d:I

    if-lt v0, v1, :cond_3

    .line 1167
    iget-object v6, v5, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 1168
    array-length v2, v6

    .line 1169
    shl-int/lit8 v7, v2, 0x1

    .line 1170
    add-int/lit8 v8, v7, -0x1

    .line 1172
    new-array v0, v7, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1175
    iget v1, v5, Lf/d/e/g;->c:I

    move v10, v1

    move v1, v2

    move v2, v10

    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_7

    .line 1176
    :goto_3
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v6, v2

    if-eqz v1, :cond_8

    .line 1177
    aget-object v1, v6, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lf/d/e/g;->a(I)I

    move-result v1

    and-int/2addr v1, v8

    .line 1178
    aget-object v9, v0, v1

    if-eqz v9, :cond_6

    .line 1180
    :cond_5
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v8

    .line 1181
    aget-object v9, v0, v1

    if-nez v9, :cond_5

    .line 1186
    :cond_6
    aget-object v9, v6, v2

    aput-object v9, v0, v1

    move v1, v2

    move v2, v3

    .line 1187
    goto :goto_2

    .line 1189
    :cond_7
    iput v8, v5, Lf/d/e/g;->b:I

    .line 1190
    int-to-float v1, v7

    iget v2, v5, Lf/d/e/g;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v5, Lf/d/e/g;->d:I

    .line 1191
    iput-object v0, v5, Lf/d/e/g;->e:[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method final b(Lf/d/a/aa$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 482
    .line 2108
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 482
    if-eqz v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    monitor-enter p0

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lf/d/a/aa$e;->m:Z

    if-eqz v0, :cond_4

    .line 487
    if-eqz p1, :cond_3

    .line 488
    iget-object v0, p0, Lf/d/a/aa$e;->r:Ljava/util/List;

    .line 489
    if-nez v0, :cond_2

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    iput-object v0, p0, Lf/d/a/aa$e;->r:Ljava/util/List;

    .line 493
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/aa$e;->n:Z

    .line 498
    monitor-exit p0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 495
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lf/d/a/aa$e;->s:Z

    goto :goto_1

    .line 500
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/aa$e;->m:Z

    .line 501
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    iget-wide v2, p0, Lf/d/a/aa$e;->o:J

    .line 506
    if-eqz p1, :cond_6

    .line 507
    iget-object v0, p1, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 519
    :cond_5
    invoke-direct {p0, v0, v1, v2, v3}, Lf/d/a/aa$e;->a(JJ)V

    .line 3108
    :goto_2
    iget-object v0, p0, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 523
    if-nez v0, :cond_0

    .line 529
    monitor-enter p0

    .line 530
    :try_start_2
    iget-boolean v0, p0, Lf/d/a/aa$e;->n:Z

    if-nez v0, :cond_8

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/d/a/aa$e;->m:Z

    .line 532
    monitor-exit p0

    goto :goto_0

    .line 539
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 511
    :cond_6
    invoke-direct {p0}, Lf/d/a/aa$e;->e()[Lf/d/a/aa$b;

    move-result-object v5

    .line 512
    array-length v7, v5

    move-wide v0, v2

    move v4, v6

    :goto_3
    if-ge v4, v7, :cond_5

    aget-object v8, v5, v4

    .line 513
    if-eqz v8, :cond_7

    .line 514
    iget-object v8, v8, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 512
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 534
    :cond_8
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lf/d/a/aa$e;->n:Z

    .line 535
    iget-object v0, p0, Lf/d/a/aa$e;->r:Ljava/util/List;

    .line 536
    const/4 v1, 0x0

    iput-object v1, p0, Lf/d/a/aa$e;->r:Ljava/util/List;

    .line 537
    iget-boolean v7, p0, Lf/d/a/aa$e;->s:Z

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lf/d/a/aa$e;->s:Z

    .line 539
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    iget-wide v4, p0, Lf/d/a/aa$e;->o:J

    .line 544
    if-eqz v0, :cond_c

    .line 545
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$b;

    .line 546
    iget-object v0, v0, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 547
    goto :goto_4

    :cond_9
    move-wide v0, v2

    .line 550
    :goto_5
    if-eqz v7, :cond_b

    .line 551
    invoke-direct {p0}, Lf/d/a/aa$e;->e()[Lf/d/a/aa$b;

    move-result-object v3

    .line 552
    array-length v7, v3

    move v2, v6

    :goto_6
    if-ge v2, v7, :cond_b

    aget-object v8, v3, v2

    .line 553
    if-eqz v8, :cond_a

    .line 554
    iget-object v8, v8, Lf/d/a/aa$b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 552
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 559
    :cond_b
    invoke-direct {p0, v0, v1, v4, v5}, Lf/d/a/aa$e;->a(JJ)V

    goto :goto_2

    :cond_c
    move-wide v0, v4

    goto :goto_5
.end method

.method public final onCompleted()V
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lf/d/a/aa$e;->d:Z

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/aa$e;->d:Z

    .line 469
    :try_start_0
    iget-object v0, p0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    invoke-interface {v0}, Lf/d/a/aa$d;->a()V

    .line 470
    invoke-direct {p0}, Lf/d/a/aa$e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {p0}, Lf/d/a/aa$e;->b()V

    .line 475
    :cond_0
    return-void

    .line 472
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lf/d/a/aa$e;->b()V

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lf/d/a/aa$e;->d:Z

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/d/a/aa$e;->d:Z

    .line 455
    :try_start_0
    iget-object v0, p0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    invoke-interface {v0, p1}, Lf/d/a/aa$d;->a(Ljava/lang/Throwable;)V

    .line 456
    invoke-direct {p0}, Lf/d/a/aa$e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p0}, Lf/d/a/aa$e;->b()V

    .line 461
    :cond_0
    return-void

    .line 458
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lf/d/a/aa$e;->b()V

    throw v0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 443
    iget-boolean v0, p0, Lf/d/a/aa$e;->d:Z

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lf/d/a/aa$e;->a:Lf/d/a/aa$d;

    invoke-interface {v0, p1}, Lf/d/a/aa$d;->a(Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0}, Lf/d/a/aa$e;->f()V

    .line 447
    :cond_0
    return-void
.end method
