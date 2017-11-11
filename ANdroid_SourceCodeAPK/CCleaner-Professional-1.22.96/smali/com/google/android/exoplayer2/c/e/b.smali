.class final Lcom/google/android/exoplayer2/c/e/b;
.super Lcom/google/android/exoplayer2/c/e/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/e/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/j/e;

.field private d:Lcom/google/android/exoplayer2/c/e/b$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/e/h;-><init>()V

    return-void
.end method

.method private static a([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/j/k;)J
    .locals 13

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v12, 0x6

    const/4 v2, 0x1

    .line 63
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/c/e/b;->a([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-wide/16 v0, -0x1

    .line 66
    :goto_0
    return-wide v0

    .line 1095
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v6, v0, 0x4

    .line 1096
    packed-switch v6, :pswitch_data_0

    .line 1122
    const/4 v0, -0x1

    .line 66
    :goto_1
    int-to-long v0, v0

    goto :goto_0

    .line 1098
    :pswitch_0
    const/16 v0, 0xc0

    goto :goto_1

    .line 1103
    :pswitch_1
    const/16 v0, 0x240

    add-int/lit8 v1, v6, -0x2

    shl-int/2addr v0, v1

    goto :goto_1

    .line 1107
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1487
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v1, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    move v3, v5

    .line 1489
    :goto_2
    if-ltz v3, :cond_7

    .line 1490
    shl-int v7, v2, v3

    int-to-long v8, v7

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 1491
    if-ge v3, v12, :cond_1

    .line 1492
    shl-int v5, v2, v3

    add-int/lit8 v5, v5, -0x1

    int-to-long v8, v5

    and-long/2addr v0, v8

    .line 1493
    rsub-int/lit8 v3, v3, 0x7

    .line 1500
    :goto_3
    if-nez v3, :cond_4

    .line 1501
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid UTF-8 sequence first byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1494
    :cond_1
    if-ne v3, v5, :cond_7

    move v3, v2

    .line 1495
    goto :goto_3

    .line 1489
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1508
    :cond_3
    shl-long/2addr v0, v12

    and-int/lit8 v5, v5, 0x3f

    int-to-long v8, v5

    or-long/2addr v0, v8

    .line 1503
    add-int/lit8 v2, v2, 0x1

    :cond_4
    if-ge v2, v3, :cond_5

    .line 1504
    iget-object v5, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v7, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/2addr v7, v2

    aget-byte v5, v5, v7

    .line 1505
    and-int/lit16 v7, v5, 0xc0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_3

    .line 1506
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid UTF-8 sequence continuation byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1510
    :cond_5
    iget v0, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 1109
    if-ne v6, v12, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 1110
    :goto_4
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1111
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1109
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v0

    goto :goto_4

    .line 1120
    :pswitch_3
    const/16 v0, 0x100

    add-int/lit8 v1, v6, -0x8

    shl-int/2addr v0, v1

    goto/16 :goto_1

    :cond_7
    move v3, v4

    goto :goto_3

    .line 1096
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/c/e/h;->a(Z)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    .line 53
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    .line 55
    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/j/k;JLcom/google/android/exoplayer2/c/e/h$a;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    iget-object v2, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 73
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    if-nez v3, :cond_1

    .line 74
    new-instance v1, Lcom/google/android/exoplayer2/j/e;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/j/e;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    .line 75
    const/16 v1, 0x9

    .line 2109
    iget v3, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 75
    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 76
    const/4 v2, 0x4

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 77
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 78
    const-string/jumbo v1, "audio/x-flac"

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    .line 3071
    iget v4, v3, Lcom/google/android/exoplayer2/j/e;->g:I

    iget v3, v3, Lcom/google/android/exoplayer2/j/e;->e:I

    mul-int/2addr v3, v4

    .line 79
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    iget v4, v4, Lcom/google/android/exoplayer2/j/e;->f:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    iget v5, v5, Lcom/google/android/exoplayer2/j/e;->e:I

    move-object v7, v0

    move-object v8, v0

    .line 78
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer2/c/e/h$a;->a:Lcom/google/android/exoplayer2/Format;

    :cond_0
    move v0, v9

    .line 91
    :goto_0
    return v0

    .line 81
    :cond_1
    aget-byte v0, v2, v1

    and-int/lit8 v0, v0, 0x7f

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/c/e/b$a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/c/e/b$a;-><init>(Lcom/google/android/exoplayer2/c/e/b;B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    .line 3151
    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3152
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v2

    .line 3153
    div-int/lit8 v2, v2, 0x12

    .line 3155
    new-array v3, v2, [J

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/e/b$a;->a:[J

    .line 3156
    new-array v3, v2, [J

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/e/b$a;->b:[J

    .line 3158
    :goto_1
    if-ge v1, v2, :cond_0

    .line 3159
    iget-object v3, v0, Lcom/google/android/exoplayer2/c/e/b$a;->a:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3160
    iget-object v3, v0, Lcom/google/android/exoplayer2/c/e/b$a;->b:[J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->l()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3161
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 3158
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/c/e/b;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    .line 4138
    iput-wide p2, v0, Lcom/google/android/exoplayer2/c/e/b$a;->c:J

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b;->d:Lcom/google/android/exoplayer2/c/e/b$a;

    iput-object v0, p4, Lcom/google/android/exoplayer2/c/e/h$a;->b:Lcom/google/android/exoplayer2/c/e/f;

    :cond_3
    move v0, v1

    .line 89
    goto :goto_0
.end method
