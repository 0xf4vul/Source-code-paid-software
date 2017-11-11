.class public final Lcom/google/android/exoplayer2/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a/d$c;,
        Lcom/google/android/exoplayer2/a/d$b;,
        Lcom/google/android/exoplayer2/a/d$a;,
        Lcom/google/android/exoplayer2/a/d$e;,
        Lcom/google/android/exoplayer2/a/d$f;,
        Lcom/google/android/exoplayer2/a/d$d;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final A:[J

.field private B:Landroid/media/AudioTrack;

.field private C:I

.field private D:I

.field private E:J

.field private F:J

.field private G:Z

.field private H:J

.field private I:Ljava/lang/reflect/Method;

.field private J:J

.field private K:J

.field final c:Lcom/google/android/exoplayer2/a/b;

.field final d:Lcom/google/android/exoplayer2/a/d$a;

.field e:Landroid/media/AudioTrack;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:I

.field l:I

.field m:J

.field n:J

.field o:J

.field p:I

.field q:I

.field r:J

.field s:F

.field t:[B

.field u:I

.field v:Ljava/nio/ByteBuffer;

.field w:Ljava/nio/ByteBuffer;

.field x:Z

.field private final y:I

.field private final z:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    sput-boolean v0, Lcom/google/android/exoplayer2/a/d;->a:Z

    .line 195
    sput-boolean v0, Lcom/google/android/exoplayer2/a/d;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/a/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/d;->c:Lcom/google/android/exoplayer2/a/b;

    .line 250
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->y:I

    .line 251
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->z:Landroid/os/ConditionVariable;

    .line 252
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 254
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string/jumbo v1, "getLatency"

    const/4 v2, 0x0

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->I:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 261
    new-instance v0, Lcom/google/android/exoplayer2/a/d$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a/d$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    .line 267
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->A:[J

    .line 268
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->s:F

    .line 269
    iput v3, p0, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 270
    return-void

    .line 262
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/a/d$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a/d$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    goto :goto_1

    .line 265
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/a/d$a;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/a/d$a;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1030
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1040
    :goto_1
    return v0

    .line 1030
    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 1032
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    .line 1034
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    .line 1036
    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    .line 1038
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    .line 1030
    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/a/d;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->z:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/a/d$d;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->z:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->y:I

    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->f:I

    iget v3, p0, Lcom/google/android/exoplayer2/a/d;->g:I

    iget v4, p0, Lcom/google/android/exoplayer2/a/d;->i:I

    iget v5, p0, Lcom/google/android/exoplayer2/a/d;->l:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 1895
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 1896
    if-eq v0, v6, :cond_1

    .line 1901
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    iput-object v8, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 1909
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/a/d$d;

    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->f:I

    iget v3, p0, Lcom/google/android/exoplayer2/a/d;->g:I

    iget v4, p0, Lcom/google/android/exoplayer2/a/d;->l:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/a/d$d;-><init>(IIII)V

    throw v1

    .line 458
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->y:I

    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->f:I

    iget v3, p0, Lcom/google/android/exoplayer2/a/d;->g:I

    iget v4, p0, Lcom/google/android/exoplayer2/a/d;->i:I

    iget v5, p0, Lcom/google/android/exoplayer2/a/d;->l:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    goto :goto_0

    .line 1906
    :catch_0
    move-exception v1

    iput-object v8, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v8, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    throw v0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 464
    sget-boolean v0, Lcom/google/android/exoplayer2/a/d;->a:Z

    if-eqz v0, :cond_3

    .line 465
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    .line 469
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->f()V

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    .line 477
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->y:I

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v6, 0x0

    move v4, v9

    move v5, v9

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a/d$a;->a(Landroid/media/AudioTrack;Z)V

    .line 484
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->d()V

    .line 485
    return v7
.end method

.method final a(J)J
    .locals 5

    .prologue
    .line 917
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->f:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Z)J
    .locals 12

    .prologue
    .line 303
    .line 1800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->q:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 303
    :goto_0
    if-nez v0, :cond_2

    .line 304
    const-wide/high16 v0, -0x8000000000000000L

    .line 338
    :cond_0
    :goto_1
    return-wide v0

    .line 1800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1807
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d$a;->c()J

    move-result-wide v2

    .line 1808
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_7

    .line 1812
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 1813
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->F:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_4

    .line 1815
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->A:[J

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->C:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 1816
    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->C:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->C:I

    .line 1817
    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 1818
    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    .line 1820
    :cond_3
    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/d;->F:J

    .line 1821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->E:J

    .line 1822
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    if-ge v0, v1, :cond_4

    .line 1823
    iget-wide v6, p0, Lcom/google/android/exoplayer2/a/d;->E:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->A:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/a/d;->E:J

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1827
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1833
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->H:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_7

    .line 1834
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    .line 1835
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    if-eqz v0, :cond_5

    .line 1837
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d$a;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 1838
    iget-object v6, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a/d$a;->f()J

    move-result-wide v6

    .line 1839
    iget-wide v8, p0, Lcom/google/android/exoplayer2/a/d;->J:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    .line 1841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    .line 1865
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->I:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->j:Z

    if-nez v0, :cond_6

    .line 1869
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->I:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    .line 1872
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    .line 1874
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 1875
    const-string/jumbo v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring impossibly large audio latency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->K:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    :cond_6
    :goto_4
    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/d;->H:J

    .line 311
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 313
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    if-eqz v2, :cond_c

    .line 315
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/d$a;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 317
    long-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    .line 318
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d$a;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/a/d;->b(J)J

    move-result-wide v0

    .line 321
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a/d$a;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/a/d;->a(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->r:J

    add-long/2addr v0, v2

    .line 323
    goto/16 :goto_1

    .line 1842
    :cond_8
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 1844
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1847
    sget-boolean v1, Lcom/google/android/exoplayer2/a/d;->b:Z

    if-eqz v1, :cond_9

    .line 1848
    new-instance v1, Lcom/google/android/exoplayer2/a/d$e;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/a/d$e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1850
    :cond_9
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    goto/16 :goto_3

    .line 1852
    :cond_a
    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer2/a/d;->a(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 1855
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    sget-boolean v1, Lcom/google/android/exoplayer2/a/d;->b:Z

    if-eqz v1, :cond_b

    .line 1859
    new-instance v1, Lcom/google/android/exoplayer2/a/d$e;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/a/d$e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1861
    :cond_b
    const-string/jumbo v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    goto/16 :goto_3

    .line 1880
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/d;->I:Ljava/lang/reflect/Method;

    goto/16 :goto_4

    .line 324
    :cond_c
    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    if-nez v2, :cond_d

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a/d$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->r:J

    add-long/2addr v0, v2

    .line 333
    :goto_5
    if-nez p1, :cond_0

    .line 334
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    sub-long/2addr v0, v2

    goto/16 :goto_1

    .line 331
    :cond_d
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->E:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->r:J

    add-long/2addr v0, v2

    goto :goto_5
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(J)J
    .locals 5

    .prologue
    .line 921
    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->f:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->J:J

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 522
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->g()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a/d$a;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1953
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 1954
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 1955
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    .line 683
    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 1955
    goto :goto_0

    :cond_2
    move v0, v1

    .line 681
    goto :goto_1
.end method

.method final d()V
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->s:F

    .line 2064
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/a/d;->s:F

    .line 2069
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method public final e()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/d;->n:J

    .line 740
    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/d;->o:J

    .line 741
    iput v2, p0, Lcom/google/android/exoplayer2/a/d;->p:I

    .line 742
    iput-object v3, p0, Lcom/google/android/exoplayer2/a/d;->v:Ljava/nio/ByteBuffer;

    .line 743
    iput v2, p0, Lcom/google/android/exoplayer2/a/d;->q:I

    .line 744
    iput-wide v4, p0, Lcom/google/android/exoplayer2/a/d;->K:J

    .line 745
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a/d;->h()V

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 747
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 752
    iput-object v3, p0, Lcom/google/android/exoplayer2/a/d;->e:Landroid/media/AudioTrack;

    .line 753
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->d:Lcom/google/android/exoplayer2/a/d$a;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/a/d$a;->a(Landroid/media/AudioTrack;Z)V

    .line 754
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/d;->z:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 755
    new-instance v1, Lcom/google/android/exoplayer2/a/d$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/a/d$1;-><init>(Lcom/google/android/exoplayer2/a/d;Landroid/media/AudioTrack;)V

    .line 765
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d$1;->start()V

    .line 767
    :cond_1
    return-void
.end method

.method final f()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    .line 787
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/a/d;->B:Landroid/media/AudioTrack;

    .line 788
    new-instance v1, Lcom/google/android/exoplayer2/a/d$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/a/d$2;-><init>(Lcom/google/android/exoplayer2/a/d;Landroid/media/AudioTrack;)V

    .line 793
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a/d$2;->start()V

    goto :goto_0
.end method

.method final g()J
    .locals 4

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->j:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->o:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a/d;->n:J

    .line 2913
    iget v2, p0, Lcom/google/android/exoplayer2/a/d;->k:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method final h()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 929
    iput-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->E:J

    .line 930
    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->D:I

    .line 931
    iput v0, p0, Lcom/google/android/exoplayer2/a/d;->C:I

    .line 932
    iput-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->F:J

    .line 933
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/a/d;->G:Z

    .line 934
    iput-wide v2, p0, Lcom/google/android/exoplayer2/a/d;->H:J

    .line 935
    return-void
.end method

.method final i()Z
    .locals 2

    .prologue
    .line 942
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/a/d;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
