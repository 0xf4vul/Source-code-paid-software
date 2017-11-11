.class final Lcom/google/android/exoplayer2/c/f/p$c;
.super Lcom/google/android/exoplayer2/c/f/p$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c/f/p;

.field private final b:Lcom/google/android/exoplayer2/j/j;

.field private final c:Lcom/google/android/exoplayer2/j/k;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/f/p;I)V
    .locals 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/p$d;-><init>(B)V

    .line 381
    new-instance v0, Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    .line 382
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    .line 383
    iput p2, p0, Lcom/google/android/exoplayer2/c/f/p$c;->d:I

    .line 384
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;ZLcom/google/android/exoplayer2/c/h;)V
    .locals 18

    .prologue
    .line 394
    if-eqz p2, :cond_0

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    .line 397
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/j/k;->a(Lcom/google/android/exoplayer2/j/j;I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    .line 404
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/j;->a:[B

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/j/r;->a([BII)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->g:I

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->a(I)V

    .line 410
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v3, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 412
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    .line 413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    if-ge v2, v3, :cond_2

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/p$c;->g:I

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/j/r;->a([BII)I

    move-result v2

    if-nez v2, :cond_1

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/j/k;->a(Lcom/google/android/exoplayer2/j/j;I)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v2

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/c/f/p;->b(Lcom/google/android/exoplayer2/c/f/p;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/c/f/p;->c(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g;

    move-result-object v3

    if-nez v3, :cond_3

    .line 439
    new-instance v3, Lcom/google/android/exoplayer2/c/f/g$a;

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/c/f/g$a;-><init>(ILjava/lang/String;[B)V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v5}, Lcom/google/android/exoplayer2/c/f/p;->d(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g$b;

    move-result-object v5

    const/16 v6, 0x15

    invoke-interface {v5, v6, v3}, Lcom/google/android/exoplayer2/c/f/g$b;->a(ILcom/google/android/exoplayer2/c/f/g$a;)Lcom/google/android/exoplayer2/c/f/g;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/c/f/p;->a(Lcom/google/android/exoplayer2/c/f/p;Lcom/google/android/exoplayer2/c/f/g;)Lcom/google/android/exoplayer2/c/f/g;

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/c/f/p;->c(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/c/f/g$c;

    const/16 v5, 0x15

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/c/f/g$c;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Lcom/google/android/exoplayer2/c/f/g;->a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V

    .line 444
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->e:I

    add-int/lit8 v3, v3, -0x9

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, -0x4

    move v6, v2

    .line 446
    :goto_1
    if-lez v6, :cond_f

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/j/k;->a(Lcom/google/android/exoplayer2/j/j;I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v4

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v5

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v7

    .line 453
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    .line 2126
    iget v9, v8, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1499
    add-int v10, v9, v7

    .line 1500
    const/4 v3, -0x1

    .line 1501
    const/4 v2, 0x0

    .line 3126
    :goto_2
    iget v11, v8, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1502
    if-ge v11, v10, :cond_b

    .line 1503
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v11

    .line 1504
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v12

    .line 4126
    iget v13, v8, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1505
    add-int/2addr v12, v13

    .line 1506
    const/4 v13, 0x5

    if-ne v11, v13, :cond_7

    .line 1507
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v14

    .line 1508
    invoke-static {}, Lcom/google/android/exoplayer2/c/f/p;->a()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    .line 1509
    const/16 v3, 0x81

    .line 6126
    :cond_4
    :goto_3
    iget v11, v8, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1526
    sub-int v11, v12, v11

    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto :goto_2

    .line 1510
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/c/f/p;->b()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_6

    .line 1511
    const/16 v3, 0x87

    goto :goto_3

    .line 1512
    :cond_6
    invoke-static {}, Lcom/google/android/exoplayer2/c/f/p;->c()J

    move-result-wide v16

    cmp-long v11, v14, v16

    if-nez v11, :cond_4

    .line 1513
    const/16 v3, 0x24

    goto :goto_3

    .line 1515
    :cond_7
    const/16 v13, 0x6a

    if-ne v11, v13, :cond_8

    .line 1516
    const/16 v3, 0x81

    goto :goto_3

    .line 1517
    :cond_8
    const/16 v13, 0x7a

    if-ne v11, v13, :cond_9

    .line 1518
    const/16 v3, 0x87

    goto :goto_3

    .line 1519
    :cond_9
    const/16 v13, 0x7b

    if-ne v11, v13, :cond_a

    .line 1520
    const/16 v3, 0x8a

    goto :goto_3

    .line 1521
    :cond_a
    const/16 v13, 0xa

    if-ne v11, v13, :cond_4

    .line 1522
    new-instance v2, Ljava/lang/String;

    iget-object v11, v8, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 5126
    iget v13, v8, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1522
    const/4 v14, 0x3

    invoke-direct {v2, v11, v13, v14}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1528
    :cond_b
    invoke-virtual {v8, v10}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1529
    new-instance v8, Lcom/google/android/exoplayer2/c/f/g$a;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/c/f/p$c;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v11, v11, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 1530
    invoke-static {v11, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    invoke-direct {v8, v3, v2, v9}, Lcom/google/android/exoplayer2/c/f/g$a;-><init>(ILjava/lang/String;[B)V

    .line 454
    const/4 v2, 0x6

    if-ne v4, v2, :cond_13

    .line 455
    iget v2, v8, Lcom/google/android/exoplayer2/c/f/g$a;->a:I

    .line 457
    :goto_4
    add-int/lit8 v3, v7, 0x5

    sub-int v4, v6, v3

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/c/f/p;->b(Lcom/google/android/exoplayer2/c/f/p;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    .line 460
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v6}, Lcom/google/android/exoplayer2/c/f/p;->e(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_12

    .line 463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v6}, Lcom/google/android/exoplayer2/c/f/p;->e(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 466
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v6}, Lcom/google/android/exoplayer2/c/f/p;->b(Lcom/google/android/exoplayer2/c/f/p;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0x15

    if-ne v2, v6, :cond_e

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->c(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g;

    move-result-object v2

    .line 473
    :goto_6
    if-eqz v2, :cond_c

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v3}, Lcom/google/android/exoplayer2/c/f/p;->a(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseArray;

    move-result-object v3

    new-instance v6, Lcom/google/android/exoplayer2/c/f/p$b;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v7}, Lcom/google/android/exoplayer2/c/f/p;->f(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/n;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/google/android/exoplayer2/c/f/p$b;-><init>(Lcom/google/android/exoplayer2/c/f/g;Lcom/google/android/exoplayer2/c/n;)V

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    move v6, v4

    .line 476
    goto/16 :goto_1

    :cond_d
    move v3, v5

    .line 459
    goto :goto_5

    .line 469
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v6}, Lcom/google/android/exoplayer2/c/f/p;->d(Lcom/google/android/exoplayer2/c/f/p;)Lcom/google/android/exoplayer2/c/f/g$b;

    move-result-object v6

    invoke-interface {v6, v2, v8}, Lcom/google/android/exoplayer2/c/f/g$b;->a(ILcom/google/android/exoplayer2/c/f/g$a;)Lcom/google/android/exoplayer2/c/f/g;

    move-result-object v2

    .line 470
    new-instance v6, Lcom/google/android/exoplayer2/c/f/g$c;

    const/16 v7, 0x2000

    invoke-direct {v6, v3, v7}, Lcom/google/android/exoplayer2/c/f/g$c;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v6}, Lcom/google/android/exoplayer2/c/f/g;->a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V

    goto :goto_6

    .line 477
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->b(Lcom/google/android/exoplayer2/c/f/p;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->g(Lcom/google/android/exoplayer2/c/f/p;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 479
    invoke-interface/range {p3 .. p3}, Lcom/google/android/exoplayer2/c/h;->b()V

    .line 486
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->h(Lcom/google/android/exoplayer2/c/f/p;)Z

    goto/16 :goto_0

    .line 482
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->a(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/f/p$c;->a:Lcom/google/android/exoplayer2/c/f/p;

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/f/p;->a(Lcom/google/android/exoplayer2/c/f/p;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer2/c/f/p$c;->d:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 484
    invoke-interface/range {p3 .. p3}, Lcom/google/android/exoplayer2/c/h;->b()V

    goto :goto_7

    :cond_12
    move v6, v4

    goto/16 :goto_1

    :cond_13
    move v2, v4

    goto/16 :goto_4
.end method
