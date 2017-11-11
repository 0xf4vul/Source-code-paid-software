.class abstract Lcom/google/android/exoplayer2/c/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/c/e/h$b;,
        Lcom/google/android/exoplayer2/c/e/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/c/e/d;

.field b:J

.field c:I

.field private d:Lcom/google/android/exoplayer2/c/o;

.field private e:Lcom/google/android/exoplayer2/c/h;

.field private f:Lcom/google/android/exoplayer2/c/e/f;

.field private g:J

.field private h:J

.field private i:I

.field private j:Lcom/google/android/exoplayer2/c/e/h$a;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/c/g;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 122
    move v1, v2

    .line 123
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/c/e/d;->a(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    .line 126
    const/4 v0, -0x1

    .line 152
    :goto_1
    return v0

    .line 128
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/e/h;->k:J

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    .line 1118
    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 130
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/google/android/exoplayer2/c/e/h;->a(Lcom/google/android/exoplayer2/j/k;JLcom/google/android/exoplayer2/c/e/h$a;)Z

    move-result v1

    .line 131
    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/h$a;->a:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->q:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/e/h;->i:I

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/e/h;->m:Z

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->d:Lcom/google/android/exoplayer2/c/o;

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/c/e/h$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c/e/h;->m:Z

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/h$a;->b:Lcom/google/android/exoplayer2/c/e/f;

    if-eqz v1, :cond_4

    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/h$a;->b:Lcom/google/android/exoplayer2/c/e/f;

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    .line 150
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    .line 151
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 145
    new-instance v1, Lcom/google/android/exoplayer2/c/e/h$b;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/c/e/h$b;-><init>(B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    goto :goto_2

    .line 147
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/c/e/a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/c/g;->d()J

    move-result-wide v4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/c/e/a;-><init>(JJLcom/google/android/exoplayer2/c/e/h;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    goto :goto_2
.end method

.method final a(Lcom/google/android/exoplayer2/c/g;Lcom/google/android/exoplayer2/c/l;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c/e/f;->a(Lcom/google/android/exoplayer2/c/g;)J

    move-result-wide v0

    .line 158
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 159
    iput-wide v0, p2, Lcom/google/android/exoplayer2/c/l;->a:J

    .line 160
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    .line 161
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 162
    neg-long v0, v0

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/c/e/h;->d(J)V

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/h;->l:Z

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/e/f;->b()Lcom/google/android/exoplayer2/c/m;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->e:Lcom/google/android/exoplayer2/c/h;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/c/h;->a(Lcom/google/android/exoplayer2/c/m;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/h;->l:Z

    .line 170
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c/e/d;->a(Lcom/google/android/exoplayer2/c/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->k:J

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    .line 2118
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 173
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c/e/h;->a(Lcom/google/android/exoplayer2/j/k;)J

    move-result-wide v8

    .line 174
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-ltz v1, :cond_4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    add-long/2addr v2, v8

    iget-wide v4, p0, Lcom/google/android/exoplayer2/c/e/h;->g:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 176
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/c/e/h;->b(J)J

    move-result-wide v2

    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->d:Lcom/google/android/exoplayer2/c/o;

    .line 3109
    iget v4, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 177
    invoke-interface {v1, v0, v4}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->d:Lcom/google/android/exoplayer2/c/o;

    const/4 v4, 0x1

    .line 4109
    iget v5, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 178
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->g:J

    .line 181
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    .line 184
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/j/k;)J
.end method

.method final a(J)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    .line 1041
    iget-object v2, v1, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/c/e/e;->a()V

    .line 1042
    iget-object v2, v1, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/j/k;->a()V

    .line 1043
    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/exoplayer2/c/e/d;->c:I

    .line 1044
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/c/e/d;->d:Z

    .line 88
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 89
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/e/h;->l:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c/e/h;->a(Z)V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->f:Lcom/google/android/exoplayer2/c/e/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/c/e/f;->d_()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->g:J

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    goto :goto_0
.end method

.method final a(Lcom/google/android/exoplayer2/c/h;Lcom/google/android/exoplayer2/c/o;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e/h;->e:Lcom/google/android/exoplayer2/c/h;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/e/h;->d:Lcom/google/android/exoplayer2/c/o;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer2/c/e/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/e/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->a:Lcom/google/android/exoplayer2/c/e/d;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/c/e/h;->a(Z)V

    .line 64
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Lcom/google/android/exoplayer2/c/e/h$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/e/h$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/h;->j:Lcom/google/android/exoplayer2/c/e/h$a;

    .line 74
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/e/h;->b:J

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    .line 79
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/h;->g:J

    .line 80
    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    .line 81
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/h;->c:I

    goto :goto_0
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/j/k;JLcom/google/android/exoplayer2/c/e/h$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected final b(J)J
    .locals 5

    .prologue
    .line 196
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer2/c/e/h;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected final c(J)J
    .locals 5

    .prologue
    .line 206
    iget v0, p0, Lcom/google/android/exoplayer2/c/e/h;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected d(J)V
    .locals 1

    .prologue
    .line 235
    iput-wide p1, p0, Lcom/google/android/exoplayer2/c/e/h;->h:J

    .line 236
    return-void
.end method
