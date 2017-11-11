.class final Lcom/google/android/exoplayer2/c/f/b;
.super Lcom/google/android/exoplayer2/c/f/g;
.source "SourceFile"


# instance fields
.field a:J

.field private final b:Lcom/google/android/exoplayer2/j/j;

.field private final c:Lcom/google/android/exoplayer2/j/k;

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/c/o;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcom/google/android/exoplayer2/Format;

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/b;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/c/f/g;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/j;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/b;->d:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    .line 80
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    .line 81
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->h:Z

    .line 82
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/f/b;->a:J

    .line 92
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/f/g$c;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/c/f/g$c;->a()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/h;->a(I)Lcom/google/android/exoplayer2/c/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->e:Lcom/google/android/exoplayer2/c/o;

    .line 87
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/j/k;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/16 v8, 0xb

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_c

    .line 97
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1157
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 1158
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->h:Z

    if-nez v0, :cond_2

    .line 1159
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->h:Z

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    .line 1162
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 1163
    const/16 v1, 0x77

    if-ne v0, v1, :cond_3

    .line 1164
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/c/f/b;->h:Z

    move v0, v4

    .line 99
    :goto_3
    if-eqz v0, :cond_0

    .line 100
    iput v4, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    aput-byte v8, v0, v6

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    .line 103
    iput v9, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    goto :goto_0

    .line 1167
    :cond_3
    if-ne v0, v8, :cond_4

    move v0, v4

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->h:Z

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v0, v6

    .line 1170
    goto :goto_3

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 2143
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    rsub-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2144
    iget v2, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 2145
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    .line 2146
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    if-ne v0, v10, :cond_7

    move v0, v4

    .line 107
    :goto_5
    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->j:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_6

    .line 2179
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->b(I)V

    .line 2180
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->c(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    move v0, v4

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->l:Z

    .line 2181
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    .line 3089
    iget v2, v1, Lcom/google/android/exoplayer2/j/j;->b:I

    mul-int/lit8 v2, v2, 0x8

    iget v1, v1, Lcom/google/android/exoplayer2/j/j;->c:I

    add-int/2addr v1, v2

    .line 2181
    add-int/lit8 v1, v1, -0x2d

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/j;->a(I)V

    .line 2182
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->l:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/j/j;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 2183
    :goto_7
    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->j:Lcom/google/android/exoplayer2/Format;

    .line 2184
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->e:Lcom/google/android/exoplayer2/c/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->j:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 2186
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/j;->a:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/a/a;->b([B)I

    move-result v0

    .line 2187
    :goto_8
    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->k:I

    .line 2188
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/b;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/j;->a:[B

    .line 2189
    invoke-static {v0}, Lcom/google/android/exoplayer2/a/a;->c([B)I

    move-result v0

    .line 2193
    :goto_9
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/f/b;->j:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->q:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/b;->i:J

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->e:Lcom/google/android/exoplayer2/c/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->c:Lcom/google/android/exoplayer2/j/k;

    invoke-interface {v0, v1, v10}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 111
    iput v9, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    goto/16 :goto_0

    :cond_7
    move v0, v6

    .line 2146
    goto :goto_5

    :cond_8
    move v0, v6

    .line 2180
    goto :goto_6

    .line 2182
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->d:Ljava/lang/String;

    .line 2183
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/j/j;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    goto :goto_7

    .line 2186
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/f/b;->b:Lcom/google/android/exoplayer2/j/j;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/j;->a:[B

    .line 2187
    invoke-static {v0}, Lcom/google/android/exoplayer2/a/a;->a([B)I

    move-result v0

    goto :goto_8

    .line 2190
    :cond_b
    invoke-static {}, Lcom/google/android/exoplayer2/a/a;->a()I

    move-result v0

    goto :goto_9

    .line 115
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/b;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->e:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 117
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/c/f/b;->g:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/f/b;->k:I

    if-ne v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/b;->e:Lcom/google/android/exoplayer2/c/o;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/b;->a:J

    iget v5, p0, Lcom/google/android/exoplayer2/c/f/b;->k:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 120
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/b;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/b;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/f/b;->a:J

    .line 121
    iput v6, p0, Lcom/google/android/exoplayer2/c/f/b;->f:I

    goto/16 :goto_0

    .line 126
    :cond_c
    return-void

    .line 97
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
    .line 131
    return-void
.end method
