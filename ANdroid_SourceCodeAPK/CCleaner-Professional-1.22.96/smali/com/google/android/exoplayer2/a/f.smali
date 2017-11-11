.class public final Lcom/google/android/exoplayer2/a/f;
.super Lcom/google/android/exoplayer2/d/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/j/g;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final g:Lcom/google/android/exoplayer2/a/c$a;

.field private final h:Lcom/google/android/exoplayer2/a/d;

.field private i:Z

.field private j:Landroid/media/MediaFormat;

.field private k:I

.field private l:I

.field private m:J

.field private n:Z

.field private o:Z

.field private p:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/d/c;Landroid/os/Handler;Lcom/google/android/exoplayer2/a/c;Lcom/google/android/exoplayer2/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/d/c;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/a/c;",
            "Lcom/google/android/exoplayer2/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-direct {p0, v0, p1, v0}, Lcom/google/android/exoplayer2/d/b;-><init>(ILcom/google/android/exoplayer2/d/c;Z)V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/a/d;

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/a/d;-><init>(Lcom/google/android/exoplayer2/a/b;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/a/c$a;

    invoke-direct {v0, p2, p3}, Lcom/google/android/exoplayer2/a/c$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/a/c;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    .line 140
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 1279
    iget-object v3, v2, Lcom/google/android/exoplayer2/a/d;->c:Lcom/google/android/exoplayer2/a/b;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/google/android/exoplayer2/a/d;->c:Lcom/google/android/exoplayer2/a/b;

    .line 1280
    invoke-static {p1}, Lcom/google/android/exoplayer2/a/d;->a(Ljava/lang/String;)I

    move-result v3

    .line 2088
    iget-object v2, v2, Lcom/google/android/exoplayer2/a/b;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_0

    move v2, v0

    .line 1280
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 2088
    goto :goto_0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_1
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d/d$b;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 145
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 146
    invoke-static {v2}, Lcom/google/android/exoplayer2/j/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/d/c;->a()Lcom/google/android/exoplayer2/d/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 150
    const/4 v0, 0x7

    goto :goto_0

    .line 152
    :cond_1
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/d/c;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/d/a;

    move-result-object v3

    .line 153
    if-nez v3, :cond_2

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_4

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->q:I

    if-eq v2, v5, :cond_3

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->q:I

    .line 1178
    iget-object v4, v3, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v4, :cond_6

    .line 1181
    iget-object v4, v3, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    .line 1182
    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    .line 159
    :goto_1
    if-eqz v2, :cond_5

    :cond_3
    iget v2, p2, Lcom/google/android/exoplayer2/Format;->p:I

    if-eq v2, v5, :cond_4

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->p:I

    .line 1195
    iget-object v4, v3, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v4, :cond_7

    .line 1198
    iget-object v3, v3, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    .line 1199
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-lt v3, v2, :cond_7

    move v2, v1

    .line 161
    :goto_2
    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 162
    :cond_5
    if-eqz v0, :cond_8

    const/4 v0, 0x3

    .line 163
    :goto_3
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_6
    move v2, v0

    .line 1182
    goto :goto_1

    :cond_7
    move v2, v0

    .line 1199
    goto :goto_2

    .line 162
    :cond_8
    const/4 v0, 0x2

    goto :goto_3
.end method

.method protected final a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/d/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d/d$b;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d/c;->a()Lcom/google/android/exoplayer2/d/a;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/a/f;->i:Z

    .line 177
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/f;->i:Z

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/d/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/d/b;->a(ILjava/lang/Object;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 10704
    iget v2, v0, Lcom/google/android/exoplayer2/a/d;->s:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 10705
    iput v1, v0, Lcom/google/android/exoplayer2/a/d;->s:F

    .line 10706
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->d()V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    check-cast p2, Landroid/media/PlaybackParams;

    .line 11695
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a/d$a;->a(Landroid/media/PlaybackParams;)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/d/b;->a(JZ)V

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->e()V

    .line 264
    iput-wide p1, p0, Lcom/google/android/exoplayer2/a/f;->m:J

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/f;->n:Z

    .line 266
    return-void
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 12

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 230
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    const-string/jumbo v2, "mime"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 232
    :goto_1
    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    .line 233
    :cond_0
    const-string/jumbo v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 234
    const-string/jumbo v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 235
    iget-object v3, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    iget v1, p0, Lcom/google/android/exoplayer2/a/f;->k:I

    .line 2356
    packed-switch v6, :pswitch_data_0

    .line 2382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported channel count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 230
    :cond_2
    const-string/jumbo v0, "audio/raw"

    move-object v5, v0

    goto :goto_1

    .line 2358
    :pswitch_0
    const/4 v0, 0x4

    .line 2385
    :goto_2
    const-string/jumbo v2, "audio/raw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move v4, v2

    .line 2387
    :goto_3
    if-eqz v4, :cond_8

    .line 2388
    invoke-static {v5}, Lcom/google/android/exoplayer2/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 2396
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v3, Lcom/google/android/exoplayer2/a/d;->h:I

    if-ne v2, v1, :cond_4

    iget v2, v3, Lcom/google/android/exoplayer2/a/d;->f:I

    if-ne v2, v7, :cond_4

    iget v2, v3, Lcom/google/android/exoplayer2/a/d;->g:I

    if-eq v2, v0, :cond_6

    .line 2402
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a/d;->e()V

    .line 2404
    iput v1, v3, Lcom/google/android/exoplayer2/a/d;->h:I

    .line 2405
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/a/d;->j:Z

    .line 2406
    iput v7, v3, Lcom/google/android/exoplayer2/a/d;->f:I

    .line 2407
    iput v0, v3, Lcom/google/android/exoplayer2/a/d;->g:I

    .line 2408
    if-eqz v4, :cond_9

    :goto_4
    iput v1, v3, Lcom/google/android/exoplayer2/a/d;->i:I

    .line 2409
    mul-int/lit8 v1, v6, 0x2

    iput v1, v3, Lcom/google/android/exoplayer2/a/d;->k:I

    .line 2413
    if-eqz v4, :cond_b

    .line 2416
    iget v0, v3, Lcom/google/android/exoplayer2/a/d;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    iget v0, v3, Lcom/google/android/exoplayer2/a/d;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 2418
    :cond_5
    const/16 v0, 0x5000

    move-object v1, v3

    .line 2431
    :goto_5
    iput v0, v1, Lcom/google/android/exoplayer2/a/d;->l:I

    .line 2435
    if-eqz v4, :cond_f

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_6
    iput-wide v0, v3, Lcom/google/android/exoplayer2/a/d;->m:J

    .line 236
    :cond_6
    return-void

    .line 2361
    :pswitch_1
    const/16 v0, 0xc

    .line 2362
    goto :goto_2

    .line 2364
    :pswitch_2
    const/16 v0, 0x1c

    .line 2365
    goto :goto_2

    .line 2367
    :pswitch_3
    const/16 v0, 0xcc

    .line 2368
    goto :goto_2

    .line 2370
    :pswitch_4
    const/16 v0, 0xdc

    .line 2371
    goto :goto_2

    .line 2373
    :pswitch_5
    const/16 v0, 0xfc

    .line 2374
    goto :goto_2

    .line 2376
    :pswitch_6
    const/16 v0, 0x4fc

    .line 2377
    goto :goto_2

    .line 2379
    :pswitch_7
    sget v0, Lcom/google/android/exoplayer2/b;->a:I

    goto :goto_2

    .line 2385
    :cond_7
    const/4 v2, 0x0

    move v4, v2

    goto :goto_3

    .line 2389
    :cond_8
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    .line 2393
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupported PCM encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2408
    :cond_9
    const/4 v1, 0x2

    goto :goto_4

    .line 2421
    :cond_a
    const v0, 0xc000

    move-object v1, v3

    goto :goto_5

    .line 2424
    :cond_b
    iget v1, v3, Lcom/google/android/exoplayer2/a/d;->i:I

    .line 2425
    invoke-static {v7, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 2426
    const/4 v0, -0x2

    if-eq v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 2427
    mul-int/lit8 v2, v1, 0x4

    .line 2428
    const-wide/32 v6, 0x3d090

    invoke-virtual {v3, v6, v7}, Lcom/google/android/exoplayer2/a/d;->b(J)J

    move-result-wide v6

    long-to-int v0, v6

    iget v5, v3, Lcom/google/android/exoplayer2/a/d;->k:I

    mul-int/2addr v0, v5

    .line 2429
    int-to-long v6, v1

    const-wide/32 v8, 0xb71b0

    .line 2430
    invoke-virtual {v3, v8, v9}, Lcom/google/android/exoplayer2/a/d;->b(J)J

    move-result-wide v8

    iget v1, v3, Lcom/google/android/exoplayer2/a/d;->k:I

    int-to-long v10, v1

    mul-long/2addr v8, v10

    .line 2429
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    .line 2431
    if-ge v2, v0, :cond_d

    move-object v1, v3

    goto :goto_5

    .line 2426
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 2431
    :cond_d
    if-le v2, v1, :cond_e

    move v0, v1

    move-object v1, v3

    goto/16 :goto_5

    :cond_e
    move v0, v2

    move-object v1, v3

    goto/16 :goto_5

    .line 2435
    :cond_f
    iget v0, v3, Lcom/google/android/exoplayer2/a/d;->l:I

    int-to-long v0, v0

    .line 2913
    iget v2, v3, Lcom/google/android/exoplayer2/a/d;->k:I

    int-to-long v4, v2

    div-long/2addr v0, v4

    .line 2435
    invoke-virtual {v3, v0, v1}, Lcom/google/android/exoplayer2/a/d;->a(J)J

    move-result-wide v0

    goto/16 :goto_6

    .line 2356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected final a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a/f;->i:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    const-string/jumbo v2, "audio/raw"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 202
    iput-object v3, p0, Lcom/google/android/exoplayer2/a/f;->j:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    .line 2119
    iget-object v0, v2, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, v2, Lcom/google/android/exoplayer2/a/c$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/a/c$a$2;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/a/c$a$2;-><init>(Lcom/google/android/exoplayer2/a/c$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/d/b;->a(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    .line 3104
    iget-object v2, v0, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    if-eqz v2, :cond_0

    .line 3105
    iget-object v2, v0, Lcom/google/android/exoplayer2/a/c$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/a/c$a$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/a/c$a$1;-><init>(Lcom/google/android/exoplayer2/a/c$a;Lcom/google/android/exoplayer2/b/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_0
    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a/f;->i:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 323
    const/4 v2, 0x1

    .line 383
    :goto_0
    return v2

    .line 326
    :cond_0
    if-eqz p11, :cond_2

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 328
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    iget v3, v2, Lcom/google/android/exoplayer2/b/d;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/b/d;->e:I

    .line 329
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 4529
    iget v3, v2, Lcom/google/android/exoplayer2/a/d;->q:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4530
    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 330
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v2

    if-nez v2, :cond_8

    .line 336
    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    if-nez v2, :cond_7

    .line 337
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/a/d;->a(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    .line 338
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget v3, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    .line 5178
    iget-object v4, v2, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    if-eqz v4, :cond_3

    .line 5179
    iget-object v4, v2, Lcom/google/android/exoplayer2/a/c$a;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/a/c$a$6;

    invoke-direct {v5, v2, v3}, Lcom/google/android/exoplayer2/a/c$a$6;-><init>(Lcom/google/android/exoplayer2/a/c$a;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    :cond_3
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/a/f;->o:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/a/d$d; {:try_start_0 .. :try_end_0} :catch_0

    .line 6069
    iget v2, p0, Lcom/google/android/exoplayer2/a;->b:I

    .line 347
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 348
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/d;->b()V

    .line 364
    :cond_4
    :goto_2
    :try_start_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 9555
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move v4, v2

    .line 9556
    :goto_3
    if-nez v4, :cond_5

    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p6

    if-ne v2, v0, :cond_a

    :cond_5
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 9557
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    .line 9559
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a/d;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9562
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 9563
    const/4 v2, 0x0

    .line 365
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/f;->p:J
    :try_end_1
    .catch Lcom/google/android/exoplayer2/a/d$f; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_6

    .line 373
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/a/f;->n:Z

    .line 377
    :cond_6
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_25

    .line 378
    const/4 v2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 379
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    iget v3, v2, Lcom/google/android/exoplayer2/b/d;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/b/d;->d:I

    .line 380
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    iget v3, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/a/d;->a(I)I
    :try_end_2
    .catch Lcom/google/android/exoplayer2/a/d$d; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v2

    .line 5241
    iget v3, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 345
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v2

    throw v2

    .line 352
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a/f;->o:Z

    .line 353
    iget-object v3, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/a/d;->c()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/a/f;->o:Z

    .line 354
    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a/f;->o:Z

    if-nez v2, :cond_4

    .line 7069
    iget v2, p0, Lcom/google/android/exoplayer2/a;->b:I

    .line 354
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/a/f;->p:J

    sub-long v8, v2, v4

    .line 356
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 7511
    iget-wide v2, v2, Lcom/google/android/exoplayer2/a/d;->m:J

    .line 356
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v6

    .line 357
    iget-object v4, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 8497
    iget v5, v2, Lcom/google/android/exoplayer2/a/d;->l:I

    .line 9149
    iget-object v2, v4, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    if-eqz v2, :cond_4

    .line 9150
    iget-object v2, v4, Lcom/google/android/exoplayer2/a/c$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/a/c$a$4;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/a/c$a$4;-><init>(Lcom/google/android/exoplayer2/a/c$a;IJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 9555
    :cond_9
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 9556
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 9569
    :cond_b
    :try_start_3
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    .line 9570
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/d$a;->b()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_c

    .line 9571
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 9575
    :cond_c
    const/4 v3, 0x0

    .line 9576
    if-eqz v4, :cond_28

    .line 9579
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_d

    .line 9581
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    .line 9582
    const/4 v2, 0x2

    goto/16 :goto_5

    .line 9585
    :cond_d
    iget v2, v6, Lcom/google/android/exoplayer2/a/d;->i:I

    iget v4, v6, Lcom/google/android/exoplayer2/a/d;->h:I

    if-eq v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v6, Lcom/google/android/exoplayer2/a/d;->x:Z

    .line 9586
    iget-boolean v2, v6, Lcom/google/android/exoplayer2/a/d;->x:Z

    if-eqz v2, :cond_27

    .line 9587
    iget v2, v6, Lcom/google/android/exoplayer2/a/d;->i:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 9589
    iget-object v7, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    iget v8, v6, Lcom/google/android/exoplayer2/a/d;->h:I

    iget-object v4, v6, Lcom/google/android/exoplayer2/a/d;->w:Ljava/nio/ByteBuffer;

    .line 9969
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 9970
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    .line 9971
    sub-int v5, v9, v2

    .line 9974
    sparse-switch v8, :sswitch_data_0

    .line 9986
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_3
    .catch Lcom/google/android/exoplayer2/a/d$f; {:try_start_3 .. :try_end_3} :catch_1

    .line 367
    :catch_1
    move-exception v2

    .line 10241
    iget v3, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 367
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v2

    throw v2

    .line 9585
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    .line 9587
    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    .line 9976
    :sswitch_0
    mul-int/lit8 v5, v5, 0x2

    .line 9990
    :goto_8
    if-eqz v4, :cond_10

    :try_start_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    if-ge v10, v5, :cond_11

    .line 9991
    :cond_10
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 9993
    :cond_11
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9994
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9997
    sparse-switch v8, :sswitch_data_1

    .line 10021
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 9979
    :sswitch_1
    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    .line 9980
    goto :goto_8

    .line 9982
    :sswitch_2
    div-int/lit8 v5, v5, 0x2

    goto :goto_8

    .line 10000
    :goto_9
    :sswitch_3
    if-ge v2, v9, :cond_12

    .line 10001
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10002
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10000
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 10007
    :goto_a
    :sswitch_4
    if-ge v2, v9, :cond_12

    .line 10008
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10009
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10007
    add-int/lit8 v2, v2, 0x3

    goto :goto_a

    .line 10014
    :goto_b
    :sswitch_5
    if-ge v2, v9, :cond_12

    .line 10015
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10016
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 10014
    add-int/lit8 v2, v2, 0x4

    goto :goto_b

    .line 10024
    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9589
    iput-object v4, v6, Lcom/google/android/exoplayer2/a/d;->w:Ljava/nio/ByteBuffer;

    .line 9590
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->w:Ljava/nio/ByteBuffer;

    .line 9593
    :goto_c
    iget-boolean v4, v6, Lcom/google/android/exoplayer2/a/d;->j:Z

    if-eqz v4, :cond_14

    iget v4, v6, Lcom/google/android/exoplayer2/a/d;->p:I

    if-nez v4, :cond_14

    .line 9595
    iget v4, v6, Lcom/google/android/exoplayer2/a/d;->i:I

    .line 10045
    const/4 v5, 0x7

    if-eq v4, v5, :cond_13

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1b

    .line 10046
    :cond_13
    invoke-static {v2}, Lcom/google/android/exoplayer2/a/e;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 9595
    :goto_d
    iput v4, v6, Lcom/google/android/exoplayer2/a/d;->p:I

    .line 9597
    :cond_14
    iget v4, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    if-nez v4, :cond_1e

    .line 9598
    const-wide/16 v4, 0x0

    move-wide/from16 v0, p9

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v6, Lcom/google/android/exoplayer2/a/d;->r:J

    .line 9599
    const/4 v4, 0x1

    iput v4, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 9618
    :cond_15
    :goto_e
    sget v4, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_18

    .line 9620
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 9621
    iget-object v5, v6, Lcom/google/android/exoplayer2/a/d;->t:[B

    if-eqz v5, :cond_16

    iget-object v5, v6, Lcom/google/android/exoplayer2/a/d;->t:[B

    array-length v5, v5

    if-ge v5, v4, :cond_17

    .line 9622
    :cond_16
    new-array v5, v4, [B

    iput-object v5, v6, Lcom/google/android/exoplayer2/a/d;->t:[B

    .line 9624
    :cond_17
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 9625
    iget-object v7, v6, Lcom/google/android/exoplayer2/a/d;->t:[B

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 9626
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9627
    const/4 v4, 0x0

    iput v4, v6, Lcom/google/android/exoplayer2/a/d;->u:I

    .line 9631
    :cond_18
    :goto_f
    iget-boolean v4, v6, Lcom/google/android/exoplayer2/a/d;->x:Z

    if-eqz v4, :cond_20

    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->w:Ljava/nio/ByteBuffer;

    move-object v4, v2

    .line 9632
    :goto_10
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 9633
    const/4 v2, 0x0

    .line 9634
    sget v7, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_21

    .line 9636
    iget-wide v8, v6, Lcom/google/android/exoplayer2/a/d;->n:J

    iget-object v7, v6, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    .line 9637
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/a/d$a;->b()J

    move-result-wide v10

    iget v7, v6, Lcom/google/android/exoplayer2/a/d;->k:I

    int-to-long v12, v7

    mul-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v7, v8

    .line 9638
    iget v8, v6, Lcom/google/android/exoplayer2/a/d;->l:I

    sub-int v7, v8, v7

    .line 9639
    if-lez v7, :cond_1a

    .line 9640
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9641
    iget-object v7, v6, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    iget-object v8, v6, Lcom/google/android/exoplayer2/a/d;->t:[B

    iget v9, v6, Lcom/google/android/exoplayer2/a/d;->u:I

    invoke-virtual {v7, v8, v9, v2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 9642
    if-ltz v2, :cond_19

    .line 9643
    iget v7, v6, Lcom/google/android/exoplayer2/a/d;->u:I

    add-int/2addr v7, v2

    iput v7, v6, Lcom/google/android/exoplayer2/a/d;->u:I

    .line 9645
    :cond_19
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9651
    :cond_1a
    :goto_11
    if-gez v2, :cond_22

    .line 9652
    new-instance v3, Lcom/google/android/exoplayer2/a/d$f;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/a/d$f;-><init>(I)V

    throw v3

    .line 10047
    :cond_1b
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1c

    .line 10048
    invoke-static {}, Lcom/google/android/exoplayer2/a/a;->a()I

    move-result v4

    goto/16 :goto_d

    .line 10049
    :cond_1c
    const/4 v5, 0x6

    if-ne v4, v5, :cond_1d

    .line 10050
    invoke-static {v2}, Lcom/google/android/exoplayer2/a/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto/16 :goto_d

    .line 10052
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unexpected audio encoding: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9602
    :cond_1e
    iget-wide v4, v6, Lcom/google/android/exoplayer2/a/d;->r:J

    .line 9603
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a/d;->g()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/exoplayer2/a/d;->a(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 9604
    iget v7, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1f

    sub-long v8, v4, p9

    .line 9605
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x30d40

    cmp-long v7, v8, v10

    if-lez v7, :cond_1f

    .line 9606
    const-string/jumbo v7, "AudioTrack"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Discontinuity detected [expected "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p9

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9608
    const/4 v7, 0x2

    iput v7, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 9610
    :cond_1f
    iget v7, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    .line 9613
    iget-wide v8, v6, Lcom/google/android/exoplayer2/a/d;->r:J

    sub-long v4, p9, v4

    add-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/exoplayer2/a/d;->r:J

    .line 9614
    const/4 v3, 0x1

    iput v3, v6, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 9615
    const/4 v3, 0x1

    goto/16 :goto_e

    :cond_20
    move-object v4, v2

    .line 9631
    goto/16 :goto_10

    .line 9648
    :cond_21
    iget-object v2, v6, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 10059
    const/4 v7, 0x1

    invoke-virtual {v2, v4, v5, v7}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    goto/16 :goto_11

    .line 9655
    :cond_22
    iget-boolean v4, v6, Lcom/google/android/exoplayer2/a/d;->j:Z

    if-nez v4, :cond_23

    .line 9656
    iget-wide v8, v6, Lcom/google/android/exoplayer2/a/d;->n:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/google/android/exoplayer2/a/d;->n:J

    .line 9658
    :cond_23
    if-ne v2, v5, :cond_26

    .line 9659
    iget-boolean v2, v6, Lcom/google/android/exoplayer2/a/d;->j:Z

    if-eqz v2, :cond_24

    .line 9660
    iget-wide v4, v6, Lcom/google/android/exoplayer2/a/d;->o:J

    iget v2, v6, Lcom/google/android/exoplayer2/a/d;->p:I

    int-to-long v8, v2

    add-long/2addr v4, v8

    iput-wide v4, v6, Lcom/google/android/exoplayer2/a/d;->o:J

    .line 9662
    :cond_24
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Lcom/google/android/exoplayer2/a/d$f; {:try_start_4 .. :try_end_4} :catch_1

    .line 9663
    or-int/lit8 v2, v3, 0x2

    goto/16 :goto_5

    .line 383
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_26
    move v2, v3

    goto/16 :goto_5

    :cond_27
    move-object/from16 v2, p6

    goto/16 :goto_c

    :cond_28
    move-object/from16 v2, p6

    goto/16 :goto_f

    .line 9974
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 9997
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method protected final b(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/d/b;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    .line 2134
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/c$a;->b:Lcom/google/android/exoplayer2/a/c;

    if-eqz v1, :cond_0

    .line 2135
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/c$a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/a/c$a$3;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/a/c$a$3;-><init>(Lcom/google/android/exoplayer2/a/c$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_0
    const-string/jumbo v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->r:I

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/a/f;->k:I

    .line 225
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final c()Lcom/google/android/exoplayer2/j/g;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method protected final m()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->m()V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->b()V

    .line 272
    return-void
.end method

.method protected final n()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 3724
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3725
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->h()V

    .line 3726
    iget-object v0, v0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d$a;->a()V

    .line 277
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->n()V

    .line 278
    return-void
.end method

.method protected final o()V
    .locals 3

    .prologue
    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/a/f;->l:I

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 3773
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->e()V

    .line 3774
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a/c$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a/c$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    throw v0

    .line 286
    :catchall_1
    move-exception v0

    .line 287
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a/c$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    throw v0

    .line 289
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/f;->g:Lcom/google/android/exoplayer2/a/c$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/f;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a/c$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    throw v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()J
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/f;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a/d;->a(Z)J

    move-result-wide v0

    .line 308
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 309
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a/f;->n:Z

    if-eqz v2, :cond_1

    .line 310
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/f;->m:J

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/f;->n:Z

    .line 313
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/f;->m:J

    return-wide v0

    .line 309
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/f;->m:J

    .line 310
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final s()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/f;->h:Lcom/google/android/exoplayer2/a/d;

    .line 10672
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10673
    iget-object v1, v0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/a/d$a;->a(J)V

    .line 389
    :cond_0
    return-void
.end method
