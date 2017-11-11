.class public final Lcom/google/android/exoplayer2/g/a/a;
.super Lcom/google/android/exoplayer2/g/a/b;
.source "SourceFile"


# static fields
.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I


# instance fields
.field private final f:Lcom/google/android/exoplayer2/j/k;

.field private final g:Ljava/lang/StringBuilder;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:B

.field private n:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 91
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/g/a/a;->b:[I

    .line 119
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/g/a/a;->c:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/g/a/a;->d:[I

    .line 149
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplayer2/g/a/a;->e:[I

    return-void

    .line 91
    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    .line 139
    :array_2
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    .line 149
    :array_3
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/b;-><init>()V

    .line 173
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    .line 179
    return-void
.end method

.method private static a(B)C
    .locals 2

    .prologue
    .line 421
    and-int/lit8 v0, p0, 0x7f

    add-int/lit8 v0, v0, -0x20

    .line 422
    sget-object v1, Lcom/google/android/exoplayer2/g/a/a;->b:[I

    aget v0, v1, v0

    int-to-char v0, v0

    return v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-ne v0, p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 414
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 416
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(IILcom/google/android/exoplayer2/j/k;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 465
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 5126
    :cond_1
    iget v1, p2, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 469
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    .line 470
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v3

    .line 471
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v4

    .line 472
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v5

    .line 473
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 474
    const/16 v1, 0xb5

    if-ne v2, v1, :cond_0

    const/16 v1, 0x31

    if-ne v3, v1, :cond_0

    const v1, 0x47413934

    if-ne v4, v1, :cond_0

    const/4 v1, 0x3

    if-ne v5, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 369
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 372
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 373
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :cond_0
    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 380
    if-nez v0, :cond_0

    move-object v0, v1

    .line 403
    :goto_0
    return-object v0

    .line 384
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_1

    move v3, v4

    .line 385
    :goto_1
    if-ne v0, v4, :cond_2

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 386
    goto :goto_0

    :cond_1
    move v3, v2

    .line 384
    goto :goto_1

    .line 389
    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 390
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-eq v1, v4, :cond_4

    .line 391
    iget-object v1, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v1, v2

    move v3, v0

    .line 396
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    if-ge v1, v4, :cond_5

    if-eq v3, v6, :cond_5

    .line 397
    iget-object v4, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 399
    :cond_5
    if-eq v3, v6, :cond_6

    .line 400
    add-int/lit8 v1, v3, 0x1

    .line 402
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 403
    iget-object v3, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public final bridge synthetic a(J)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/g/a/b;->a(J)V

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/g/i;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x20

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, p1, Lcom/google/android/exoplayer2/g/i;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v4, p1, Lcom/google/android/exoplayer2/g/i;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/j/k;->a([BI)V

    move v0, v1

    move v2, v1

    .line 220
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    if-lez v4, :cond_13

    .line 221
    iget-object v4, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    .line 222
    iget-object v5, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    .line 223
    iget-object v6, p0, Lcom/google/android/exoplayer2/g/a/a;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    .line 226
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 232
    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    .line 241
    :cond_1
    const/16 v2, 0x11

    if-eq v5, v2, :cond_2

    const/16 v2, 0x19

    if-ne v5, v2, :cond_3

    :cond_2
    and-int/lit8 v2, v6, 0x70

    const/16 v4, 0x30

    if-ne v2, v4, :cond_3

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    .line 1426
    and-int/lit8 v4, v6, 0xf

    .line 1427
    sget-object v5, Lcom/google/android/exoplayer2/g/a/a;->c:[I

    aget v4, v5, v4

    int-to-char v4, v4

    .line 243
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 244
    goto :goto_0

    .line 250
    :cond_3
    and-int/lit8 v2, v6, 0x60

    if-ne v2, v9, :cond_7

    .line 252
    const/16 v2, 0x12

    if-eq v5, v2, :cond_4

    const/16 v2, 0x1a

    if-ne v5, v2, :cond_5

    .line 254
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->i()V

    .line 255
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    .line 1431
    and-int/lit8 v4, v6, 0x1f

    .line 1432
    sget-object v5, Lcom/google/android/exoplayer2/g/a/a;->d:[I

    aget v4, v5, v4

    int-to-char v4, v4

    .line 255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 256
    goto :goto_0

    .line 260
    :cond_5
    const/16 v2, 0x13

    if-eq v5, v2, :cond_6

    const/16 v2, 0x1b

    if-ne v5, v2, :cond_7

    .line 262
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->i()V

    .line 263
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    .line 1436
    and-int/lit8 v4, v6, 0x1f

    .line 1437
    sget-object v5, Lcom/google/android/exoplayer2/g/a/a;->e:[I

    aget v4, v5, v4

    int-to-char v4, v4

    .line 263
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 264
    goto :goto_0

    .line 269
    :cond_7
    if-ge v5, v9, :cond_11

    .line 2450
    const/16 v0, 0x10

    if-lt v5, v0, :cond_9

    const/16 v0, 0x1f

    if-gt v5, v0, :cond_9

    move v0, v3

    .line 2293
    :goto_1
    if-eqz v0, :cond_b

    .line 2294
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/g/a/a;->l:Z

    if-eqz v2, :cond_a

    iget-byte v2, p0, Lcom/google/android/exoplayer2/g/a/a;->m:B

    if-ne v2, v5, :cond_a

    iget-byte v2, p0, Lcom/google/android/exoplayer2/g/a/a;->n:B

    if-ne v2, v6, :cond_a

    .line 2297
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/g/a/a;->l:Z

    move v0, v3

    :cond_8
    :goto_2
    move v2, v3

    .line 271
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 2450
    goto :goto_1

    .line 2300
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/g/a/a;->l:Z

    .line 2301
    iput-byte v5, p0, Lcom/google/android/exoplayer2/g/a/a;->m:B

    .line 2302
    iput-byte v6, p0, Lcom/google/android/exoplayer2/g/a/a;->n:B

    .line 3441
    :cond_b
    const/16 v2, 0x14

    if-eq v5, v2, :cond_c

    const/16 v2, 0x1c

    if-ne v5, v2, :cond_d

    :cond_c
    if-lt v6, v9, :cond_d

    const/16 v2, 0x2f

    if-gt v6, v2, :cond_d

    move v2, v3

    .line 2305
    :goto_3
    if-eqz v2, :cond_f

    .line 4315
    packed-switch v6, :pswitch_data_0

    .line 4336
    :pswitch_0
    iget v2, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-eqz v2, :cond_8

    .line 4340
    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    .line 4358
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 4359
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_d
    move v2, v1

    .line 3441
    goto :goto_3

    .line 4317
    :pswitch_1
    iput v10, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    .line 4318
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    goto :goto_2

    .line 4321
    :pswitch_2
    iput v8, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    .line 4322
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    goto :goto_2

    .line 4325
    :pswitch_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    .line 4326
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    goto :goto_2

    .line 4329
    :pswitch_4
    invoke-direct {p0, v10}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    goto :goto_2

    .line 4332
    :pswitch_5
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    goto :goto_2

    .line 4342
    :sswitch_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    .line 4343
    iget v2, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-ne v2, v8, :cond_8

    .line 4344
    :cond_e
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 4348
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 4351
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    .line 4352
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 4355
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->j()V

    goto :goto_2

    .line 4446
    :cond_f
    const/16 v2, 0x10

    if-lt v5, v2, :cond_10

    const/16 v2, 0x1f

    if-gt v5, v2, :cond_10

    const/16 v2, 0x40

    if-lt v6, v2, :cond_10

    const/16 v2, 0x7f

    if-gt v6, v2, :cond_10

    move v2, v3

    .line 2307
    :goto_4
    if-eqz v2, :cond_8

    .line 2309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->j()V

    goto/16 :goto_2

    :cond_10
    move v2, v1

    .line 4446
    goto :goto_4

    .line 275
    :cond_11
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/google/android/exoplayer2/g/a/a;->a(B)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    if-lt v6, v9, :cond_12

    .line 277
    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/google/android/exoplayer2/g/a/a;->a(B)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    move v2, v3

    .line 279
    goto/16 :goto_0

    .line 281
    :cond_13
    if-eqz v2, :cond_16

    .line 282
    if-nez v0, :cond_14

    .line 283
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/g/a/a;->l:Z

    .line 285
    :cond_14
    iget v0, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-eq v0, v3, :cond_15

    iget v0, p0, Lcom/google/android/exoplayer2/g/a/a;->h:I

    if-ne v0, v8, :cond_16

    .line 286
    :cond_15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g/a/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    .line 289
    :cond_16
    return-void

    .line 4315
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4340
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic b(Lcom/google/android/exoplayer2/g/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/g/g;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/g/a/b;->b(Lcom/google/android/exoplayer2/g/i;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-super {p0}, Lcom/google/android/exoplayer2/g/a/b;->c()V

    .line 189
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g/a/a;->a(I)V

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/g/a/a;->i:I

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    iput-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->k:Ljava/lang/String;

    .line 194
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/g/a/a;->l:Z

    .line 195
    iput-byte v1, p0, Lcom/google/android/exoplayer2/g/a/a;->m:B

    .line 196
    iput-byte v1, p0, Lcom/google/android/exoplayer2/g/a/a;->n:B

    .line 197
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method protected final e()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()Lcom/google/android/exoplayer2/g/e;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/a/a;->k:Ljava/lang/String;

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/g/a/d;

    new-instance v1, Lcom/google/android/exoplayer2/g/b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g/a/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/g/b;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/g/a/d;-><init>(Lcom/google/android/exoplayer2/g/b;)V

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/exoplayer2/g/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/g/g;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0}, Lcom/google/android/exoplayer2/g/a/b;->g()Lcom/google/android/exoplayer2/g/j;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/exoplayer2/g/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/g/g;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0}, Lcom/google/android/exoplayer2/g/a/b;->h()Lcom/google/android/exoplayer2/g/i;

    move-result-object v0

    return-object v0
.end method
