.class final Lcom/google/android/exoplayer2/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/exoplayer2/c/e/e;

.field final b:Lcom/google/android/exoplayer2/j/k;

.field c:I

.field d:Z

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/c/e/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/e/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/j/k;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    .line 130
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget v2, v2, Lcom/google/android/exoplayer2/c/e/e;->g:I

    if-ge v1, v2, :cond_1

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/e;->j:[I

    iget v2, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    .line 132
    add-int/2addr v0, v1

    .line 133
    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 138
    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/c/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 62
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/d;->d:Z

    if-eqz v0, :cond_0

    .line 63
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/c/e/d;->d:Z

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->a()V

    .line 67
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/d;->d:Z

    if-nez v0, :cond_7

    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    if-gez v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/c/e/e;->a(Lcom/google/android/exoplayer2/c/g;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 60
    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/e;->h:I

    .line 75
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget v3, v3, Lcom/google/android/exoplayer2/c/e/e;->b:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_8

    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 1109
    iget v3, v3, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 75
    if-nez v3, :cond_8

    .line 78
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/c/e/d;->a(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 79
    iget v3, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    add-int/lit8 v3, v3, 0x0

    .line 81
    :goto_3
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/c/g;->b(I)V

    .line 82
    iput v3, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    .line 85
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/e/d;->a(I)I

    move-result v0

    .line 86
    iget v3, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    iget v4, p0, Lcom/google/android/exoplayer2/c/e/d;->e:I

    add-int/2addr v3, v4

    .line 87
    if-lez v0, :cond_4

    .line 88
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    iget-object v4, v4, Lcom/google/android/exoplayer2/j/k;->a:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 2109
    iget v5, v5, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 88
    invoke-interface {p1, v4, v5, v0}, Lcom/google/android/exoplayer2/c/g;->b([BII)V

    .line 89
    iget-object v4, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    iget-object v5, p0, Lcom/google/android/exoplayer2/c/e/d;->b:Lcom/google/android/exoplayer2/j/k;

    .line 3109
    iget v5, v5, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 89
    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/j/k;->b(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/c/e/e;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c/e/d;->d:Z

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/d;->a:Lcom/google/android/exoplayer2/c/e/e;

    iget v0, v0, Lcom/google/android/exoplayer2/c/e/e;->g:I

    if-ne v3, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/google/android/exoplayer2/c/e/d;->c:I

    goto :goto_1

    :cond_5
    move v0, v2

    .line 90
    goto :goto_4

    :cond_6
    move v0, v3

    .line 93
    goto :goto_5

    :cond_7
    move v2, v1

    .line 96
    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3
.end method
