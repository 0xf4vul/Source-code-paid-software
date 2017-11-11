.class final Lcom/google/android/exoplayer2/c/e/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/e/f;
.implements Lcom/google/android/exoplayer2/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:[J

.field b:[J

.field c:J

.field final synthetic d:Lcom/google/android/exoplayer2/c/e/b;

.field private volatile e:J

.field private volatile f:J

.field private g:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c/e/b;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 125
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e/b$a;->d:Lcom/google/android/exoplayer2/c/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->c:J

    .line 135
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c/e/b;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/e/b$a;-><init>(Lcom/google/android/exoplayer2/c/e/b;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .locals 5

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->d:Lcom/google/android/exoplayer2/c/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/c/e/b;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->e:J

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->a:[J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/b$a;->e:J

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/j/r;->a([JJZ)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/b$a;->a:[J

    aget-wide v2, v1, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/c/e/b$a;->f:J

    .line 195
    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/e/b$a;->c:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/b$a;->b:[J

    aget-wide v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/exoplayer2/c/g;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    neg-long v0, v0

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    .line 169
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    .line 171
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/android/exoplayer2/c/m;
    .locals 0

    .prologue
    .line 182
    return-object p0
.end method

.method public final declared-synchronized d_()J
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->g:J

    .line 177
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e_()J
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/b$a;->d:Lcom/google/android/exoplayer2/c/e/b;

    .line 1033
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/e/b;->a:Lcom/google/android/exoplayer2/j/e;

    .line 1075
    iget-wide v2, v0, Lcom/google/android/exoplayer2/j/e;->h:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget v0, v0, Lcom/google/android/exoplayer2/j/e;->e:I

    int-to-long v0, v0

    div-long v0, v2, v0

    .line 200
    return-wide v0
.end method
