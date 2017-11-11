.class public abstract Lcom/google/android/exoplayer2/d/b;
.super Lcom/google/android/exoplayer2/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/d/b$a;
    }
.end annotation


# static fields
.field private static final g:[B


# instance fields
.field private A:Z

.field private B:[Ljava/nio/ByteBuffer;

.field private C:[Ljava/nio/ByteBuffer;

.field private D:J

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field protected f:Lcom/google/android/exoplayer2/b/d;

.field private final h:Lcom/google/android/exoplayer2/d/c;

.field private final i:Lcom/google/android/exoplayer2/drm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/b",
            "<",
            "Lcom/google/android/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z

.field private final k:Lcom/google/android/exoplayer2/b/e;

.field private final l:Lcom/google/android/exoplayer2/h;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/media/MediaCodec$BufferInfo;

.field private o:Lcom/google/android/exoplayer2/Format;

.field private p:Landroid/media/MediaCodec;

.field private q:Lcom/google/android/exoplayer2/drm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/google/android/exoplayer2/drm/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->f(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/d/b;->g:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/d/c;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/d/c;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a;-><init>(I)V

    .line 223
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 224
    invoke-static {p2}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/d/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->h:Lcom/google/android/exoplayer2/d/c;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->i:Lcom/google/android/exoplayer2/drm/b;

    .line 226
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/d/b;->j:Z

    .line 227
    new-instance v0, Lcom/google/android/exoplayer2/b/e;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/b/e;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    .line 228
    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->l:Lcom/google/android/exoplayer2/h;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    .line 230
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    .line 231
    iput v1, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 232
    iput v1, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    .line 233
    return-void

    :cond_0
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/d/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 371
    .line 5241
    iget v0, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 371
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0
.end method

.method private r()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 528
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->M:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    if-ne v0, v8, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v2

    .line 535
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    if-gez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 537
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    if-ltz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->B:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->a()V

    .line 544
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    if-ne v0, v7, :cond_4

    .line 547
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->w:Z

    if-nez v0, :cond_3

    .line 550
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/d/b;->L:Z

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 552
    iput v9, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 554
    :cond_3
    iput v8, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    goto :goto_0

    .line 558
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->z:Z

    if-eqz v0, :cond_5

    .line 559
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->z:Z

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/d/b;->g:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    sget-object v3, Lcom/google/android/exoplayer2/d/b;->g:[B

    array-length v3, v3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 562
    iput v9, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 563
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    move v2, v7

    .line 564
    goto :goto_0

    .line 569
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    if-eqz v0, :cond_7

    .line 571
    const/4 v0, -0x4

    move v1, v2

    .line 586
    :goto_1
    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    .line 589
    const/4 v3, -0x5

    if-ne v0, v3, :cond_a

    .line 590
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    if-ne v0, v8, :cond_6

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->a()V

    .line 594
    iput v7, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 596
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->l:Lcom/google/android/exoplayer2/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/d/b;->b(Lcom/google/android/exoplayer2/Format;)V

    move v2, v7

    .line 597
    goto :goto_0

    .line 575
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    if-ne v0, v7, :cond_9

    move v1, v2

    .line 576
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 578
    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 576
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 580
    :cond_8
    iput v8, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 582
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->l:Lcom/google/android/exoplayer2/h;

    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {p0, v1, v3}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;)I

    move-result v1

    move v11, v0

    move v0, v1

    move v1, v11

    goto :goto_1

    .line 601
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 602
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    if-ne v0, v8, :cond_b

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->a()V

    .line 607
    iput v7, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 609
    :cond_b
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/d/b;->M:Z

    .line 610
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    if-nez v0, :cond_c

    .line 611
    invoke-direct {p0}, Lcom/google/android/exoplayer2/d/b;->w()V

    goto/16 :goto_0

    .line 615
    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->w:Z

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->L:Z

    .line 619
    iget-object v4, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 620
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->E:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 9241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 623
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 627
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->d()Z

    move-result v3

    .line 9682
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v0, :cond_10

    .line 9685
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->a()I

    move-result v0

    .line 9686
    if-nez v0, :cond_e

    .line 9687
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->d()Ljava/lang/Exception;

    move-result-object v0

    .line 10241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 9687
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 9689
    :cond_e
    const/4 v4, 0x4

    if-eq v0, v4, :cond_10

    if-nez v3, :cond_f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->j:Z

    if-nez v0, :cond_10

    :cond_f
    move v0, v7

    .line 628
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    .line 629
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    if-nez v0, :cond_0

    .line 632
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->t:Z

    if-eqz v0, :cond_12

    if-nez v3, :cond_12

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/i;->a(Ljava/nio/ByteBuffer;)V

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_11

    move v2, v7

    .line 635
    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 9689
    goto :goto_3

    .line 637
    :cond_11
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->t:Z

    .line 640
    :cond_12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/b/e;->d:J

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->f_()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->e()V

    .line 648
    if-eqz v3, :cond_16

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    .line 10667
    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->b:Lcom/google/android/exoplayer2/b/b;

    .line 11086
    iget-object v3, v0, Lcom/google/android/exoplayer2/b/b;->g:Landroid/media/MediaCodec$CryptoInfo;

    .line 10668
    if-nez v1, :cond_14

    .line 651
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 655
    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 658
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->f:Lcom/google/android/exoplayer2/b/d;

    iget v1, v0, Lcom/google/android/exoplayer2/b/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/b/d;->c:I

    move v2, v7

    .line 662
    goto/16 :goto_0

    .line 10674
    :cond_14
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_15

    .line 10675
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 10677
    :cond_15
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v6, v0, v2

    add-int/2addr v1, v6

    aput v1, v0, v2
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 660
    :catch_1
    move-exception v0

    .line 11241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 660
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 653
    :cond_16
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->k:Lcom/google/android/exoplayer2/b/e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5
.end method

.method private w()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 966
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 968
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->v()V

    .line 969
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->t()V

    .line 974
    :goto_0
    return-void

    .line 971
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->N:Z

    .line 972
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->s()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->h:Lcom/google/android/exoplayer2/d/c;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/d/d$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 245
    :catch_0
    move-exception v0

    .line 1241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 245
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0
.end method

.method public abstract a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d/d$b;
        }
    .end annotation
.end method

.method public a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d/d$b;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/google/android/exoplayer2/d/c;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/d/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    .line 6487
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->l:Lcom/google/android/exoplayer2/h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;)I

    move-result v0

    .line 6488
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 6489
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->l:Lcom/google/android/exoplayer2/h;

    iget-object v0, v0, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/d/b;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->t()V

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    if-eqz v0, :cond_12

    .line 476
    const-string/jumbo v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 6845
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->N:Z

    if-nez v0, :cond_11

    .line 6849
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    if-gez v0, :cond_7

    .line 6850
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 6851
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    if-ltz v0, :cond_a

    .line 6853
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->A:Z

    if-eqz v0, :cond_4

    .line 6854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->A:Z

    .line 6855
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 6856
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 6857
    const/4 v0, 0x1

    .line 477
    :goto_0
    if-nez v0, :cond_1

    .line 478
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/d/b;->r()Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 483
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->f:Lcom/google/android/exoplayer2/b/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/d;->a()V

    .line 484
    return-void

    .line 6859
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 6861
    invoke-direct {p0}, Lcom/google/android/exoplayer2/d/b;->w()V

    .line 6862
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 6863
    const/4 v0, 0x1

    goto :goto_0

    .line 6867
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->C:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    aget-object v0, v0, v1

    .line 6868
    if-eqz v0, :cond_6

    .line 6869
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6870
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6872
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 6979
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 6980
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_9

    .line 6981
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_8

    .line 6982
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6983
    const/4 v0, 0x1

    .line 6872
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->G:Z

    .line 6890
    :cond_7
    iget-object v6, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->C:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    aget-object v7, v0, v1

    iget v8, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, p0, Lcom/google/android/exoplayer2/d/b;->G:Z

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/exoplayer2/d/b;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6893
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->n:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 6894
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 6895
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6980
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 6986
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 6874
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    .line 7905
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 7906
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/d/b;->v:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "width"

    .line 7907
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    const-string/jumbo v1, "height"

    .line 7908
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    .line 7910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->A:Z

    .line 6876
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 7913
    :cond_b
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/d/b;->y:Z

    if-eqz v1, :cond_c

    .line 7914
    const-string/jumbo v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7916
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/d/b;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_4

    .line 6877
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_e

    .line 7924
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->C:[Ljava/nio/ByteBuffer;

    .line 6879
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6881
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->w:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->M:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 6883
    :cond_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/d/b;->w()V

    .line 6884
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 6886
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 6898
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 480
    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_3

    .line 8284
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/f/e;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/f/e;->a(J)V

    goto/16 :goto_1
.end method

.method public a(JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 385
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->M:Z

    .line 386
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->N:Z

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 5494
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/d/b;->D:J

    .line 5495
    iput v3, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 5496
    iput v3, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 5497
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    .line 5498
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->G:Z

    .line 5499
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5500
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->z:Z

    .line 5501
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->A:Z

    .line 5502
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->x:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->L:Z

    if-eqz v0, :cond_2

    .line 5504
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->v()V

    .line 5505
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->t()V

    .line 5516
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->H:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 5519
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 390
    :cond_1
    return-void

    .line 5506
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    if-eqz v0, :cond_3

    .line 5509
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->v()V

    .line 5510
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->t()V

    goto :goto_0

    .line 5513
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 5514
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    goto :goto_0
.end method

.method public a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 763
    return-void
.end method

.method public abstract a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lcom/google/android/exoplayer2/b/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->f:Lcom/google/android/exoplayer2/b/d;

    .line 381
    return-void
.end method

.method public abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation
.end method

.method protected a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 715
    iget-object v4, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 716
    iput-object p1, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v4, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/j/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 720
    :goto_1
    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_4

    .line 722
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->i:Lcom/google/android/exoplayer2/drm/b;

    if-nez v0, :cond_2

    .line 723
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 723
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 718
    :cond_0
    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->i:Lcom/google/android/exoplayer2/drm/b;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/b;->a()Lcom/google/android/exoplayer2/drm/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-ne v0, v1, :cond_3

    .line 735
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->s:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 736
    invoke-virtual {p0, v0, v4, v1}, Lcom/google/android/exoplayer2/d/b;->a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 737
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->H:Z

    .line 738
    iput v2, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 739
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->v:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->i:I

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->i:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, v4, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v0, v1, :cond_5

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->z:Z

    .line 751
    :goto_4
    return-void

    .line 731
    :cond_4
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    goto :goto_2

    :cond_5
    move v0, v3

    .line 739
    goto :goto_3

    .line 742
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    if-eqz v0, :cond_7

    .line 744
    iput v2, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    goto :goto_4

    .line 747
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->v()V

    .line 748
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->t()V

    goto :goto_4
.end method

.method public final l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x4

    return v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    .line 409
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    .line 412
    return-void

    .line 398
    :catchall_0
    move-exception v0

    .line 408
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    .line 409
    iput-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    throw v0
.end method

.method public p()Z
    .locals 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    if-nez v0, :cond_2

    .line 12275
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a;->e:Z

    .line 824
    :goto_0
    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/d/b;->D:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 826
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/d/b;->D:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 12275
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a;->c:Lcom/google/android/exoplayer2/f/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/e;->a()Z

    move-result v0

    goto :goto_0

    .line 826
    :cond_2
    const/4 v0, 0x0

    .line 824
    goto :goto_1
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/d/b;->N:Z

    return v0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method protected final t()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x0

    const/16 v10, 0x12

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d/b;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v0, :cond_12

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->a()I

    move-result v0

    .line 297
    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->d()Ljava/lang/Exception;

    move-result-object v0

    .line 2241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 298
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 299
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->b()Lcom/google/android/exoplayer2/drm/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/d;

    .line 3035
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/d;->a:Landroid/media/MediaCrypto;

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/a;->c()Z

    move-result v0

    move v6, v0

    move-object v0, v1

    .line 311
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->h:Lcom/google/android/exoplayer2/d/c;

    iget-object v7, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1, v7, v6}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/d/a;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/d/d$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    if-nez v1, :cond_4

    if-eqz v6, :cond_4

    .line 317
    :try_start_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/d/b;->h:Lcom/google/android/exoplayer2/d/c;

    iget-object v8, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/c;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/d/a;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_4

    .line 319
    const-string/jumbo v7, "MediaCodecRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Drm session requires secure decoder for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Lcom/google/android/exoplayer2/d/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/android/exoplayer2/d/d$b; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    move-object v5, v1

    .line 328
    :goto_2
    if-nez v5, :cond_5

    .line 329
    new-instance v1, Lcom/google/android/exoplayer2/d/b$a;

    iget-object v7, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    const v8, -0xc34f

    invoke-direct {v1, v7, v3, v6, v8}, Lcom/google/android/exoplayer2/d/b$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/b$a;)V

    .line 334
    :cond_5
    iget-object v1, v5, Lcom/google/android/exoplayer2/d/a;->a:Ljava/lang/String;

    .line 335
    iget-boolean v3, v5, Lcom/google/android/exoplayer2/d/a;->b:Z

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->s:Z

    .line 336
    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 3036
    sget v5, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v7, 0x15

    if-ge v5, v7, :cond_b

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 3037
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    .line 336
    :goto_3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->t:Z

    .line 3999
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    if-lt v3, v10, :cond_7

    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    if-ne v3, v10, :cond_6

    const-string/jumbo v3, "OMX.SEC.avc.dec"

    .line 4001
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    sget-object v3, Lcom/google/android/exoplayer2/j/r;->d:Ljava/lang/String;

    const-string/jumbo v5, "SM-G800"

    .line 4002
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "OMX.Exynos.avc.dec"

    .line 4003
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    move v3, v4

    .line 337
    :goto_4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->u:Z

    .line 4019
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x18

    if-ge v3, v5, :cond_d

    const-string/jumbo v3, "OMX.Nvidia.h264.decode"

    .line 4020
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    const-string/jumbo v3, "flounder"

    sget-object v5, Lcom/google/android/exoplayer2/j/r;->b:Ljava/lang/String;

    .line 4021
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "flounder_lte"

    sget-object v5, Lcom/google/android/exoplayer2/j/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "grouper"

    sget-object v5, Lcom/google/android/exoplayer2/j/r;->b:Ljava/lang/String;

    .line 4022
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "tilapia"

    sget-object v5, Lcom/google/android/exoplayer2/j/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_9
    move v3, v4

    .line 338
    :goto_5
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->v:Z

    .line 4053
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x11

    if-gt v3, v5, :cond_e

    const-string/jumbo v3, "OMX.rk.video_decoder.avc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "OMX.allwinner.video.decoder.avc"

    .line 4054
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_a
    move v3, v4

    .line 339
    :goto_6
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->w:Z

    .line 4069
    sget v3, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v5, 0x17

    if-gt v3, v5, :cond_f

    const-string/jumbo v3, "OMX.google.vorbis.decoder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v4

    .line 340
    :goto_7
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/d/b;->x:Z

    .line 341
    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    .line 4086
    sget v5, Lcom/google/android/exoplayer2/j/r;->a:I

    if-gt v5, v10, :cond_10

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->p:I

    if-ne v3, v4, :cond_10

    const-string/jumbo v3, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 4087
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 341
    :goto_8
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/d/b;->y:Z

    .line 343
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createCodec:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 345
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    .line 346
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 347
    const-string/jumbo v2, "configureCodec"

    invoke-static {v2}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/d/b;->a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 349
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 350
    const-string/jumbo v0, "startCodec"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 352
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 354
    sub-long v4, v2, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/d/b;->a(Ljava/lang/String;JJ)V

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->B:[Ljava/nio/ByteBuffer;

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/d/b;->C:[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5069
    :goto_9
    iget v0, p0, Lcom/google/android/exoplayer2/a;->b:I

    .line 362
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_a
    iput-wide v0, p0, Lcom/google/android/exoplayer2/d/b;->D:J

    .line 364
    iput v11, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 365
    iput v11, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->f:Lcom/google/android/exoplayer2/b/d;

    iget v1, v0, Lcom/google/android/exoplayer2/b/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/b/d;->a:I

    goto/16 :goto_0

    .line 323
    :catch_0
    move-exception v1

    move-object v5, v3

    .line 324
    :goto_b
    new-instance v7, Lcom/google/android/exoplayer2/d/b$a;

    iget-object v8, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    const v9, -0xc34e

    invoke-direct {v7, v8, v1, v6, v9}, Lcom/google/android/exoplayer2/d/b$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/b$a;)V

    goto/16 :goto_2

    :cond_b
    move v3, v2

    .line 3037
    goto/16 :goto_3

    :cond_c
    move v3, v2

    .line 4003
    goto/16 :goto_4

    :cond_d
    move v3, v2

    .line 4022
    goto/16 :goto_5

    :cond_e
    move v3, v2

    .line 4054
    goto/16 :goto_6

    :cond_f
    move v3, v2

    .line 4069
    goto/16 :goto_7

    :cond_10
    move v4, v2

    .line 4087
    goto/16 :goto_8

    .line 358
    :catch_1
    move-exception v0

    .line 359
    new-instance v2, Lcom/google/android/exoplayer2/d/b$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v3, v0, v6, v1}, Lcom/google/android/exoplayer2/d/b$a;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/d/b;->a(Lcom/google/android/exoplayer2/d/b$a;)V

    goto :goto_9

    .line 363
    :cond_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_a

    .line 323
    :catch_2
    move-exception v5

    move-object v12, v5

    move-object v5, v1

    move-object v1, v12

    goto :goto_b

    :cond_12
    move v6, v2

    move-object v0, v3

    goto/16 :goto_1
.end method

.method protected u()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->o:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final v()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 417
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/d/b;->D:J

    .line 418
    iput v4, p0, Lcom/google/android/exoplayer2/d/b;->E:I

    .line 419
    iput v4, p0, Lcom/google/android/exoplayer2/d/b;->F:I

    .line 420
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->O:Z

    .line 421
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->G:Z

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->B:[Ljava/nio/ByteBuffer;

    .line 424
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->C:[Ljava/nio/ByteBuffer;

    .line 425
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->H:Z

    .line 426
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->K:Z

    .line 427
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->s:Z

    .line 428
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->t:Z

    .line 429
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->u:Z

    .line 430
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->v:Z

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->w:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->x:Z

    .line 433
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->y:Z

    .line 434
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->z:Z

    .line 435
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->A:Z

    .line 436
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/d/b;->L:Z

    .line 437
    iput v2, p0, Lcom/google/android/exoplayer2/d/b;->I:I

    .line 438
    iput v2, p0, Lcom/google/android/exoplayer2/d/b;->J:I

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->f:Lcom/google/android/exoplayer2/b/d;

    iget v1, v0, Lcom/google/android/exoplayer2/b/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/b/d;->b:I

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eq v0, v1, :cond_0

    .line 451
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    .line 457
    :cond_0
    return-void

    .line 446
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    .line 447
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eq v1, v2, :cond_1

    .line 451
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    :cond_1
    throw v0

    .line 443
    :catchall_1
    move-exception v0

    .line 444
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 446
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    .line 447
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eq v1, v2, :cond_2

    .line 451
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    :cond_2
    throw v0

    .line 446
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->p:Landroid/media/MediaCodec;

    .line 447
    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/d/b;->r:Lcom/google/android/exoplayer2/drm/a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    if-eq v1, v2, :cond_3

    .line 451
    iput-object v3, p0, Lcom/google/android/exoplayer2/d/b;->q:Lcom/google/android/exoplayer2/drm/a;

    :cond_3
    throw v0
.end method
