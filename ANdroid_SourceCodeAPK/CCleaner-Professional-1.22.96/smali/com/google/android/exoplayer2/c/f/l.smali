.class final Lcom/google/android/exoplayer2/c/f/l;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/j/k;

.field private final b:Lcom/google/android/exoplayer2/c/k;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/android/exoplayer2/c/o;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/l;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 61
    iput v2, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/c/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/l;->c:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 73
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/l;->h:Z

    .line 74
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/l;->k:J

    .line 84
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/l;->d:Lcom/google/android/exoplayer2/c/o;

    .line 79
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    if-lez v1, :cond_7

    .line 89
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1121
    :pswitch_0
    iget-object v4, p1, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 2126
    iget v1, p1, Lcom/google/android/exoplayer2/j/k;->b:I

    .line 3109
    iget v5, p1, Lcom/google/android/exoplayer2/j/k;->c:I

    move v3, v1

    .line 1124
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1125
    aget-byte v1, v4, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    move v1, v9

    .line 1126
    :goto_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/c/f/l;->h:Z

    if-eqz v2, :cond_2

    aget-byte v2, v4, v3

    and-int/lit16 v2, v2, 0xe0

    const/16 v6, 0xe0

    if-ne v2, v6, :cond_2

    move v2, v9

    .line 1127
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/l;->h:Z

    .line 1128
    if-eqz v2, :cond_3

    .line 1129
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1131
    iput-boolean v10, p0, Lcom/google/android/exoplayer2/c/f/l;->h:Z

    .line 1132
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    aget-byte v2, v4, v3

    aput-byte v2, v1, v9

    .line 1133
    iput v11, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 1134
    iput v9, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    goto :goto_0

    :cond_1
    move v1, v10

    .line 1125
    goto :goto_2

    :cond_2
    move v2, v10

    .line 1126
    goto :goto_3

    .line 1124
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1138
    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    goto :goto_0

    .line 3158
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3159
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 3160
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 3161
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    if-lt v1, v12, :cond_0

    .line 3166
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3167
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/c/k;->a(ILcom/google/android/exoplayer2/c/k;)Z

    move-result v1

    .line 3168
    if-nez v1, :cond_5

    .line 3170
    iput v10, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 3171
    iput v9, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    goto/16 :goto_0

    .line 3175
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget v1, v1, Lcom/google/android/exoplayer2/c/k;->c:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/l;->j:I

    .line 3176
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/f/l;->g:Z

    if-nez v1, :cond_6

    .line 3177
    const-wide/32 v2, 0xf4240

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget v1, v1, Lcom/google/android/exoplayer2/c/k;->g:I

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget v1, v1, Lcom/google/android/exoplayer2/c/k;->d:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/f/l;->i:J

    .line 3178
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c/k;->b:Ljava/lang/String;

    const/4 v2, -0x1

    const/16 v3, 0x1000

    iget-object v4, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget v4, v4, Lcom/google/android/exoplayer2/c/k;->e:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/c/f/l;->b:Lcom/google/android/exoplayer2/c/k;

    iget v5, v5, Lcom/google/android/exoplayer2/c/k;->d:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/c/f/l;->c:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 3181
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/l;->d:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 3182
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/c/f/l;->g:Z

    .line 3185
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 3186
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->d:Lcom/google/android/exoplayer2/c/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/l;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v1, v2, v12}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 3187
    iput v11, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    goto/16 :goto_0

    .line 3203
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/l;->j:I

    iget v3, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3204
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/l;->d:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v2, p1, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 3205
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 3206
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/l;->j:I

    if-lt v1, v2, :cond_0

    .line 3211
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/l;->d:Lcom/google/android/exoplayer2/c/o;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/l;->k:J

    iget v5, p0, Lcom/google/android/exoplayer2/c/f/l;->j:I

    move v4, v9

    move v6, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 3212
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/l;->k:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/f/l;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/f/l;->k:J

    .line 3213
    iput v10, p0, Lcom/google/android/exoplayer2/c/f/l;->f:I

    .line 3214
    iput v10, p0, Lcom/google/android/exoplayer2/c/f/l;->e:I

    goto/16 :goto_0

    .line 101
    :cond_7
    return-void

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
