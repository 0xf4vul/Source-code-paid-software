.class final Lcom/google/android/exoplayer2/c/f/i;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/f/i$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/google/android/exoplayer2/c/f/m;

.field private final d:Lcom/google/android/exoplayer2/c/f/m;

.field private final e:Lcom/google/android/exoplayer2/c/f/m;

.field private f:J

.field private final g:[Z

.field private h:Lcom/google/android/exoplayer2/c/o;

.field private i:Lcom/google/android/exoplayer2/c/f/o;

.field private j:Lcom/google/android/exoplayer2/c/f/i$a;

.field private k:Z

.field private l:J

.field private final m:Lcom/google/android/exoplayer2/j/k;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->g:[Z

    .line 70
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/c/f/i;->a:Z

    .line 71
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/c/f/i;->b:Z

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    .line 74
    new-instance v0, Lcom/google/android/exoplayer2/c/f/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/m;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->m:Lcom/google/android/exoplayer2/j/k;

    .line 76
    return-void
.end method

.method private a([BII)V
    .locals 22

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/c/f/i;->k:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 9256
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    .line 158
    if-eqz v3, :cond_1

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/c/f/m;->a([BII)V

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 9299
    iget-boolean v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    if-eqz v3, :cond_3

    .line 9302
    sub-int v3, p3, p2

    .line 9303
    iget-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    array-length v4, v4

    iget v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_2

    .line 9304
    iget-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    iget v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    iput-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    .line 9306
    :cond_2
    iget-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    iget v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9307
    iget v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    add-int/2addr v3, v4

    iput v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    .line 9309
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    iget-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->g:[B

    const/4 v5, 0x0

    iget v6, v14, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/j/l;->a([BII)V

    .line 9310
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9313
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 9314
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v15

    .line 9315
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 9319
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9322
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    .line 10194
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 9323
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9326
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    .line 11194
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v16

    .line 9327
    iget-boolean v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    if-nez v3, :cond_4

    .line 9329
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    .line 9330
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 11464
    move/from16 v0, v16

    iput v0, v3, Lcom/google/android/exoplayer2/c/f/i$a$a;->e:I

    .line 11465
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/exoplayer2/c/f/i$a$a;->b:Z

    .line 9340
    :cond_3
    :goto_0
    return-void

    .line 9333
    :cond_4
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9336
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    .line 12194
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v17

    .line 9337
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->e:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_5

    .line 9339
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    goto :goto_0

    .line 9342
    :cond_5
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->e:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/j/i$a;

    .line 9343
    iget-object v4, v14, Lcom/google/android/exoplayer2/c/f/i$a;->d:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/j/i$a;->b:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/j/i$b;

    .line 9344
    iget-boolean v5, v4, Lcom/google/android/exoplayer2/j/i$b;->e:Z

    if-eqz v5, :cond_6

    .line 9345
    iget-object v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9348
    iget-object v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 9350
    :cond_6
    iget-object v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    iget v6, v4, Lcom/google/android/exoplayer2/j/i$b;->g:I

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9353
    const/4 v7, 0x0

    .line 9354
    const/4 v6, 0x0

    .line 9355
    const/4 v5, 0x0

    .line 9356
    iget-object v8, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    iget v9, v4, Lcom/google/android/exoplayer2/j/i$b;->g:I

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v18

    .line 9357
    iget-boolean v8, v4, Lcom/google/android/exoplayer2/j/i$b;->f:Z

    if-nez v8, :cond_7

    .line 9358
    iget-object v7, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9361
    iget-object v7, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v7

    .line 9362
    if-eqz v7, :cond_7

    .line 9363
    iget-object v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9366
    iget-object v5, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v5

    .line 9367
    const/4 v6, 0x1

    .line 9370
    :cond_7
    iget v8, v14, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    move v13, v8

    .line 9371
    :goto_1
    const/4 v8, 0x0

    .line 9372
    if-eqz v13, :cond_8

    .line 9373
    iget-object v8, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 9376
    iget-object v8, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    .line 13194
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v8

    .line 9378
    :cond_8
    const/4 v12, 0x0

    .line 9379
    const/4 v11, 0x0

    .line 9380
    const/4 v10, 0x0

    .line 9381
    const/4 v9, 0x0

    .line 9382
    iget v0, v4, Lcom/google/android/exoplayer2/j/i$b;->h:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 9383
    iget-object v12, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    iget v0, v4, Lcom/google/android/exoplayer2/j/i$b;->i:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/j/l;->b(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 9386
    iget-object v12, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    iget v0, v4, Lcom/google/android/exoplayer2/j/i$b;->i:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v12

    .line 9387
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/j/i$a;->c:Z

    if-eqz v3, :cond_b

    if-nez v7, :cond_b

    .line 9388
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9391
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->c()I

    move-result v3

    move v11, v12

    move/from16 v21, v10

    move v10, v3

    move v3, v9

    move/from16 v9, v21

    .line 9406
    :goto_2
    iget-object v12, v14, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 13472
    iput-object v4, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->c:Lcom/google/android/exoplayer2/j/i$b;

    .line 13473
    iput v15, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->d:I

    .line 13474
    move/from16 v0, v16

    iput v0, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->e:I

    .line 13475
    move/from16 v0, v18

    iput v0, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->f:I

    .line 13476
    move/from16 v0, v17

    iput v0, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->g:I

    .line 13477
    iput-boolean v7, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->h:Z

    .line 13478
    iput-boolean v6, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->i:Z

    .line 13479
    iput-boolean v5, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->j:Z

    .line 13480
    iput-boolean v13, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->k:Z

    .line 13481
    iput v8, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->l:I

    .line 13482
    iput v11, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->m:I

    .line 13483
    iput v10, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->n:I

    .line 13484
    iput v9, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->o:I

    .line 13485
    iput v3, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->p:I

    .line 13486
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->a:Z

    .line 13487
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/google/android/exoplayer2/c/f/i$a$a;->b:Z

    .line 9409
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    goto/16 :goto_0

    .line 9370
    :cond_9
    const/4 v8, 0x0

    move v13, v8

    goto/16 :goto_1

    .line 9393
    :cond_a
    iget v0, v4, Lcom/google/android/exoplayer2/j/i$b;->h:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    iget-boolean v0, v4, Lcom/google/android/exoplayer2/j/i$b;->j:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 9395
    iget-object v10, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 9398
    iget-object v10, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/j/l;->c()I

    move-result v10

    .line 9399
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/j/i$a;->c:Z

    if-eqz v3, :cond_b

    if-nez v7, :cond_b

    .line 9400
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9403
    iget-object v3, v14, Lcom/google/android/exoplayer2/c/f/i$a;->f:Lcom/google/android/exoplayer2/j/l;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/l;->c()I

    move-result v3

    move v9, v10

    move v10, v11

    move v11, v12

    goto :goto_2

    :cond_b
    move v3, v9

    move v9, v10

    move v10, v11

    move v11, v12

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->g:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/f/i$a;->a()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/i;->f:J

    .line 86
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/i;->l:J

    .line 98
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->h:Lcom/google/android/exoplayer2/c/o;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/c/f/i$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/i;->h:Lcom/google/android/exoplayer2/c/o;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/f/i;->a:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c/f/i;->b:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c/f/i$a;-><init>(Lcom/google/android/exoplayer2/c/o;ZZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/c/f/o;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/o;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/i;->i:Lcom/google/android/exoplayer2/c/f/o;

    .line 93
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 22

    .prologue
    .line 102
    .line 1126
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 2109
    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 104
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 107
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/f/i;->f:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer2/c/f/i;->f:J

    .line 108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->h:Lcom/google/android/exoplayer2/c/o;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 112
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->g:[Z

    invoke-static {v13, v4, v12, v5}, Lcom/google/android/exoplayer2/j/i;->a([BII[Z)I

    move-result v14

    .line 114
    if-ne v14, v12, :cond_0

    .line 116
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v12}, Lcom/google/android/exoplayer2/c/f/i;->a([BII)V

    .line 117
    return-void

    .line 121
    :cond_0
    invoke-static {v13, v14}, Lcom/google/android/exoplayer2/j/i;->b([BI)I

    move-result v15

    .line 125
    sub-int v5, v14, v4

    .line 126
    if-lez v5, :cond_1

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/google/android/exoplayer2/c/f/i;->a([BII)V

    .line 129
    :cond_1
    sub-int v6, v12, v14

    .line 130
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/c/f/i;->f:J

    int-to-long v10, v6

    sub-long v16, v8, v10

    .line 134
    if-gez v5, :cond_14

    neg-int v4, v5

    :goto_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/c/f/i;->l:J

    .line 2167
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/c/f/i;->k:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 2256
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    .line 2167
    if-eqz v5, :cond_3

    .line 2168
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    .line 2169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    .line 2170
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/c/f/i;->k:Z

    if-nez v5, :cond_15

    .line 2171
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    .line 3055
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 2171
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    .line 4055
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 2171
    if-eqz v5, :cond_3

    .line 2172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2173
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v7, v7, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget v10, v10, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2174
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v7, v7, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget v10, v10, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2175
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v7, v7, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget v11, v11, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v7, v10, v11}, Lcom/google/android/exoplayer2/j/i;->a([BII)Lcom/google/android/exoplayer2/j/i$b;

    move-result-object v7

    .line 2176
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v10, v10, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget v11, v11, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/j/i;->d([BI)Lcom/google/android/exoplayer2/j/i$a;

    move-result-object v10

    .line 2177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/c/f/i;->h:Lcom/google/android/exoplayer2/c/o;

    const-string/jumbo v18, "video/avc"

    iget v0, v7, Lcom/google/android/exoplayer2/j/i$b;->b:I

    move/from16 v19, v0

    iget v0, v7, Lcom/google/android/exoplayer2/j/i$b;->c:I

    move/from16 v20, v0

    iget v0, v7, Lcom/google/android/exoplayer2/j/i$b;->d:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v5, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;IILjava/util/List;F)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-interface {v11, v5}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2180
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/c/f/i;->k:Z

    .line 2181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/c/f/i$a;->a(Lcom/google/android/exoplayer2/j/i$b;)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    invoke-virtual {v5, v10}, Lcom/google/android/exoplayer2/c/f/i$a;->a(Lcom/google/android/exoplayer2/j/i$a;)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 2184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    .line 2196
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/c/f/m;->b(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    iget v5, v5, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/j/i;->a([BI)I

    move-result v4

    .line 2198
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->m:Lcom/google/android/exoplayer2/j/k;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v7, v7, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    invoke-virtual {v5, v7, v4}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/i;->m:Lcom/google/android/exoplayer2/j/k;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/i;->i:Lcom/google/android/exoplayer2/c/f/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->m:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4, v8, v9, v5}, Lcom/google/android/exoplayer2/c/f/o;->a(JLcom/google/android/exoplayer2/j/k;)V

    .line 2202
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    move-object/from16 v18, v0

    .line 6413
    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_a

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i$a;->m:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 6496
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->a:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->a:Z

    if-eqz v7, :cond_9

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->f:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->f:I

    if-ne v7, v8, :cond_9

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->g:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->g:I

    if-ne v7, v8, :cond_9

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->h:Z

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->h:Z

    if-ne v7, v8, :cond_9

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->i:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->i:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->j:Z

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->j:Z

    if-ne v7, v8, :cond_9

    :cond_5
    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->d:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->d:I

    if-eq v7, v8, :cond_6

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->d:I

    if-eqz v7, :cond_9

    iget v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->d:I

    if-eqz v7, :cond_9

    :cond_6
    iget-object v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->c:Lcom/google/android/exoplayer2/j/i$b;

    iget v7, v7, Lcom/google/android/exoplayer2/j/i$b;->h:I

    if-nez v7, :cond_7

    iget-object v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->c:Lcom/google/android/exoplayer2/j/i$b;

    iget v7, v7, Lcom/google/android/exoplayer2/j/i$b;->h:I

    if-nez v7, :cond_7

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->m:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->m:I

    if-ne v7, v8, :cond_9

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->n:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->n:I

    if-ne v7, v8, :cond_9

    :cond_7
    iget-object v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->c:Lcom/google/android/exoplayer2/j/i$b;

    iget v7, v7, Lcom/google/android/exoplayer2/j/i$b;->h:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->c:Lcom/google/android/exoplayer2/j/i$b;

    iget v7, v7, Lcom/google/android/exoplayer2/j/i$b;->h:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->o:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->o:I

    if-ne v7, v8, :cond_9

    iget v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->p:I

    iget v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->p:I

    if-ne v7, v8, :cond_9

    :cond_8
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->k:Z

    iget-boolean v8, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->k:Z

    if-ne v7, v8, :cond_9

    iget-boolean v7, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->k:Z

    if-eqz v7, :cond_17

    iget-boolean v7, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->k:Z

    if-eqz v7, :cond_17

    iget v4, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->l:I

    iget v5, v5, Lcom/google/android/exoplayer2/c/f/i$a$a;->l:I

    if-eq v4, v5, :cond_17

    :cond_9
    const/4 v4, 0x1

    .line 6414
    :goto_3
    if-eqz v4, :cond_c

    .line 6416
    :cond_a
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->o:Z

    if-eqz v4, :cond_b

    .line 6417
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->j:J

    sub-long v4, v16, v4

    long-to-int v4, v4

    .line 6418
    add-int v10, v6, v4

    .line 7430
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->r:Z

    if-eqz v4, :cond_18

    const/4 v8, 0x1

    .line 7431
    :goto_4
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->j:J

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/f/i$a;->p:J

    sub-long/2addr v4, v6

    long-to-int v9, v4

    .line 7432
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i$a;->a:Lcom/google/android/exoplayer2/c/o;

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/exoplayer2/c/f/i$a;->q:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 6420
    :cond_b
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->j:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->p:J

    .line 6421
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->l:J

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->q:J

    .line 6422
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->r:Z

    .line 6423
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->o:Z

    .line 6425
    :cond_c
    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/c/f/i$a;->r:Z

    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_e

    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->b:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, v18

    iget v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1a

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 7491
    iget-boolean v6, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->b:Z

    if-eqz v6, :cond_19

    iget v6, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->e:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_d

    iget v4, v4, Lcom/google/android/exoplayer2/c/f/i$a$a;->e:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_19

    :cond_d
    const/4 v4, 0x1

    .line 6426
    :goto_5
    if-eqz v4, :cond_1a

    :cond_e
    const/4 v4, 0x1

    :goto_6
    or-int/2addr v4, v5

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/c/f/i$a;->r:Z

    .line 137
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/c/f/i;->l:J

    .line 8149
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/c/f/i;->k:Z

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 8256
    iget-boolean v6, v6, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    .line 8149
    if-eqz v6, :cond_10

    .line 8150
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 8151
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 8153
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/i;->e:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v6, v15}, Lcom/google/android/exoplayer2/c/f/m;->a(I)V

    .line 8154
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    .line 8274
    iput v15, v6, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    .line 8275
    iput-wide v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->l:J

    .line 8276
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/google/android/exoplayer2/c/f/i$a;->j:J

    .line 8277
    iget-boolean v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->b:Z

    if-eqz v4, :cond_11

    iget v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    :cond_11
    iget-boolean v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->c:Z

    if-eqz v4, :cond_13

    iget v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_12

    iget v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    iget v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 8282
    :cond_12
    iget-object v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->m:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 8283
    iget-object v5, v6, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    iput-object v5, v6, Lcom/google/android/exoplayer2/c/f/i$a;->m:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 8284
    iput-object v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    .line 8285
    iget-object v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->n:Lcom/google/android/exoplayer2/c/f/i$a$a;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/c/f/i$a$a;->a()V

    .line 8286
    const/4 v4, 0x0

    iput v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->h:I

    .line 8287
    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/google/android/exoplayer2/c/f/i$a;->k:Z

    .line 139
    :cond_13
    add-int/lit8 v4, v14, 0x3

    .line 140
    goto/16 :goto_0

    .line 134
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2186
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    .line 5055
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 2186
    if-eqz v5, :cond_16

    .line 2187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v5, v5, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    iget v10, v10, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v5, v7, v10}, Lcom/google/android/exoplayer2/j/i;->a([BII)Lcom/google/android/exoplayer2/j/i$b;

    move-result-object v5

    .line 2188
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/c/f/i$a;->a(Lcom/google/android/exoplayer2/j/i$b;)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->c:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    goto/16 :goto_2

    .line 2190
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    .line 6055
    iget-boolean v5, v5, Lcom/google/android/exoplayer2/c/f/m;->a:Z

    .line 2190
    if-eqz v5, :cond_3

    .line 2191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget-object v5, v5, Lcom/google/android/exoplayer2/c/f/m;->b:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    iget v7, v7, Lcom/google/android/exoplayer2/c/f/m;->c:I

    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/j/i;->d([BI)Lcom/google/android/exoplayer2/j/i$a;

    move-result-object v5

    .line 2192
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/f/i;->j:Lcom/google/android/exoplayer2/c/f/i$a;

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/c/f/i$a;->a(Lcom/google/android/exoplayer2/j/i$a;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/c/f/i;->d:Lcom/google/android/exoplayer2/c/f/m;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/c/f/m;->a()V

    goto/16 :goto_2

    .line 6496
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 7430
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 7491
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 6426
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_6
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
