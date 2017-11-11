.class final Lcom/google/android/exoplayer2/c/f/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:Z

.field c:I

.field d:J

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:J

.field k:J

.field l:Z

.field private final m:Lcom/google/android/exoplayer2/c/o;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/o;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/j$a;->m:Lcom/google/android/exoplayer2/c/o;

    .line 410
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 8

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/j$a;->l:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 478
    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c/f/j$a;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/j$a;->j:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    .line 479
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/j$a;->m:Lcom/google/android/exoplayer2/c/o;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/c/f/j$a;->k:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/c/o;->a(JIII[B)V

    .line 480
    return-void

    .line 477
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
