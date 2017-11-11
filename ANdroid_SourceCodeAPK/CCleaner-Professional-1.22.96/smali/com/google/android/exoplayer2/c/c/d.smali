.class final Lcom/google/android/exoplayer2/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/c/c$a;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method constructor <init>([J[JJ)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/c/d;->a:[J

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/c/d;->b:[J

    .line 97
    iput-wide p3, p0, Lcom/google/android/exoplayer2/c/c/d;->c:J

    .line 98
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c/d;->b:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c/d;->a:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/j/r;->a([JJZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)J
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/c/d;->a:[J

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/c/d;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/j/r;->a([JJZ)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final e_()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/c/d;->c:J

    return-wide v0
.end method
