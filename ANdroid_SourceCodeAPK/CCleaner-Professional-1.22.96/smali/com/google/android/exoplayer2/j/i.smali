.class public final Lcom/google/android/exoplayer2/j/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/j/i$a;,
        Lcom/google/android/exoplayer2/j/i$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/j/i;->a:[B

    .line 86
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/j/i;->b:[F

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/j/i;->c:Ljava/lang/Object;

    .line 114
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/j/i;->d:[I

    return-void

    .line 81
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 86
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BI)I
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v4, Lcom/google/android/exoplayer2/j/i;->c:Ljava/lang/Object;

    monitor-enter v4

    move v3, v0

    move v1, v0

    .line 131
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_4

    .line 1449
    :goto_1
    add-int/lit8 v2, p1, -0x2

    if-ge v1, v2, :cond_3

    .line 1450
    :try_start_0
    aget-byte v2, p0, v1

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 133
    :goto_2
    if-ge v1, p1, :cond_0

    .line 134
    sget-object v2, Lcom/google/android/exoplayer2/j/i;->d:[I

    array-length v2, v2

    if-gt v2, v3, :cond_1

    .line 136
    sget-object v2, Lcom/google/android/exoplayer2/j/i;->d:[I

    sget-object v5, Lcom/google/android/exoplayer2/j/i;->d:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/j/i;->d:[I

    .line 139
    :cond_1
    sget-object v5, Lcom/google/android/exoplayer2/j/i;->d:[I

    add-int/lit8 v2, v3, 0x1

    aput v1, v5, v3

    .line 140
    add-int/lit8 v1, v1, 0x3

    move v3, v2

    goto :goto_0

    .line 1449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, p1

    .line 1454
    goto :goto_2

    .line 144
    :cond_4
    sub-int v5, p1, v3

    move v1, v0

    move v2, v0

    .line 147
    :goto_3
    if-ge v0, v3, :cond_5

    .line 148
    sget-object v6, Lcom/google/android/exoplayer2/j/i;->d:[I

    aget v6, v6, v0

    .line 149
    sub-int/2addr v6, v2

    .line 150
    invoke-static {p0, v2, p0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/2addr v1, v6

    .line 152
    add-int/lit8 v7, v1, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v1

    .line 153
    add-int/lit8 v1, v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v7

    .line 154
    add-int/lit8 v6, v6, 0x3

    add-int/2addr v2, v6

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 157
    :cond_5
    sub-int v0, v5, v1

    .line 158
    invoke-static {p0, v2, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    monitor-exit v4

    return v5

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a([BII[Z)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 381
    sub-int v3, p2, p1

    .line 383
    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 384
    if-nez v3, :cond_2

    .line 434
    :cond_0
    :goto_1
    return p2

    :cond_1
    move v0, v2

    .line 383
    goto :goto_0

    .line 388
    :cond_2
    if-eqz p3, :cond_5

    .line 389
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_3

    .line 390
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 391
    add-int/lit8 p2, p1, -0x3

    goto :goto_1

    .line 392
    :cond_3
    if-le v3, v1, :cond_4

    aget-boolean v0, p3, v1

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_4

    .line 393
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 394
    add-int/lit8 p2, p1, -0x2

    goto :goto_1

    .line 395
    :cond_4
    if-le v3, v6, :cond_5

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_5

    aget-byte v0, p0, p1

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_5

    .line 397
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 398
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    .line 402
    :cond_5
    add-int/lit8 v4, p2, -0x1

    .line 405
    add-int/lit8 v0, p1, 0x2

    :goto_2
    if-ge v0, v4, :cond_9

    .line 406
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-nez v5, :cond_8

    .line 409
    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_7

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_7

    aget-byte v5, p0, v0

    if-ne v5, v1, :cond_7

    .line 410
    if-eqz p3, :cond_6

    .line 411
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 413
    :cond_6
    add-int/lit8 p2, v0, -0x2

    goto :goto_1

    .line 417
    :cond_7
    add-int/lit8 v0, v0, -0x2

    .line 405
    :cond_8
    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    .line 421
    :cond_9
    if-eqz p3, :cond_0

    .line 423
    if-le v3, v6, :cond_b

    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_3
    aput-boolean v0, p3, v2

    .line 428
    if-le v3, v1, :cond_10

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_f

    move v0, v1

    :goto_4
    aput-boolean v0, p3, v1

    .line 431
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_12

    :goto_5
    aput-boolean v1, p3, v6

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 423
    goto :goto_3

    :cond_b
    if-ne v3, v6, :cond_d

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    aget-boolean v0, p3, v1

    if-eqz v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_3

    :cond_e
    move v0, v2

    goto :goto_3

    :cond_f
    move v0, v2

    .line 428
    goto :goto_4

    :cond_10
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_11

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_4

    :cond_11
    move v0, v2

    goto :goto_4

    :cond_12
    move v1, v2

    .line 431
    goto :goto_5
.end method

.method public static a([BII)Lcom/google/android/exoplayer2/j/i$b;
    .locals 23

    .prologue
    .line 234
    new-instance v16, Lcom/google/android/exoplayer2/j/l;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/j/l;-><init>([BII)V

    .line 235
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 236
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v7

    .line 237
    const/16 v4, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 2194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v5

    .line 240
    const/4 v6, 0x1

    .line 241
    const/4 v4, 0x0

    .line 242
    const/16 v8, 0x64

    if-eq v7, v8, :cond_0

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    const/16 v8, 0xf4

    if-eq v7, v8, :cond_0

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_0

    const/16 v8, 0x53

    if-eq v7, v8, :cond_0

    const/16 v8, 0x56

    if-eq v7, v8, :cond_0

    const/16 v8, 0x76

    if-eq v7, v8, :cond_0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_0

    const/16 v8, 0x8a

    if-ne v7, v8, :cond_16

    .line 3194
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v10

    .line 246
    const/4 v6, 0x3

    if-ne v10, v6, :cond_1

    .line 247
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v4

    .line 4194
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 5194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 251
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 252
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v6

    .line 253
    if-eqz v6, :cond_7

    .line 254
    const/4 v6, 0x3

    if-eq v10, v6, :cond_3

    const/16 v6, 0x8

    .line 255
    :goto_0
    const/4 v7, 0x0

    move v11, v7

    :goto_1
    if-ge v11, v6, :cond_7

    .line 256
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v7

    .line 257
    if-eqz v7, :cond_6

    .line 258
    const/4 v7, 0x6

    if-ge v11, v7, :cond_4

    const/16 v7, 0x10

    move v9, v7

    .line 5458
    :goto_2
    const/16 v12, 0x8

    .line 5459
    const/16 v8, 0x8

    .line 5460
    const/4 v7, 0x0

    move/from16 v22, v7

    move v7, v12

    move/from16 v12, v22

    :goto_3
    if-ge v12, v9, :cond_6

    .line 5461
    if-eqz v8, :cond_2

    .line 5462
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->c()I

    move-result v8

    .line 5463
    add-int/2addr v8, v7

    add-int/lit16 v8, v8, 0x100

    rem-int/lit16 v8, v8, 0x100

    .line 5465
    :cond_2
    if-nez v8, :cond_5

    .line 5460
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 254
    :cond_3
    const/16 v6, 0xc

    goto :goto_0

    .line 258
    :cond_4
    const/16 v7, 0x40

    move v9, v7

    goto :goto_2

    :cond_5
    move v7, v8

    .line 5465
    goto :goto_4

    .line 255
    :cond_6
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    goto :goto_1

    :cond_7
    move v9, v4

    move v4, v10

    .line 6194
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 264
    add-int/lit8 v11, v6, 0x4

    .line 7194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v12

    .line 266
    const/4 v13, 0x0

    .line 267
    const/4 v14, 0x0

    .line 268
    if-nez v12, :cond_b

    .line 8194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 270
    add-int/lit8 v13, v6, 0x4

    .line 11194
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 281
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 12194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 283
    add-int/lit8 v7, v6, 0x1

    .line 13194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 284
    add-int/lit8 v8, v6, 0x1

    .line 285
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v10

    .line 286
    if-eqz v10, :cond_c

    const/4 v6, 0x1

    :goto_6
    rsub-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, v8

    .line 287
    if-nez v10, :cond_9

    .line 288
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 291
    :cond_9
    const/4 v8, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 292
    mul-int/lit8 v7, v7, 0x10

    .line 293
    mul-int/lit8 v8, v6, 0x10

    .line 294
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v6

    .line 295
    if-eqz v6, :cond_15

    .line 14194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v17

    .line 15194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v18

    .line 16194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v19

    .line 17194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v20

    .line 301
    if-nez v4, :cond_e

    .line 302
    const/4 v6, 0x1

    .line 303
    if-eqz v10, :cond_d

    const/4 v4, 0x1

    :goto_7
    rsub-int/lit8 v4, v4, 0x2

    .line 310
    :goto_8
    add-int v15, v17, v18

    mul-int/2addr v6, v15

    sub-int v6, v7, v6

    .line 311
    add-int v7, v19, v20

    mul-int/2addr v4, v7

    sub-int v7, v8, v4

    .line 314
    :goto_9
    const/high16 v4, 0x3f800000    # 1.0f

    .line 315
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v8

    .line 316
    if-eqz v8, :cond_14

    .line 317
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v8

    .line 318
    if-eqz v8, :cond_14

    .line 319
    const/16 v8, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v8

    .line 320
    const/16 v15, 0xff

    if-ne v8, v15, :cond_12

    .line 321
    const/16 v8, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v8

    .line 322
    const/16 v15, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/j/l;->c(I)I

    move-result v15

    .line 323
    if-eqz v8, :cond_a

    if-eqz v15, :cond_a

    .line 324
    int-to-float v4, v8

    int-to-float v8, v15

    div-float/2addr v4, v8

    :cond_a
    move v8, v4

    .line 334
    :goto_a
    new-instance v4, Lcom/google/android/exoplayer2/j/i$b;

    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/j/i$b;-><init>(IIIFZZIIIZ)V

    return-object v4

    .line 271
    :cond_b
    const/4 v6, 0x1

    if-ne v12, v6, :cond_8

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v14

    .line 273
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->c()I

    .line 274
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->c()I

    .line 9194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v6

    .line 275
    int-to-long v0, v6

    move-wide/from16 v18, v0

    .line 276
    const/4 v6, 0x0

    :goto_b
    int-to-long v0, v6

    move-wide/from16 v20, v0

    cmp-long v7, v20, v18

    if-gez v7, :cond_8

    .line 10194
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/j/l;->d()I

    .line 276
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 286
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 303
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 305
    :cond_e
    const/4 v6, 0x3

    if-ne v4, v6, :cond_f

    const/4 v6, 0x1

    .line 306
    :goto_c
    const/4 v15, 0x1

    if-ne v4, v15, :cond_10

    const/4 v4, 0x2

    move v15, v4

    .line 308
    :goto_d
    if-eqz v10, :cond_11

    const/4 v4, 0x1

    :goto_e
    rsub-int/lit8 v4, v4, 0x2

    mul-int/2addr v4, v15

    goto :goto_8

    .line 305
    :cond_f
    const/4 v6, 0x2

    goto :goto_c

    .line 306
    :cond_10
    const/4 v4, 0x1

    move v15, v4

    goto :goto_d

    .line 308
    :cond_11
    const/4 v4, 0x0

    goto :goto_e

    .line 326
    :cond_12
    sget-object v15, Lcom/google/android/exoplayer2/j/i;->b:[F

    array-length v15, v15

    if-ge v8, v15, :cond_13

    .line 327
    sget-object v4, Lcom/google/android/exoplayer2/j/i;->b:[F

    aget v4, v4, v8

    move v8, v4

    goto :goto_a

    .line 329
    :cond_13
    const-string/jumbo v15, "NalUnitUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Unexpected aspect_ratio_idc value: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v8, v4

    goto :goto_a

    :cond_15
    move v6, v7

    move v7, v8

    goto/16 :goto_9

    :cond_16
    move v9, v4

    move v4, v6

    goto/16 :goto_5
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 176
    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    .line 177
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 178
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 179
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 181
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 184
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 198
    :goto_1
    return-void

    .line 188
    :cond_0
    if-nez v4, :cond_1

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_1
    if-eqz v4, :cond_2

    move v0, v1

    .line 194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 195
    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1
.end method

.method public static a([Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    aput-boolean v1, p0, v1

    .line 444
    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    .line 445
    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    .line 446
    return-void
.end method

.method public static b([BI)I
    .locals 1

    .prologue
    .line 209
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static c([BI)I
    .locals 1

    .prologue
    .line 221
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static d([BI)Lcom/google/android/exoplayer2/j/i$a;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Lcom/google/android/exoplayer2/j/l;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/exoplayer2/j/l;-><init>([BII)V

    .line 350
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 18194
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v1

    .line 19194
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/l;->d()I

    move-result v2

    .line 353
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/j/l;->a(I)V

    .line 354
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/l;->a()Z

    move-result v0

    .line 355
    new-instance v3, Lcom/google/android/exoplayer2/j/i$a;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer2/j/i$a;-><init>(IIZ)V

    return-object v3
.end method
