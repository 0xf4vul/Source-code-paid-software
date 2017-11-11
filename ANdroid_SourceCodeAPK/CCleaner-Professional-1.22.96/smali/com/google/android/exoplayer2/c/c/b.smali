.class final Lcom/google/android/exoplayer2/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/r;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/c/c/b;->a:I

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    const-string/jumbo v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UTF-16LE"

    .line 38
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "UTF-16BE"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/c/c/b;->b:[Ljava/nio/charset/Charset;

    .line 37
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/j;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v3, Lcom/google/android/exoplayer2/j/k;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    .line 51
    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    iget-object v0, v3, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v2, 0x0

    const/16 v4, 0xa

    invoke-interface {p0, v0, v2, v4}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 55
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v0

    sget v2, Lcom/google/android/exoplayer2/c/c/b;->a:I

    if-ne v0, v2, :cond_1c

    .line 59
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v4

    .line 60
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 61
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v5

    .line 62
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v6

    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/c/j;->a()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1079
    const/16 v2, 0xff

    if-eq v0, v2, :cond_4

    const/4 v0, 0x2

    if-lt v4, v0, :cond_4

    const/4 v0, 0x4

    if-gt v4, v0, :cond_4

    const/high16 v0, 0x300000

    if-gt v6, v0, :cond_4

    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    and-int/lit8 v0, v5, 0x3f

    if-nez v0, :cond_4

    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    and-int/lit8 v0, v5, 0x1f

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x4

    if-ne v4, v0, :cond_2

    and-int/lit8 v0, v5, 0xf

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 63
    :goto_1
    if-eqz v0, :cond_1b

    .line 64
    new-array v0, v6, [B

    .line 65
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v6}, Lcom/google/android/exoplayer2/c/g;->c([BII)V

    .line 66
    new-instance v7, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    .line 1184
    const/4 v0, 0x4

    if-eq v4, v0, :cond_b

    .line 1185
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_6

    .line 1187
    iget-object v8, v7, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 1188
    array-length v0, v8

    .line 1189
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v9, v2, 0x1

    if-ge v9, v0, :cond_5

    .line 1190
    aget-byte v9, v8, v2

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_3

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v8, v9

    if-nez v9, :cond_3

    .line 1191
    add-int/lit8 v9, v2, 0x2

    add-int/lit8 v10, v2, 0x1

    sub-int v11, v0, v2

    add-int/lit8 v11, v11, -0x2

    invoke-static {v8, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1192
    add-int/lit8 v0, v0, -0x1

    .line 1189
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1079
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1195
    :cond_5
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 1091
    :cond_6
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1092
    const/4 v0, 0x3

    if-ne v4, v0, :cond_d

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_d

    .line 1093
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_a

    .line 1096
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v0

    .line 1097
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    if-gt v0, v2, :cond_a

    .line 1101
    const/4 v2, 0x6

    if-lt v0, v2, :cond_7

    .line 1102
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1103
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v2

    .line 1104
    const/4 v5, 0x4

    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 2109
    iget v5, v7, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 1105
    sub-int v2, v5, v2

    invoke-virtual {v7, v2}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 1106
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    if-lt v2, v0, :cond_a

    .line 1110
    :cond_7
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 2136
    :cond_8
    :goto_4
    const/4 v0, 0x2

    if-ne v4, v0, :cond_10

    .line 2137
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_1a

    .line 2140
    const/4 v0, 0x3

    const-string/jumbo v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/google/android/exoplayer2/j/k;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 2141
    const-string/jumbo v0, "\u0000\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2144
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v0

    .line 2145
    if-eqz v0, :cond_9

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v5

    if-le v0, v5, :cond_e

    .line 2146
    :cond_9
    const/4 v0, 0x0

    move-object v2, v0

    .line 1124
    :goto_5
    if-eqz v2, :cond_a

    .line 1125
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x3

    if-le v0, v5, :cond_8

    .line 1126
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Lcom/google/android/exoplayer2/c/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 71
    :cond_a
    :goto_6
    add-int/lit8 v0, v6, 0xa

    add-int/2addr v0, v1

    move v1, v0

    .line 72
    goto/16 :goto_0

    .line 1199
    :cond_b
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/c/c/b;->a(Lcom/google/android/exoplayer2/j/k;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1200
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/c/c/b;->b(Lcom/google/android/exoplayer2/j/k;Z)V

    goto/16 :goto_3

    .line 1201
    :cond_c
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/c/c/b;->a(Lcom/google/android/exoplayer2/j/k;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1202
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/c/c/b;->b(Lcom/google/android/exoplayer2/j/k;Z)V

    goto/16 :goto_3

    .line 1111
    :cond_d
    const/4 v0, 0x4

    if-ne v4, v0, :cond_8

    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_8

    .line 1112
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_a

    .line 1115
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v0

    .line 1116
    const/4 v2, 0x6

    if-lt v0, v2, :cond_a

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    if-gt v0, v2, :cond_a

    .line 1119
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto/16 :goto_4

    .line 2148
    :cond_e
    const-string/jumbo v5, "COM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2170
    :cond_f
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto/16 :goto_4

    .line 2152
    :cond_10
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1a

    .line 2155
    const/4 v0, 0x4

    const-string/jumbo v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/google/android/exoplayer2/j/k;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 2156
    const-string/jumbo v0, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2159
    const/4 v0, 0x4

    if-ne v4, v0, :cond_12

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v0

    .line 2160
    :goto_7
    if-eqz v0, :cond_11

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_13

    .line 2161
    :cond_11
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_5

    .line 2159
    :cond_12
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v0

    goto :goto_7

    .line 2163
    :cond_13
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v2

    .line 2164
    const/4 v8, 0x4

    if-ne v4, v8, :cond_14

    and-int/lit8 v8, v2, 0xc

    if-nez v8, :cond_15

    :cond_14
    const/4 v8, 0x3

    if-ne v4, v8, :cond_18

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_18

    :cond_15
    const/4 v2, 0x1

    .line 2166
    :goto_8
    if-nez v2, :cond_f

    const-string/jumbo v2, "COMM"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2174
    :cond_16
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v2

    .line 2175
    if-ltz v2, :cond_17

    sget-object v5, Lcom/google/android/exoplayer2/c/c/b;->b:[Ljava/nio/charset/Charset;

    array-length v5, v5

    if-lt v2, v5, :cond_19

    .line 2176
    :cond_17
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_5

    .line 2164
    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    .line 2178
    :cond_19
    sget-object v5, Lcom/google/android/exoplayer2/c/c/b;->b:[Ljava/nio/charset/Charset;

    aget-object v2, v5, v2

    .line 2179
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0, v2}, Lcom/google/android/exoplayer2/j/k;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2180
    array-length v2, v0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1a

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_5

    :cond_1a
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_5

    .line 68
    :cond_1b
    invoke-interface {p0, v6}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    goto/16 :goto_6

    .line 73
    :cond_1c
    invoke-interface {p0}, Lcom/google/android/exoplayer2/c/g;->a()V

    .line 74
    invoke-interface {p0, v1}, Lcom/google/android/exoplayer2/c/g;->c(I)V

    .line 75
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/j/k;Z)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x7f

    const/4 v3, 0x0

    .line 212
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 237
    :goto_1
    return v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    .line 218
    if-nez p1, :cond_2

    .line 220
    const-wide/32 v4, 0x808080

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v0, v3

    .line 221
    goto :goto_1

    .line 223
    :cond_1
    and-long v4, v0, v10

    const/16 v6, 0x8

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long v6, v0, v6

    and-long/2addr v6, v10

    const/16 v8, 0xe

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    const/16 v6, 0x18

    shr-long/2addr v0, v6

    and-long/2addr v0, v10

    const/16 v6, 0x15

    shl-long/2addr v0, v6

    or-long/2addr v0, v4

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    move v0, v3

    .line 227
    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v4

    .line 230
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    move v0, v3

    .line 232
    goto :goto_1

    .line 235
    :cond_4
    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 237
    goto :goto_1
.end method

.method private static b(Lcom/google/android/exoplayer2/j/k;Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 241
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 242
    iget-object v9, p0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    return-void

    .line 247
    :cond_1
    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v0

    .line 249
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->e()I

    move-result v8

    .line 251
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_8

    .line 3126
    iget v1, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 254
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-static {v9, v2, v9, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    add-int/lit8 v1, v0, -0x4

    .line 256
    and-int/lit8 v2, v8, -0x2

    .line 4109
    iget v0, p0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 257
    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 259
    :goto_2
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_7

    .line 4126
    iget v0, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 261
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move v5, v0

    .line 263
    :goto_3
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v1, :cond_4

    .line 264
    add-int/lit8 v6, v0, -0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_2

    aget-byte v6, v9, v0

    if-nez v6, :cond_2

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 266
    add-int/lit8 v1, v1, -0x1

    .line 268
    :cond_2
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v9, v5

    .line 263
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v6

    move v0, v7

    goto :goto_3

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->m()I

    move-result v0

    goto :goto_1

    .line 5109
    :cond_4
    iget v3, p0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 270
    sub-int v6, v0, v5

    sub-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v9, v0, v9, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    and-int/lit8 v0, v2, -0x3

    .line 274
    :goto_4
    if-ne v0, v8, :cond_5

    if-eqz p1, :cond_6

    .line 5126
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 275
    add-int/lit8 v2, v2, -0x6

    .line 5285
    shr-int/lit8 v3, v1, 0x15

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 5286
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v5, v1, 0xe

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    .line 5287
    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v5, v1, 0x7

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    .line 5288
    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v5, v1, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    .line 277
    add-int/lit8 v3, v2, 0x4

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    .line 278
    add-int/lit8 v2, v2, 0x5

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    .line 280
    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v2, v8

    move v1, v0

    goto/16 :goto_2
.end method
