.class final Lcom/google/android/exoplayer2/c/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[I

.field public final d:I

.field public final e:[J

.field public final f:[I


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 55
    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 56
    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/j/a;->a(Z)V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d/k;->b:[J

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/d/k;->c:[I

    .line 60
    iput p3, p0, Lcom/google/android/exoplayer2/c/d/k;->d:I

    .line 61
    iput-object p4, p0, Lcom/google/android/exoplayer2/c/d/k;->e:[J

    .line 62
    iput-object p5, p0, Lcom/google/android/exoplayer2/c/d/k;->f:[I

    .line 63
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/k;->a:I

    .line 64
    return-void

    :cond_0
    move v0, v2

    .line 54
    goto :goto_0

    :cond_1
    move v0, v2

    .line 55
    goto :goto_1

    :cond_2
    move v1, v2

    .line 56
    goto :goto_2
.end method
