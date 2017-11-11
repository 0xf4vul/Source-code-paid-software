.class final Lcom/google/android/exoplayer2/c/e/j;
.super Lcom/google/android/exoplayer2/c/e/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/e/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/c/e/j$a;

.field private d:I

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/c/e/k$d;

.field private g:Lcom/google/android/exoplayer2/c/e/k$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/e/h;-><init>()V

    return-void
.end method

.method public static b(Lcom/google/android/exoplayer2/j/k;)Z
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/c/e/k;->a(ILcom/google/android/exoplayer2/j/k;Z)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 42
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/j/k;)J
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0xff

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_0

    .line 69
    const-wide/16 v0, -0x1

    .line 84
    :goto_0
    return-wide v0

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v0, v0, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    .line 1164
    iget v3, v2, Lcom/google/android/exoplayer2/c/e/j$a;->e:I

    .line 2146
    shr-int/lit8 v0, v0, 0x1

    const/16 v4, 0xff

    rsub-int/lit8 v3, v3, 0x8

    ushr-int v3, v4, v3

    and-int/2addr v0, v3

    .line 1166
    iget-object v3, v2, Lcom/google/android/exoplayer2/c/e/j$a;->d:[Lcom/google/android/exoplayer2/c/e/k$c;

    aget-object v0, v3, v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/c/e/k$c;->a:Z

    if-nez v0, :cond_2

    .line 1167
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/k$d;->g:I

    .line 76
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/e/j;->e:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/c/e/j;->d:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    .line 79
    :cond_1
    int-to-long v2, v1

    .line 3109
    iget v4, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 2153
    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 2156
    iget-object v4, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 4109
    iget v5, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 2156
    add-int/lit8 v5, v5, -0x4

    and-long v6, v2, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 2157
    iget-object v4, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 5109
    iget v5, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 2157
    add-int/lit8 v5, v5, -0x3

    const/16 v6, 0x8

    ushr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 2158
    iget-object v4, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 6109
    iget v5, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 2158
    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 2159
    iget-object v4, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 7109
    iget v5, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 2159
    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x18

    ushr-long/2addr v2, v6

    and-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 82
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/c/e/j;->e:Z

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer2/c/e/j;->d:I

    .line 84
    int-to-long v0, v1

    goto :goto_0

    .line 1169
    :cond_2
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/k$d;->h:I

    goto :goto_1
.end method

.method protected final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/c/e/h;->a(Z)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    .line 51
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    .line 52
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/j;->g:Lcom/google/android/exoplayer2/c/e/k$b;

    .line 54
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/c/e/j;->d:I

    .line 55
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/e/j;->e:Z

    .line 56
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/j/k;JLcom/google/android/exoplayer2/c/e/h$a;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    if-eqz v2, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 7113
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    if-nez v2, :cond_2

    .line 8059
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/c/e/k;->a(ILcom/google/android/exoplayer2/j/k;Z)Z

    .line 8061
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v3

    .line 8062
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v5

    .line 8063
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v6

    .line 8064
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->k()I

    move-result v8

    .line 8065
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->k()I

    move-result v9

    .line 8066
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->k()I

    move-result v10

    .line 8068
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    .line 8069
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    and-int/lit8 v11, v2, 0xf

    int-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v11, v12

    .line 8070
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    int-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v12, v12

    .line 8072
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/4 v13, 0x1

    .line 8074
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 8109
    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 8074
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 8076
    new-instance v2, Lcom/google/android/exoplayer2/c/e/k$d;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/exoplayer2/c/e/k$d;-><init>(JIJIIIIIZ[B)V

    .line 7114
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    .line 7115
    const/4 v2, 0x0

    .line 94
    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    if-nez v2, :cond_14

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    .line 8072
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 7118
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->g:Lcom/google/android/exoplayer2/c/e/k$b;

    if-nez v2, :cond_5

    .line 9092
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/c/e/k;->a(ILcom/google/android/exoplayer2/j/k;Z)Z

    .line 9095
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v2

    long-to-int v2, v2

    .line 9097
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/j/k;->e(I)Ljava/lang/String;

    move-result-object v4

    .line 9098
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    .line 9100
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v6

    .line 9101
    long-to-int v3, v6

    new-array v5, v3, [Ljava/lang/String;

    .line 9102
    add-int/lit8 v2, v2, 0x4

    .line 9103
    const/4 v3, 0x0

    :goto_3
    int-to-long v8, v3

    cmp-long v8, v8, v6

    if-gez v8, :cond_3

    .line 9104
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->i()J

    move-result-wide v8

    long-to-int v8, v8

    .line 9105
    add-int/lit8 v2, v2, 0x4

    .line 9106
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/k;->e(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 9107
    aget-object v8, v5, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v2, v8

    .line 9103
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 9109
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 9110
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "framing bit expected to be set"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9112
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 9113
    new-instance v3, Lcom/google/android/exoplayer2/c/e/k$b;

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/exoplayer2/c/e/k$b;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 7119
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/c/e/j;->g:Lcom/google/android/exoplayer2/c/e/k$b;

    .line 7120
    const/4 v2, 0x0

    goto :goto_2

    .line 10109
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 7124
    new-array v11, v2, [B

    .line 7126
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11109
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 7126
    invoke-static {v2, v3, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v12, v2, Lcom/google/android/exoplayer2/c/e/k$d;->b:I

    .line 11175
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/exoplayer2/c/e/k;->a(ILcom/google/android/exoplayer2/j/k;Z)Z

    .line 11177
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 11179
    new-instance v14, Lcom/google/android/exoplayer2/c/e/i;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-direct {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;-><init>([B)V

    .line 12126
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 11180
    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->b(I)V

    .line 11182
    const/4 v2, 0x0

    move v10, v2

    :goto_4
    if-ge v10, v13, :cond_10

    .line 12346
    const/16 v2, 0x18

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v2

    const v3, 0x564342

    if-eq v2, v3, :cond_6

    .line 12347
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12348
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/c/e/i;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12350
    :cond_6
    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v3

    .line 12351
    const/16 v2, 0x18

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v4

    .line 12352
    new-array v5, v4, [J

    .line 12354
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/c/e/i;->a()Z

    move-result v7

    .line 12355
    if-nez v7, :cond_8

    .line 12356
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/c/e/i;->a()Z

    move-result v6

    .line 12357
    const/4 v2, 0x0

    :goto_5
    array-length v8, v5

    if-ge v2, v8, :cond_a

    .line 12358
    if-eqz v6, :cond_7

    .line 12359
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/c/e/i;->a()Z

    move-result v8

    if-nez v8, :cond_7

    .line 12362
    const-wide/16 v8, 0x0

    aput-wide v8, v5, v2

    .line 12357
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 12365
    :cond_7
    const/4 v8, 0x5

    invoke-virtual {v14, v8}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    aput-wide v8, v5, v2

    goto :goto_6

    .line 12369
    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    .line 12370
    const/4 v2, 0x0

    :goto_7
    array-length v8, v5

    if-ge v2, v8, :cond_a

    .line 12371
    sub-int v8, v4, v2

    invoke-static {v8}, Lcom/google/android/exoplayer2/c/e/k;->a(I)I

    move-result v8

    invoke-virtual {v14, v8}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v15

    .line 12372
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v15, :cond_9

    array-length v9, v5

    if-ge v2, v9, :cond_9

    .line 12373
    int-to-long v0, v6

    move-wide/from16 v16, v0

    aput-wide v16, v5, v2

    .line 12372
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v9

    goto :goto_8

    .line 12375
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 12376
    goto :goto_7

    .line 12379
    :cond_a
    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v6

    .line 12380
    const/4 v2, 0x2

    if-le v6, v2, :cond_b

    .line 12381
    new-instance v2, Lcom/google/android/exoplayer2/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "lookup type greater than 2 not decodable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 12382
    :cond_b
    const/4 v2, 0x1

    if-eq v6, v2, :cond_c

    const/4 v2, 0x2

    if-ne v6, v2, :cond_d

    .line 12383
    :cond_c
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->b(I)V

    .line 12384
    const/16 v2, 0x20

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->b(I)V

    .line 12385
    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 12386
    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Lcom/google/android/exoplayer2/c/e/i;->b(I)V

    .line 12388
    const/4 v8, 0x1

    if-ne v6, v8, :cond_f

    .line 12389
    if-eqz v3, :cond_e

    .line 12390
    int-to-long v8, v4

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 12407
    long-to-double v8, v8

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v18, v16

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    .line 12398
    :goto_9
    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v8, v8, v16

    long-to-int v2, v8

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->b(I)V

    .line 12400
    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/c/e/k$a;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/e/k$a;-><init>(II[JIZ)V

    .line 11182
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_4

    .line 12392
    :cond_e
    const-wide/16 v8, 0x0

    goto :goto_9

    .line 12395
    :cond_f
    mul-int v8, v4, v3

    int-to-long v8, v8

    goto :goto_9

    .line 11186
    :cond_10
    const/4 v2, 0x6

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 11187
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_12

    .line 11188
    const/16 v4, 0x10

    invoke-virtual {v14, v4}, Lcom/google/android/exoplayer2/c/e/i;->a(I)I

    move-result v4

    if-eqz v4, :cond_11

    .line 11189
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11187
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 11192
    :cond_12
    invoke-static {v14}, Lcom/google/android/exoplayer2/c/e/k;->c(Lcom/google/android/exoplayer2/c/e/i;)V

    .line 11193
    invoke-static {v14}, Lcom/google/android/exoplayer2/c/e/k;->b(Lcom/google/android/exoplayer2/c/e/i;)V

    .line 11194
    invoke-static {v12, v14}, Lcom/google/android/exoplayer2/c/e/k;->a(ILcom/google/android/exoplayer2/c/e/i;)V

    .line 11196
    invoke-static {v14}, Lcom/google/android/exoplayer2/c/e/k;->a(Lcom/google/android/exoplayer2/c/e/i;)[Lcom/google/android/exoplayer2/c/e/k$c;

    move-result-object v6

    .line 11197
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/c/e/i;->a()Z

    move-result v2

    if-nez v2, :cond_13

    .line 11198
    new-instance v2, Lcom/google/android/exoplayer2/j;

    const-string/jumbo v3, "framing bit after modes not set as expected"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7130
    :cond_13
    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/c/e/k;->a(I)I

    move-result v7

    .line 7132
    new-instance v2, Lcom/google/android/exoplayer2/c/e/j$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/e/j;->g:Lcom/google/android/exoplayer2/c/e/k$b;

    move-object v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/c/e/j$a;-><init>(Lcom/google/android/exoplayer2/c/e/k$d;Lcom/google/android/exoplayer2/c/e/k$b;[B[Lcom/google/android/exoplayer2/c/e/k$c;I)V

    goto/16 :goto_2

    .line 99
    :cond_14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/e/k$d;->j:[B

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/c/e/j$a;->c:[B

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const/4 v2, 0x0

    const-string/jumbo v3, "audio/vorbis"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    iget-object v4, v4, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v4, v4, Lcom/google/android/exoplayer2/c/e/k$d;->e:I

    const v5, 0xfe01

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v6, v6, Lcom/google/android/exoplayer2/c/e/k$d;->b:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/c/e/j;->a:Lcom/google/android/exoplayer2/c/e/j$a;

    iget-object v7, v7, Lcom/google/android/exoplayer2/c/e/j$a;->a:Lcom/google/android/exoplayer2/c/e/k$d;

    iget-wide v10, v7, Lcom/google/android/exoplayer2/c/e/k$d;->c:J

    long-to-int v7, v10

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/google/android/exoplayer2/c/e/h$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected final d(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/c/e/h;->d(J)V

    .line 61
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/j;->e:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/j;->f:Lcom/google/android/exoplayer2/c/e/k$d;

    iget v1, v0, Lcom/google/android/exoplayer2/c/e/k$d;->g:I

    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/c/e/j;->d:I

    .line 63
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method
