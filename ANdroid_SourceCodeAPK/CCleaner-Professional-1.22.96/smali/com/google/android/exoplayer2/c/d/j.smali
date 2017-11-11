.class final Lcom/google/android/exoplayer2/c/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/exoplayer2/c/d/c;

.field public b:J

.field public c:J

.field public d:J

.field public e:I

.field public f:I

.field public g:[J

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:[J

.field public l:[Z

.field public m:Z

.field public n:[Z

.field public o:Lcom/google/android/exoplayer2/c/d/i;

.field public p:I

.field public q:Lcom/google/android/exoplayer2/j/k;

.field public r:Z

.field public s:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    .line 1109
    iget v0, v0, Lcom/google/android/exoplayer2/j/k;->c:I

    .line 159
    if-ge v0, p1, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/j/k;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/j/k;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/d/j;->q:Lcom/google/android/exoplayer2/j/k;

    .line 162
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/c/d/j;->p:I

    .line 163
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/d/j;->m:Z

    .line 164
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c/d/j;->r:Z

    .line 165
    return-void
.end method
