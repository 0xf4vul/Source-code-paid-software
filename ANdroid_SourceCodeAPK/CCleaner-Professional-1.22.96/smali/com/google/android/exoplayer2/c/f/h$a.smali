.class final Lcom/google/android/exoplayer2/c/f/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:Z

.field public b:I

.field public c:I

.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    .line 227
    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 3

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/f/h$a;->a:Z

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    sub-int v0, p3, p2

    .line 275
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 276
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/f/h$a;->d:[B

    iget v2, p0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/h$a;->b:I

    goto :goto_0
.end method
