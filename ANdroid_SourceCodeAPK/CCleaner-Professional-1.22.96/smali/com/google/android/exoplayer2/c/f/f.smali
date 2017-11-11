.class final Lcom/google/android/exoplayer2/c/f/f;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/j/k;

.field private final b:Ljava/lang/String;

.field private c:Lcom/google/android/exoplayer2/c/o;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Lcom/google/android/exoplayer2/Format;

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 68
    iput v3, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/f;->b:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    .line 77
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/f;->j:J

    .line 87
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->c:Lcom/google/android/exoplayer2/c/o;

    .line 82
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 92
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1150
    :cond_1
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 1151
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    .line 1152
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    .line 1153
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    const v1, 0x7ffe8001

    if-ne v0, v1, :cond_1

    .line 1154
    iput v6, p0, Lcom/google/android/exoplayer2/c/f/f;->f:I

    move v0, v4

    .line 94
    :goto_1
    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    .line 96
    iput v4, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    goto :goto_0

    :cond_2
    move v0, v6

    .line 1158
    goto :goto_1

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 2136
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    rsub-int/lit8 v2, v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2137
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 2138
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    .line 2139
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    if-ne v0, v8, :cond_4

    move v0, v4

    .line 100
    :goto_2
    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 2166
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->h:Lcom/google/android/exoplayer2/Format;

    if-nez v1, :cond_3

    .line 2167
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a/e;->a([BLjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->h:Lcom/google/android/exoplayer2/Format;

    .line 2168
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->c:Lcom/google/android/exoplayer2/c/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/f;->h:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2170
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/a/e;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c/f/f;->i:I

    .line 2173
    const-wide/32 v2, 0xf4240

    .line 2174
    invoke-static {v0}, Lcom/google/android/exoplayer2/a/e;->a([B)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/f;->h:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->q:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/f;->g:J

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/f;->c:Lcom/google/android/exoplayer2/c/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v0, v1, v8}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 104
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    goto/16 :goto_0

    :cond_4
    move v0, v6

    .line 2139
    goto :goto_2

    .line 108
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/f;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->c:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 110
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/f;->e:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/f;->i:I

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/f;->c:Lcom/google/android/exoplayer2/c/o;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/f;->j:J

    iget v5, p0, Lcom/google/android/exoplayer2/c/f/f;->i:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 113
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/f;->j:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/f;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/f;->j:J

    .line 114
    iput v6, p0, Lcom/google/android/exoplayer2/c/f/f;->d:I

    goto/16 :goto_0

    .line 119
    :cond_5
    return-void

    .line 92
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
    .line 124
    return-void
.end method
