.class final Lcom/google/android/exoplayer2/f/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/f/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/f/a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/f/a;I)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/a$c;->b:Lcom/google/android/exoplayer2/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput p2, p0, Lcom/google/android/exoplayer2/f/a$c;->a:I

    .line 517
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;)I
    .locals 11

    .prologue
    .line 531
    iget-object v1, p0, Lcom/google/android/exoplayer2/f/a$c;->b:Lcom/google/android/exoplayer2/f/a;

    iget v0, p0, Lcom/google/android/exoplayer2/f/a$c;->a:I

    .line 2310
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/f/a;->l:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/f/a;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2311
    :cond_0
    const/4 v0, -0x3

    .line 3281
    :goto_0
    return v0

    .line 2314
    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/c/d;

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/f/a;->q:Z

    iget-wide v2, v1, Lcom/google/android/exoplayer2/f/a;->p:J

    .line 3258
    iget-object v1, v7, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    iget-object v4, v7, Lcom/google/android/exoplayer2/c/d;->g:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/exoplayer2/c/d$b;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/c/d$a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3283
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3260
    :pswitch_0
    if-eqz v0, :cond_2

    .line 4063
    const/4 v0, 0x4

    iput v0, p2, Lcom/google/android/exoplayer2/b/a;->a:I

    .line 3262
    const/4 v0, -0x4

    goto :goto_0

    .line 3264
    :cond_2
    const/4 v0, -0x3

    goto :goto_0

    .line 3266
    :pswitch_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    iput-object v0, v7, Lcom/google/android/exoplayer2/c/d;->g:Lcom/google/android/exoplayer2/Format;

    .line 3267
    const/4 v0, -0x5

    goto :goto_0

    .line 3269
    :pswitch_2
    iget-wide v0, p2, Lcom/google/android/exoplayer2/b/e;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 3270
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/b/e;->a(I)V

    .line 3273
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3274
    iget-object v10, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    .line 4298
    iget-wide v0, v10, Lcom/google/android/exoplayer2/c/d$a;->b:J

    .line 4301
    iget-object v2, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/j/k;->a(I)V

    .line 4302
    iget-object v2, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/c/d;->a(J[BI)V

    .line 4303
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 4304
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 4305
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 4306
    :goto_1
    and-int/lit8 v1, v1, 0x7f

    .line 4309
    iget-object v4, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v4, v4, Lcom/google/android/exoplayer2/b/b;->a:[B

    if-nez v4, :cond_4

    .line 4310
    iget-object v4, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/google/android/exoplayer2/b/b;->a:[B

    .line 4312
    :cond_4
    iget-object v4, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v4, v4, Lcom/google/android/exoplayer2/b/b;->a:[B

    invoke-virtual {v7, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/c/d;->a(J[BI)V

    .line 4313
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 4317
    if-eqz v0, :cond_a

    .line 4318
    iget-object v1, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/j/k;->a(I)V

    .line 4319
    iget-object v1, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v4, 0x2

    invoke-virtual {v7, v2, v3, v1, v4}, Lcom/google/android/exoplayer2/c/d;->a(J[BI)V

    .line 4320
    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 4321
    iget-object v1, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v1

    .line 4327
    :goto_2
    iget-object v4, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v4, v4, Lcom/google/android/exoplayer2/b/b;->d:[I

    .line 4328
    if-eqz v4, :cond_5

    array-length v5, v4

    if-ge v5, v1, :cond_6

    .line 4329
    :cond_5
    new-array v4, v1, [I

    .line 4331
    :cond_6
    iget-object v5, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v5, v5, Lcom/google/android/exoplayer2/b/b;->e:[I

    .line 4332
    if-eqz v5, :cond_7

    array-length v6, v5

    if-ge v6, v1, :cond_8

    .line 4333
    :cond_7
    new-array v5, v1, [I

    .line 4335
    :cond_8
    if-eqz v0, :cond_e

    .line 4336
    mul-int/lit8 v0, v1, 0x6

    .line 4337
    iget-object v6, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/j/k;->a(I)V

    .line 4338
    iget-object v6, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    iget-object v6, v6, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-virtual {v7, v2, v3, v6, v0}, Lcom/google/android/exoplayer2/c/d;->a(J[BI)V

    .line 4339
    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 4340
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 4341
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_b

    .line 4342
    iget-object v6, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v6

    aput v6, v4, v0

    .line 4343
    iget-object v6, v7, Lcom/google/android/exoplayer2/c/d;->e:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v6

    aput v6, v5, v0

    .line 4341
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4305
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 4323
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    :cond_b
    move-wide v8, v2

    .line 4351
    :goto_4
    iget-object v6, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v0, v10, Lcom/google/android/exoplayer2/c/d$a;->d:[B

    iget-object v2, p2, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/b/b;->a:[B

    .line 5064
    iput v1, v6, Lcom/google/android/exoplayer2/b/b;->f:I

    .line 5065
    iput-object v4, v6, Lcom/google/android/exoplayer2/b/b;->d:[I

    .line 5066
    iput-object v5, v6, Lcom/google/android/exoplayer2/b/b;->e:[I

    .line 5067
    iput-object v0, v6, Lcom/google/android/exoplayer2/b/b;->b:[B

    .line 5068
    iput-object v2, v6, Lcom/google/android/exoplayer2/b/b;->a:[B

    .line 5069
    const/4 v0, 0x1

    iput v0, v6, Lcom/google/android/exoplayer2/b/b;->c:I

    .line 5070
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_c

    .line 5096
    iget-object v0, v6, Lcom/google/android/exoplayer2/b/b;->g:Landroid/media/MediaCodec$CryptoInfo;

    iget v1, v6, Lcom/google/android/exoplayer2/b/b;->f:I

    iget-object v2, v6, Lcom/google/android/exoplayer2/b/b;->d:[I

    iget-object v3, v6, Lcom/google/android/exoplayer2/b/b;->e:[I

    iget-object v4, v6, Lcom/google/android/exoplayer2/b/b;->b:[B

    iget-object v5, v6, Lcom/google/android/exoplayer2/b/b;->a:[B

    iget v6, v6, Lcom/google/android/exoplayer2/b/b;->c:I

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 4355
    :cond_c
    iget-wide v0, v10, Lcom/google/android/exoplayer2/c/d$a;->b:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    .line 4356
    iget-wide v2, v10, Lcom/google/android/exoplayer2/c/d$a;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v10, Lcom/google/android/exoplayer2/c/d$a;->b:J

    .line 4357
    iget v1, v10, Lcom/google/android/exoplayer2/c/d$a;->a:I

    sub-int v0, v1, v0

    iput v0, v10, Lcom/google/android/exoplayer2/c/d$a;->a:I

    .line 3277
    :cond_d
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    iget v0, v0, Lcom/google/android/exoplayer2/c/d$a;->a:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/b/e;->c(I)V

    .line 3278
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/d$a;->b:J

    iget-object v5, p2, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    iget-object v2, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    iget v2, v2, Lcom/google/android/exoplayer2/c/d$a;->a:I

    move v4, v2

    move-wide v2, v0

    .line 5369
    :goto_5
    if-lez v4, :cond_f

    .line 5370
    invoke-virtual {v7, v2, v3}, Lcom/google/android/exoplayer2/c/d;->b(J)V

    .line 5371
    iget-wide v0, v7, Lcom/google/android/exoplayer2/c/d;->f:J

    sub-long v0, v2, v0

    long-to-int v1, v0

    .line 5372
    iget v0, v7, Lcom/google/android/exoplayer2/c/d;->a:I

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 5373
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->c:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i/a;

    .line 5374
    iget-object v8, v0, Lcom/google/android/exoplayer2/i/a;->a:[B

    .line 6050
    iget v0, v0, Lcom/google/android/exoplayer2/i/a;->b:I

    add-int/2addr v0, v1

    .line 5374
    invoke-virtual {v5, v8, v0, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 5375
    int-to-long v0, v6

    add-long/2addr v0, v2

    .line 5376
    sub-int v2, v4, v6

    move v4, v2

    move-wide v2, v0

    .line 5377
    goto :goto_5

    .line 4346
    :cond_e
    const/4 v0, 0x0

    const/4 v6, 0x0

    aput v6, v4, v0

    .line 4347
    const/4 v0, 0x0

    iget v6, v10, Lcom/google/android/exoplayer2/c/d$a;->a:I

    iget-wide v8, v10, Lcom/google/android/exoplayer2/c/d$a;->b:J

    sub-long v8, v2, v8

    long-to-int v8, v8

    sub-int/2addr v6, v8

    aput v6, v5, v0

    move-wide v8, v2

    goto/16 :goto_4

    .line 3280
    :cond_f
    iget-object v0, v7, Lcom/google/android/exoplayer2/c/d;->d:Lcom/google/android/exoplayer2/c/d$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/d$a;->c:J

    invoke-virtual {v7, v0, v1}, Lcom/google/android/exoplayer2/c/d;->b(J)V

    .line 3281
    const/4 v0, -0x4

    goto/16 :goto_0

    .line 3258
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$c;->b:Lcom/google/android/exoplayer2/f/a;

    .line 7049
    iget-object v0, v0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    .line 536
    iget v1, p0, Lcom/google/android/exoplayer2/f/a$c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/d;->a(J)Z

    .line 537
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$c;->b:Lcom/google/android/exoplayer2/f/a;

    iget v1, p0, Lcom/google/android/exoplayer2/f/a$c;->a:I

    .line 1302
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/f/a;->q:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f/a;->j()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/f/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/c/d;

    .line 2187
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/d;->b:Lcom/google/android/exoplayer2/c/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/c/d$b;->b()Z

    move-result v0

    .line 1302
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 521
    goto :goto_0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/a$c;->b:Lcom/google/android/exoplayer2/f/a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/f/a;->i()V

    .line 527
    return-void
.end method
