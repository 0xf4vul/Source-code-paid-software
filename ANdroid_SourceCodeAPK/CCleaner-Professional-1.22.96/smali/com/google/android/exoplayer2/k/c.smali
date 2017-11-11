.class public final Lcom/google/android/exoplayer2/k/c;
.super Lcom/google/android/exoplayer2/d/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k/c$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private final g:Lcom/google/android/exoplayer2/k/d;

.field private final h:Lcom/google/android/exoplayer2/k/e$a;

.field private final i:J

.field private final j:I

.field private final k:I

.field private final l:Z

.field private m:[Lcom/google/android/exoplayer2/Format;

.field private n:Lcom/google/android/exoplayer2/k/c$a;

.field private o:Landroid/view/Surface;

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/d/c;Landroid/os/Handler;Lcom/google/android/exoplayer2/k/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/d/c;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/k/e;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, -0x1

    .line 153
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2, v1}, Lcom/google/android/exoplayer2/d/b;-><init>(ILcom/google/android/exoplayer2/d/c;Z)V

    .line 154
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->j:I

    .line 155
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/exoplayer2/k/c;->i:J

    .line 156
    const/16 v2, 0x32

    iput v2, p0, Lcom/google/android/exoplayer2/k/c;->k:I

    .line 157
    new-instance v2, Lcom/google/android/exoplayer2/k/d;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/k/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/k/c;->g:Lcom/google/android/exoplayer2/k/d;

    .line 158
    new-instance v2, Lcom/google/android/exoplayer2/k/e$a;

    invoke-direct {v2, p3, p4}, Lcom/google/android/exoplayer2/k/e$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/k/e;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    .line 1620
    sget v2, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    const-string/jumbo v2, "foster"

    sget-object v3, Lcom/google/android/exoplayer2/j/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "NVIDIA"

    sget-object v3, Lcom/google/android/exoplayer2/j/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->l:Z

    .line 160
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    .line 161
    iput v4, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    .line 162
    iput v4, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    .line 163
    iput v5, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    .line 164
    iput v5, p0, Lcom/google/android/exoplayer2/k/c;->v:F

    .line 165
    iput v4, p0, Lcom/google/android/exoplayer2/k/c;->A:I

    .line 166
    iput v4, p0, Lcom/google/android/exoplayer2/k/c;->B:I

    .line 167
    iput v5, p0, Lcom/google/android/exoplayer2/k/c;->D:F

    .line 168
    return-void

    :cond_0
    move v0, v1

    .line 1620
    goto :goto_0
.end method

.method private a(Landroid/media/MediaCodec;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k/c;->r()V

    .line 462
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 464
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 465
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    iget v1, v0, Lcom/google/android/exoplayer2/b/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/b/d;->d:I

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->t:I

    .line 467
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    if-nez v0, :cond_0

    .line 468
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k/e$a;->a(Landroid/view/Surface;)V

    .line 471
    :cond_0
    return-void
.end method

.method private a(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k/c;->r()V

    .line 476
    const-string/jumbo v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 478
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    iget v1, v0, Lcom/google/android/exoplayer2/b/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/b/d;->d:I

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->t:I

    .line 481
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k/e$a;->a(Landroid/view/Surface;)V

    .line 485
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {p0}, Lcom/google/android/exoplayer2/k/c;->d(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/k/c;->d(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 633
    goto :goto_0
.end method

.method private static c(Lcom/google/android/exoplayer2/Format;)I
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, -0x1

    .line 535
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->f:I

    if-eq v3, v2, :cond_0

    .line 537
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->f:I

    .line 579
    :goto_0
    return v0

    .line 540
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/Format;->i:I

    if-eq v3, v2, :cond_1

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v3, v2, :cond_2

    :cond_1
    move v0, v2

    .line 542
    goto :goto_0

    .line 548
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v3, v2

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 576
    goto :goto_0

    .line 548
    :sswitch_0
    const-string/jumbo v4, "video/3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "video/mp4v-es"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "video/avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    .line 551
    :pswitch_0
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    mul-int/2addr v1, v2

    .line 579
    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    goto :goto_0

    .line 555
    :pswitch_1
    const-string/jumbo v1, "BRAVIA 4K 2015"

    sget-object v3, Lcom/google/android/exoplayer2/j/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 558
    goto :goto_0

    .line 561
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->i:I

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    add-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x10

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    .line 563
    goto :goto_2

    .line 566
    :pswitch_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    mul-int/2addr v1, v2

    .line 568
    goto :goto_2

    .line 571
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    mul-int/2addr v0, v2

    move v5, v1

    move v1, v0

    move v0, v5

    .line 573
    goto :goto_2

    .line 548
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static d(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .prologue
    .line 642
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:I

    goto :goto_0
.end method

.method private r()V
    .locals 7

    .prologue
    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->A:I

    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->B:I

    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->C:I

    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->D:F

    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget v2, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    iget v3, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    iget v4, p0, Lcom/google/android/exoplayer2/k/c;->y:I

    iget v5, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    .line 13187
    iget-object v0, v1, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v0, :cond_1

    .line 13188
    iget-object v6, v1, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/k/e$a$5;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/k/e$a$5;-><init>(Lcom/google/android/exoplayer2/k/e$a;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->A:I

    .line 589
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->B:I

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->y:I

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->C:I

    .line 591
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->D:F

    .line 593
    :cond_2
    return-void
.end method

.method private w()V
    .locals 8

    .prologue
    .line 596
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->s:I

    if-lez v0, :cond_1

    .line 597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 598
    iget-wide v2, p0, Lcom/google/android/exoplayer2/k/c;->r:J

    sub-long v2, v0, v2

    .line 599
    iget-object v4, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget v5, p0, Lcom/google/android/exoplayer2/k/c;->s:I

    .line 14172
    iget-object v6, v4, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v6, :cond_0

    .line 14173
    iget-object v6, v4, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/exoplayer2/k/e$a$4;

    invoke-direct {v7, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/k/e$a$4;-><init>(Lcom/google/android/exoplayer2/k/e$a;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/k/c;->s:I

    .line 601
    iput-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->r:J

    .line 603
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d/d$b;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 173
    iget-object v4, p2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 174
    invoke-static {v4}, Lcom/google/android/exoplayer2/j/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return v1

    .line 178
    :cond_0
    iget-object v5, p2, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 179
    if-eqz v5, :cond_1

    move v0, v1

    move v2, v1

    .line 180
    :goto_1
    iget v6, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->b:I

    if-ge v0, v6, :cond_2

    .line 2102
    iget-object v6, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->a:[Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    aget-object v6, v6, v0

    .line 181
    iget-boolean v6, v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    or-int/2addr v2, v6

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 184
    :cond_2
    invoke-interface {p1, v4, v2}, Lcom/google/android/exoplayer2/d/c;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/d/a;

    move-result-object v4

    .line 186
    if-nez v4, :cond_3

    move v1, v3

    .line 187
    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 2106
    if-eqz v2, :cond_4

    iget-object v0, v4, Lcom/google/android/exoplayer2/d/a;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_4
    move v0, v3

    .line 191
    :goto_2
    if-eqz v0, :cond_22

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->i:I

    if-lez v2, :cond_22

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->j:I

    if-lez v2, :cond_22

    .line 192
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    .line 193
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->k:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1d

    .line 194
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->j:I

    iget v5, p2, Lcom/google/android/exoplayer2/Format;->k:F

    float-to-double v6, v5

    .line 3160
    iget-object v5, v4, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v5, :cond_5

    .line 3163
    iget-object v5, v4, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v5

    .line 3164
    if-eqz v5, :cond_5

    invoke-virtual {v5, v0, v2, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    :cond_5
    move v3, v1

    .line 204
    :cond_6
    :goto_3
    iget-boolean v0, v4, Lcom/google/android/exoplayer2/d/a;->b:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x8

    move v1, v0

    .line 205
    :goto_4
    if-eqz v3, :cond_21

    const/4 v0, 0x3

    .line 206
    :goto_5
    or-int/2addr v1, v0

    goto :goto_0

    .line 2168
    :cond_7
    if-eqz v2, :cond_18

    .line 2171
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2172
    const-string/jumbo v5, "avc1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "avc3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2173
    :cond_8
    const-string/jumbo v0, "video/avc"

    .line 2110
    :goto_6
    if-nez v0, :cond_19

    move v0, v3

    .line 2111
    goto :goto_2

    .line 2174
    :cond_9
    const-string/jumbo v5, "hev1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "hvc1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2175
    :cond_a
    const-string/jumbo v0, "video/hevc"

    goto :goto_6

    .line 2176
    :cond_b
    const-string/jumbo v5, "vp9"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2177
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_6

    .line 2178
    :cond_c
    const-string/jumbo v5, "vp8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2179
    const-string/jumbo v0, "video/x-vnd.on2.vp8"

    goto :goto_6

    .line 2180
    :cond_d
    const-string/jumbo v5, "mp4a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2181
    const-string/jumbo v0, "audio/mp4a-latm"

    goto :goto_6

    .line 2182
    :cond_e
    const-string/jumbo v5, "ac-3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "dac3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2183
    :cond_f
    const-string/jumbo v0, "audio/ac3"

    goto :goto_6

    .line 2184
    :cond_10
    const-string/jumbo v5, "ec-3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string/jumbo v5, "dec3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2185
    :cond_11
    const-string/jumbo v0, "audio/eac3"

    goto :goto_6

    .line 2186
    :cond_12
    const-string/jumbo v5, "dtsc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "dtse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2187
    :cond_13
    const-string/jumbo v0, "audio/vnd.dts"

    goto/16 :goto_6

    .line 2188
    :cond_14
    const-string/jumbo v5, "dtsh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "dtsl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2189
    :cond_15
    const-string/jumbo v0, "audio/vnd.dts.hd"

    goto/16 :goto_6

    .line 2190
    :cond_16
    const-string/jumbo v5, "opus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2191
    const-string/jumbo v0, "audio/opus"

    goto/16 :goto_6

    .line 2192
    :cond_17
    const-string/jumbo v5, "vorbis"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2193
    const-string/jumbo v0, "audio/vorbis"

    goto/16 :goto_6

    .line 2195
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2113
    :cond_19
    iget-object v5, v4, Lcom/google/android/exoplayer2/d/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2116
    invoke-static {v2}, Lcom/google/android/exoplayer2/d/d;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 2117
    if-nez v5, :cond_1a

    move v0, v3

    .line 2119
    goto/16 :goto_2

    .line 2121
    :cond_1a
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/d/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    move v2, v1

    :goto_7
    if-ge v2, v7, :cond_1c

    aget-object v8, v6, v2

    .line 2122
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v9, v0, :cond_1b

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v8, v0, :cond_1b

    move v0, v3

    .line 2124
    goto/16 :goto_2

    .line 2121
    :cond_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1c
    move v0, v1

    .line 2127
    goto/16 :goto_2

    .line 197
    :cond_1d
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->j:I

    .line 4141
    iget-object v5, v4, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v5, :cond_1e

    .line 4144
    iget-object v5, v4, Lcom/google/android/exoplayer2/d/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v5

    .line 4145
    if-eqz v5, :cond_1e

    invoke-virtual {v5, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1e
    move v3, v1

    goto/16 :goto_3

    .line 200
    :cond_1f
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->i:I

    iget v2, p2, Lcom/google/android/exoplayer2/Format;->j:I

    mul-int/2addr v0, v2

    invoke-static {}, Lcom/google/android/exoplayer2/d/d;->b()I

    move-result v2

    if-le v0, v2, :cond_6

    move v3, v1

    goto/16 :goto_3

    .line 204
    :cond_20
    const/4 v0, 0x4

    move v1, v0

    goto/16 :goto_4

    .line 205
    :cond_21
    const/4 v0, 0x2

    goto/16 :goto_5

    :cond_22
    move v3, v0

    goto/16 :goto_3
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 284
    if-ne p1, v1, :cond_2

    .line 285
    check-cast p2, Landroid/view/Surface;

    .line 7292
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    if-eq v0, p2, :cond_1

    .line 7295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    .line 7296
    iput-object p2, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    .line 8069
    iget v0, p0, Lcom/google/android/exoplayer2/a;->b:I

    .line 7298
    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7299
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k/c;->v()V

    .line 7300
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k/c;->t()V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/d/b;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected final a(JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/d/b;->a(JZ)V

    .line 225
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    .line 226
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->t:I

    .line 227
    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/k/c;->i:J

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    .line 229
    return-void

    .line 228
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0
.end method

.method protected final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .prologue
    .line 332
    const-string/jumbo v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-left"

    .line 333
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "crop-top"

    .line 334
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 335
    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v0, "crop-right"

    .line 336
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 337
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    .line 338
    if-eqz v1, :cond_4

    const-string/jumbo v0, "crop-bottom"

    .line 339
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 340
    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    .line 341
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->v:F

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    .line 342
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 346
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->u:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->u:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 347
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    .line 348
    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    iput v1, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    .line 357
    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->j:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 358
    return-void

    .line 334
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 336
    :cond_3
    const-string/jumbo v0, "width"

    .line 337
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 339
    :cond_4
    const-string/jumbo v0, "height"

    .line 340
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 354
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/k/c;->u:I

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->y:I

    goto :goto_3
.end method

.method protected final a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v5, p0, Lcom/google/android/exoplayer2/k/c;->m:[Lcom/google/android/exoplayer2/Format;

    .line 8514
    iget v2, p2, Lcom/google/android/exoplayer2/Format;->i:I

    .line 8515
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->j:I

    .line 8516
    invoke-static {p2}, Lcom/google/android/exoplayer2/k/c;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 8517
    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, v5, v3

    .line 8518
    invoke-static {p2, v7}, Lcom/google/android/exoplayer2/k/c;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8519
    iget v8, v7, Lcom/google/android/exoplayer2/Format;->i:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8520
    iget v8, v7, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8521
    invoke-static {v7}, Lcom/google/android/exoplayer2/k/c;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8517
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8524
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/k/c$a;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/exoplayer2/k/c$a;-><init>(III)V

    .line 311
    iput-object v3, p0, Lcom/google/android/exoplayer2/k/c;->n:Lcom/google/android/exoplayer2/k/c$a;

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->n:Lcom/google/android/exoplayer2/k/c$a;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k/c;->l:Z

    .line 9490
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->b()Landroid/media/MediaFormat;

    move-result-object v2

    .line 9492
    const-string/jumbo v3, "max-width"

    iget v5, v0, Lcom/google/android/exoplayer2/k/c$a;->a:I

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9493
    const-string/jumbo v3, "max-height"

    iget v5, v0, Lcom/google/android/exoplayer2/k/c$a;->b:I

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9495
    iget v3, v0, Lcom/google/android/exoplayer2/k/c$a;->c:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 9496
    const-string/jumbo v3, "max-input-size"

    iget v0, v0, Lcom/google/android/exoplayer2/k/c$a;->c:I

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9499
    :cond_2
    if-eqz v1, :cond_3

    .line 9500
    const-string/jumbo v0, "auto-frc"

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    invoke-virtual {p1, v2, v0, p3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 314
    return-void
.end method

.method protected final a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 319
    iget-object v2, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    .line 10143
    iget-object v0, v2, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v0, :cond_0

    .line 10144
    iget-object v0, v2, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/k/e$a$2;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/k/e$a$2;-><init>(Lcom/google/android/exoplayer2/k/e$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
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
    .line 211
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/d/b;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    .line 5128
    iget-object v2, v0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v2, :cond_0

    .line 5129
    iget-object v2, v0, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/k/e$a$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/k/e$a$1;-><init>(Lcom/google/android/exoplayer2/k/e$a;Lcom/google/android/exoplayer2/b/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->g:Lcom/google/android/exoplayer2/k/d;

    .line 6090
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/k/d;->h:Z

    .line 6091
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/k/d;->b:Z

    if-eqz v1, :cond_1

    .line 6092
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/d;->a:Lcom/google/android/exoplayer2/k/d$a;

    .line 6244
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    :cond_1
    return-void
.end method

.method protected final a([Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/exoplayer2/k/c;->m:[Lcom/google/android/exoplayer2/Format;

    .line 219
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/d/b;->a([Lcom/google/android/exoplayer2/Format;)V

    .line 220
    return-void
.end method

.method protected final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 21

    .prologue
    .line 374
    if-eqz p11, :cond_0

    .line 11440
    const-string/jumbo v4, "skipVideoBuffer"

    invoke-static {v4}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 11441
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 11442
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 11443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    iget v5, v4, Lcom/google/android/exoplayer2/b/d;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer2/b/d;->e:I

    .line 376
    const/4 v4, 0x1

    .line 436
    :goto_0
    return v4

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/k/c;->p:Z

    if-nez v4, :cond_2

    .line 380
    sget v4, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 381
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/k/c;->a(Landroid/media/MediaCodec;IJ)V

    .line 385
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 383
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/k/c;->a(Landroid/media/MediaCodec;I)V

    goto :goto_1

    .line 12069
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/a;->b:I

    .line 388
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 389
    const/4 v4, 0x0

    goto :goto_0

    .line 393
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    .line 394
    sub-long v6, p9, p1

    sub-long v4, v6, v4

    .line 397
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 398
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v6, v12, v4

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/k/c;->g:Lcom/google/android/exoplayer2/k/d;

    .line 12115
    const-wide/16 v4, 0x3e8

    mul-long v10, p9, v4

    .line 12121
    iget-boolean v4, v14, Lcom/google/android/exoplayer2/k/d;->h:Z

    if-eqz v4, :cond_a

    .line 12123
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->e:J

    cmp-long v4, p9, v4

    if-eqz v4, :cond_4

    .line 12124
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->k:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->k:J

    .line 12125
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->g:J

    iput-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->f:J

    .line 12127
    :cond_4
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->k:J

    const-wide/16 v8, 0x6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_9

    .line 12132
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->j:J

    sub-long v4, v10, v4

    iget-wide v8, v14, Lcom/google/android/exoplayer2/k/d;->k:J

    div-long/2addr v4, v8

    .line 12135
    iget-wide v8, v14, Lcom/google/android/exoplayer2/k/d;->f:J

    add-long/2addr v8, v4

    .line 12137
    invoke-virtual {v14, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/k/d;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 12138
    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/google/android/exoplayer2/k/d;->h:Z

    move-wide v4, v6

    move-wide v8, v10

    .line 12154
    :goto_2
    iget-boolean v15, v14, Lcom/google/android/exoplayer2/k/d;->h:Z

    if-nez v15, :cond_5

    .line 12155
    iput-wide v10, v14, Lcom/google/android/exoplayer2/k/d;->j:J

    .line 12156
    iput-wide v6, v14, Lcom/google/android/exoplayer2/k/d;->i:J

    .line 12157
    const-wide/16 v6, 0x0

    iput-wide v6, v14, Lcom/google/android/exoplayer2/k/d;->k:J

    .line 12158
    const/4 v6, 0x1

    iput-boolean v6, v14, Lcom/google/android/exoplayer2/k/d;->h:Z

    .line 12162
    :cond_5
    move-wide/from16 v0, p9

    iput-wide v0, v14, Lcom/google/android/exoplayer2/k/d;->e:J

    .line 12163
    iput-wide v8, v14, Lcom/google/android/exoplayer2/k/d;->g:J

    .line 12165
    iget-object v6, v14, Lcom/google/android/exoplayer2/k/d;->a:Lcom/google/android/exoplayer2/k/d$a;

    if-eqz v6, :cond_6

    iget-object v6, v14, Lcom/google/android/exoplayer2/k/d;->a:Lcom/google/android/exoplayer2/k/d$a;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/k/d$a;->a:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 403
    :cond_6
    :goto_3
    sub-long v6, v4, v12

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 405
    const-wide/16 v8, -0x7530

    cmp-long v8, v6, v8

    if-gez v8, :cond_e

    .line 12447
    const-string/jumbo v4, "dropVideoBuffer"

    invoke-static {v4}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 12448
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 12449
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 12450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    iget v5, v4, Lcom/google/android/exoplayer2/b/d;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/android/exoplayer2/b/d;->f:I

    .line 12451
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/k/c;->s:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/k/c;->s:I

    .line 12452
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/k/c;->t:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/exoplayer2/k/c;->t:I

    .line 12453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/k/c;->t:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    iget v6, v6, Lcom/google/android/exoplayer2/b/d;->g:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/google/android/exoplayer2/b/d;->g:I

    .line 12455
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/k/c;->s:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/k/c;->k:I

    if-ne v4, v5, :cond_7

    .line 12456
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k/c;->w()V

    .line 408
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 12141
    :cond_8
    iget-wide v4, v14, Lcom/google/android/exoplayer2/k/d;->i:J

    add-long/2addr v4, v8

    iget-wide v0, v14, Lcom/google/android/exoplayer2/k/d;->j:J

    move-wide/from16 v16, v0

    sub-long v4, v4, v16

    .line 12144
    goto/16 :goto_2

    .line 12147
    :cond_9
    invoke-virtual {v14, v10, v11, v6, v7}, Lcom/google/android/exoplayer2/k/d;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 12148
    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/google/android/exoplayer2/k/d;->h:Z

    :cond_a
    move-wide v4, v6

    move-wide v8, v10

    goto/16 :goto_2

    .line 12170
    :cond_b
    iget-object v6, v14, Lcom/google/android/exoplayer2/k/d;->a:Lcom/google/android/exoplayer2/k/d$a;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/k/d$a;->a:J

    iget-wide v8, v14, Lcom/google/android/exoplayer2/k/d;->c:J

    .line 12187
    sub-long v10, v4, v6

    div-long/2addr v10, v8

    .line 12188
    mul-long/2addr v10, v8

    add-long/2addr v6, v10

    .line 12191
    cmp-long v10, v4, v6

    if-gtz v10, :cond_c

    .line 12192
    sub-long v8, v6, v8

    .line 12198
    :goto_4
    sub-long v10, v6, v4

    .line 12199
    sub-long/2addr v4, v8

    .line 12200
    cmp-long v4, v10, v4

    if-gez v4, :cond_d

    move-wide v4, v6

    .line 12173
    :goto_5
    iget-wide v6, v14, Lcom/google/android/exoplayer2/k/d;->d:J

    sub-long/2addr v4, v6

    goto/16 :goto_3

    .line 12196
    :cond_c
    add-long/2addr v8, v6

    move-wide/from16 v18, v8

    move-wide v8, v6

    move-wide/from16 v6, v18

    goto :goto_4

    :cond_d
    move-wide v4, v8

    .line 12200
    goto :goto_5

    .line 411
    :cond_e
    sget v8, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_f

    .line 413
    const-wide/32 v8, 0xc350

    cmp-long v6, v6, v8

    if-gez v6, :cond_11

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/k/c;->a(Landroid/media/MediaCodec;IJ)V

    .line 415
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 419
    :cond_f
    const-wide/16 v4, 0x7530

    cmp-long v4, v6, v4

    if-gez v4, :cond_11

    .line 420
    const-wide/16 v4, 0x2af8

    cmp-long v4, v6, v4

    if-lez v4, :cond_10

    .line 425
    const-wide/16 v4, 0x2710

    sub-long v4, v6, v4

    const-wide/16 v6, 0x3e8

    :try_start_0
    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/k/c;->a(Landroid/media/MediaCodec;I)V

    .line 431
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 427
    :catch_0
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_6

    .line 436
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected final a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .prologue
    .line 363
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/k/c;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->n:Lcom/google/android/exoplayer2/k/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/k/c$a;->a:I

    if-gt v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->j:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->n:Lcom/google/android/exoplayer2/k/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/k/c$a;->b:I

    if-gt v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->f:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->n:Lcom/google/android/exoplayer2/k/c$a;

    iget v1, v1, Lcom/google/android/exoplayer2/k/c$a;->c:I

    if-gt v0, v1, :cond_1

    if-nez p1, :cond_0

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->i:I

    iget v1, p3, Lcom/google/android/exoplayer2/Format;->i:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, p3, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b(Lcom/google/android/exoplayer2/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/d/b;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    .line 10158
    iget-object v1, v0, Lcom/google/android/exoplayer2/k/e$a;->b:Lcom/google/android/exoplayer2/k/e;

    if-eqz v1, :cond_0

    .line 10159
    iget-object v1, v0, Lcom/google/android/exoplayer2/k/e$a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer2/k/e$a$3;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/k/e$a$3;-><init>(Lcom/google/android/exoplayer2/k/e$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10638
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 326
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->v:F

    .line 327
    invoke-static {p1}, Lcom/google/android/exoplayer2/k/c;->d(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->u:I

    .line 328
    return-void

    .line 10638
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->m:F

    goto :goto_0
.end method

.method protected final m()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->m()V

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->s:I

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->r:J

    .line 255
    return-void
.end method

.method protected final n()V
    .locals 2

    .prologue
    .line 259
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k/c;->w()V

    .line 261
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->n()V

    .line 262
    return-void
.end method

.method protected final o()V
    .locals 3

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 266
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->w:I

    .line 267
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->x:I

    .line 268
    iput v1, p0, Lcom/google/android/exoplayer2/k/c;->z:F

    .line 269
    iput v1, p0, Lcom/google/android/exoplayer2/k/c;->v:F

    .line 270
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->A:I

    .line 271
    iput v0, p0, Lcom/google/android/exoplayer2/k/c;->B:I

    .line 272
    iput v1, p0, Lcom/google/android/exoplayer2/k/c;->D:F

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->g:Lcom/google/android/exoplayer2/k/d;

    .line 7100
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/k/d;->b:Z

    if-eqz v1, :cond_0

    .line 7101
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/d;->a:Lcom/google/android/exoplayer2/k/d$a;

    .line 7252
    iget-object v0, v0, Lcom/google/android/exoplayer2/k/d$a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k/e$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 278
    iget-object v1, p0, Lcom/google/android/exoplayer2/k/c;->h:Lcom/google/android/exoplayer2/k/e$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k/c;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k/e$a;->a(Lcom/google/android/exoplayer2/b/d;)V

    throw v0
.end method

.method public final p()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 233
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/k/c;->p:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    iput-wide v6, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    .line 246
    :cond_1
    :goto_0
    return v0

    .line 237
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    .line 239
    goto :goto_0

    .line 240
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 245
    iput-wide v6, p0, Lcom/google/android/exoplayer2/k/c;->q:J

    move v0, v1

    .line 246
    goto :goto_0
.end method

.method protected final u()Z
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Lcom/google/android/exoplayer2/d/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/k/c;->o:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
