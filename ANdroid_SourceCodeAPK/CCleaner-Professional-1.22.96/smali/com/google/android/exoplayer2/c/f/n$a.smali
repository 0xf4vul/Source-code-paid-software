.class final Lcom/google/android/exoplayer2/c/f/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/c/f/g;

.field final b:Lcom/google/android/exoplayer2/c/n;

.field final c:Lcom/google/android/exoplayer2/j/j;

.field d:Z

.field e:Z

.field f:Z

.field g:I

.field h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/c/f/g;Lcom/google/android/exoplayer2/c/n;)V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/f/n$a;->a:Lcom/google/android/exoplayer2/c/f/g;

    .line 259
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/f/n$a;->b:Lcom/google/android/exoplayer2/c/n;

    .line 260
    new-instance v0, Lcom/google/android/exoplayer2/j/j;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/j;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/n$a;->c:Lcom/google/android/exoplayer2/j/j;

    .line 261
    return-void
.end method
