.class final Lcom/google/android/exoplayer2/c/a/a;
.super Lcom/google/android/exoplayer2/c/a/d;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/c/a/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/c/o;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/a/d;-><init>(Lcom/google/android/exoplayer2/c/o;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/j/k;J)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v1

    .line 82
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/c/a/a;->d:Z

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v1

    new-array v7, v1, [B

    .line 84
    array-length v1, v7

    invoke-virtual {p1, v7, v6, v1}, Lcom/google/android/exoplayer2/j/k;->a([BII)V

    .line 85
    invoke-static {v7}, Lcom/google/android/exoplayer2/j/b;->a([B)Landroid/util/Pair;

    move-result-object v5

    .line 87
    const-string/jumbo v1, "audio/mp4a-latm"

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 89
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move v3, v2

    move-object v7, v0

    move-object v8, v0

    .line 87
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 91
    iput-boolean v9, p0, Lcom/google/android/exoplayer2/c/a/a;->d:Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-ne v1, v9, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->b()I

    move-result v5

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lcom/google/android/exoplayer2/c/o;

    invoke-interface {v1, p1, v5}, Lcom/google/android/exoplayer2/c/o;->a(Lcom/google/android/exoplayer2/j/k;I)V

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a/a;->b:Lcom/google/android/exoplayer2/c/o;

    move-wide v2, p2

    move v4, v9

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/exoplayer2/j/k;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/c/a/d$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Z

    if-nez v0, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->d()I

    move-result v0

    .line 61
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 62
    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    .line 63
    if-ltz v0, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/c/a/a;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 64
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/c/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid sample rate index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/c/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Audio format not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/a/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/c/a/a;->c:Z

    .line 75
    :goto_0
    return v3

    .line 73
    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    goto :goto_0
.end method
