.class final Lcom/google/android/exoplayer2/c/a/e;
.super Lcom/google/android/exoplayer2/c/a/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/j/k;

.field private final c:Lcom/google/android/exoplayer2/j/k;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/o;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/a/d;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    sget-object v1, Lcom/google/android/exoplayer2/j/i;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/e;->a:Lcom/google/android/exoplayer2/j/k;

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/a/e;->c:Lcom/google/android/exoplayer2/j/k;

    .line 59
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/j/k;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/j;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->g()I

    move-result v1

    .line 83
    int-to-long v2, v1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    add-long/2addr v2, p2

    .line 85
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/c/a/e;->e:Z

    if-nez v1, :cond_1

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/k;-><init>([B)V

    .line 87
    iget-object v1, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v2

    invoke-virtual {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 88
    invoke-static {v0}, Lcom/google/android/exoplayer2/k/a;->a(Lcom/google/android/exoplayer2/j/k;)Lcom/google/android/exoplayer2/k/a;

    move-result-object v0

    .line 89
    iget v1, v0, Lcom/google/android/exoplayer2/k/a;->b:I

    iput v1, p0, Lcom/google/android/exoplayer2/c/a/e;->d:I

    .line 91
    const-string/jumbo v1, "video/avc"

    iget v2, v0, Lcom/google/android/exoplayer2/k/a;->c:I

    iget v3, v0, Lcom/google/android/exoplayer2/k/a;->d:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/k/a;->a:Ljava/util/List;

    iget v0, v0, Lcom/google/android/exoplayer2/k/a;->e:F

    invoke-static {v1, v2, v3, v5, v0}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;IILjava/util/List;F)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/e;->b:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 95
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/c/a/e;->e:Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-ne v0, v4, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a/e;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/j/k;->a:[B

    .line 101
    aput-byte v6, v0, v6

    .line 102
    aput-byte v6, v0, v4

    .line 103
    const/4 v1, 0x2

    aput-byte v6, v0, v1

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/c/a/e;->d:I

    rsub-int/lit8 v0, v0, 0x4

    move v5, v6

    .line 110
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    if-lez v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/e;->c:Lcom/google/android/exoplayer2/j/k;

    iget-object v1, v1, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget v7, p0, Lcom/google/android/exoplayer2/c/a/e;->d:I

    invoke-virtual {p1, v1, v0, v7}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/e;->c:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/e;->c:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v1

    .line 117
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/a/e;->a:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 118
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/a/e;->b:Lcom/google/android/exoplayer2/c/o;

    iget-object v8, p0, Lcom/google/android/exoplayer2/c/a/e;->a:Lcom/google/android/exoplayer2/j/k;

    const/4 v9, 0x4

    invoke-interface {v7, v8, v9}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 119
    add-int/lit8 v5, v5, 0x4

    .line 122
    iget-object v7, p0, Lcom/google/android/exoplayer2/c/a/e;->b:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v7, p1, v1}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 123
    add-int/2addr v5, v1

    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/e;->b:Lcom/google/android/exoplayer2/c/o;

    iget v0, p0, Lcom/google/android/exoplayer2/c/a/e;->f:I

    if-ne v0, v4, :cond_3

    :goto_2
    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method protected final a(Lcom/google/android/exoplayer2/j/k;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/c/a/d$a;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 69
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 70
    and-int/lit8 v0, v0, 0xf

    .line 72
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 73
    new-instance v1, Lcom/google/android/exoplayer2/c/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Video format not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/c/a/e;->f:I

    .line 76
    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
