.class final Lcom/google/android/exoplayer2/c/f/h;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/f/h$a;
    }
.end annotation


# static fields
.field private static final b:[D


# instance fields
.field private a:Lcom/google/android/exoplayer2/c/o;

.field private c:Z

.field private d:J

.field private final e:[Z

.field private final f:Lcom/google/android/exoplayer2/c/f/h$a;

.field private g:Z

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c/f/h;->b:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->e:[Z

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/c/f/h$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/h$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    .line 67
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->e:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/i;->a([Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    .line 1233
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/c/f/h$a;->a:Z

    .line 1234
    iput v1, v0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    .line 1235
    iput v1, v0, Lcom/google/android/exoplayer2/c/f/h$a;->c:I

    .line 73
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/h;->j:Z

    .line 74
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/h;->g:Z

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->h:J

    .line 76
    return-void
.end method

.method public final a(JZ)V
    .locals 3

    .prologue
    .line 85
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->j:Z

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->j:Z

    if-eqz v0, :cond_0

    .line 87
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/h;->i:J

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->a:Lcom/google/android/exoplayer2/c/o;

    .line 81
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 14

    .prologue
    .line 93
    .line 2126
    iget v0, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 3109
    iget v9, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 95
    iget-object v10, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 98
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/h;->h:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/f/h;->h:J

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h;->a:Lcom/google/android/exoplayer2/c/o;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    move v1, v0

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/h;->e:[Z

    invoke-static {v10, v0, v9, v2}, Lcom/google/android/exoplayer2/j/i;->a([BII[Z)I

    move-result v8

    .line 105
    if-ne v8, v9, :cond_1

    .line 107
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->c:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    invoke-virtual {v0, v10, v1, v9}, Lcom/google/android/exoplayer2/c/f/h$a;->a([BII)V

    .line 110
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    add-int/lit8 v2, v8, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v11, v0, 0xff

    .line 116
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->c:Z

    if-nez v0, :cond_6

    .line 119
    sub-int v0, v8, v1

    .line 120
    if-lez v0, :cond_2

    .line 121
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    invoke-virtual {v2, v10, v1, v8}, Lcom/google/android/exoplayer2/c/f/h$a;->a([BII)V

    .line 125
    :cond_2
    if-gez v0, :cond_a

    neg-int v0, v0

    .line 126
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    .line 3249
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/c/f/h$a;->a:Z

    if-eqz v2, :cond_c

    .line 3250
    iget v2, v1, Lcom/google/android/exoplayer2/c/f/h$a;->c:I

    if-nez v2, :cond_b

    const/16 v2, 0xb5

    if-ne v11, v2, :cond_b

    .line 3251
    iget v0, v1, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    iput v0, v1, Lcom/google/android/exoplayer2/c/f/h$a;->c:I

    .line 3260
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 126
    :goto_3
    if-eqz v0, :cond_6

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/h;->f:Lcom/google/android/exoplayer2/c/f/h$a;

    .line 4172
    iget-object v0, v2, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    iget v1, v2, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 4174
    const/4 v0, 0x4

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    .line 4175
    const/4 v1, 0x5

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 4176
    const/4 v4, 0x6

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    .line 4177
    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v5, v0

    .line 4178
    and-int/lit8 v0, v1, 0xf

    shl-int/lit8 v0, v0, 0x8

    or-int v1, v0, v4

    .line 4180
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4181
    const/4 v4, 0x7

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 4182
    packed-switch v4, :pswitch_data_0

    .line 4197
    :goto_4
    const-string/jumbo v4, "video/mpeg2"

    .line 4199
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 4197
    invoke-static {v4, v5, v1, v6, v0}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;IILjava/util/List;F)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 4201
    const-wide/16 v0, 0x0

    .line 4202
    const/4 v5, 0x7

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, -0x1

    .line 4203
    if-ltz v5, :cond_5

    sget-object v6, Lcom/google/android/exoplayer2/c/f/h;->b:[D

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 4204
    sget-object v0, Lcom/google/android/exoplayer2/c/f/h;->b:[D

    aget-wide v0, v0, v5

    .line 4205
    iget v2, v2, Lcom/google/android/exoplayer2/c/f/h$a;->c:I

    .line 4206
    add-int/lit8 v5, v2, 0x9

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0x60

    shr-int/lit8 v5, v5, 0x5

    .line 4207
    add-int/lit8 v2, v2, 0x9

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1f

    .line 4208
    if-eq v5, v2, :cond_4

    .line 4209
    int-to-double v6, v5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v12

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    .line 4211
    :cond_4
    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v0, v2, v0

    double-to-long v0, v0

    .line 4214
    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/h;->a:Lcom/google/android/exoplayer2/c/o;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 130
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->d:J

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->c:Z

    .line 135
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->c:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xb8

    if-eq v11, v0, :cond_7

    if-nez v11, :cond_9

    .line 136
    :cond_7
    sub-int v6, v9, v8

    .line 137
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->g:Z

    if-eqz v0, :cond_8

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->k:Z

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    .line 139
    :goto_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/h;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v5, v0, v6

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h;->a:Lcom/google/android/exoplayer2/c/o;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/h;->m:J

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->k:Z

    .line 143
    :cond_8
    const/16 v0, 0xb8

    if-ne v11, v0, :cond_e

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->g:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->k:Z

    .line 155
    :cond_9
    :goto_6
    add-int/lit8 v0, v8, 0x3

    move v1, v8

    .line 156
    goto/16 :goto_0

    .line 125
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3253
    :cond_b
    iget v2, v1, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    .line 3254
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/c/f/h$a;->a:Z

    .line 3255
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 3257
    :cond_c
    const/16 v0, 0xb3

    if-ne v11, v0, :cond_3

    .line 3258
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/c/f/h$a;->a:Z

    goto/16 :goto_2

    .line 4184
    :pswitch_0
    mul-int/lit8 v0, v1, 0x4

    int-to-float v0, v0

    mul-int/lit8 v4, v5, 0x3

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 4185
    goto/16 :goto_4

    .line 4187
    :pswitch_1
    mul-int/lit8 v0, v1, 0x10

    int-to-float v0, v0

    mul-int/lit8 v4, v5, 0x9

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 4188
    goto/16 :goto_4

    .line 4190
    :pswitch_2
    mul-int/lit8 v0, v1, 0x79

    int-to-float v0, v0

    mul-int/lit8 v4, v5, 0x64

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto/16 :goto_4

    .line 138
    :cond_d
    const/4 v4, 0x0

    goto :goto_5

    .line 147
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->j:Z

    if-eqz v0, :cond_f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->i:J

    :goto_7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->m:J

    .line 148
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->h:J

    int-to-long v2, v6

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->l:J

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->j:Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h;->g:Z

    goto :goto_6

    .line 147
    :cond_f
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/h;->m:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/h;->d:J

    add-long/2addr v0, v2

    goto :goto_7

    .line 4182
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
