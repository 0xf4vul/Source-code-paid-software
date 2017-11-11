.class public final Lcom/google/android/exoplayer2/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/m;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/a;->b:[I

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/a;->c:[J

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/c/a;->d:[J

    .line 62
    iput-object p4, p0, Lcom/google/android/exoplayer2/c/a;->e:[J

    .line 63
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/c/a;->a:I

    .line 64
    iget v0, p0, Lcom/google/android/exoplayer2/c/a;->a:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    iget v2, p0, Lcom/google/android/exoplayer2/c/a;->a:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/a;->f:J

    .line 65
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/a;->c:[J

    .line 1074
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/a;->e:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/google/android/exoplayer2/j/r;->a([JJZ)I

    move-result v1

    .line 91
    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public final e_()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/a;->f:J

    return-wide v0
.end method
