.class public final Lcom/google/android/exoplayer2/j/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/j/g;


# instance fields
.field public a:Z

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(J)J
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j/p;->a:Z

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j/p;->c:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j/p;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/j/p;->b:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/j/p;->a:Z

    .line 57
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j/p;->b:J

    .line 64
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/j/p;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/j/p;->c:J

    .line 65
    return-void
.end method

.method public final r()J
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/j/p;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/j/p;->c:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j/p;->b(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j/p;->b:J

    goto :goto_0
.end method
