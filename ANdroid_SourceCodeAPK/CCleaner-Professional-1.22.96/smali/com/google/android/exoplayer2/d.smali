.class public final Lcom/google/android/exoplayer2/d;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    iput p1, p0, Lcom/google/android/exoplayer2/d;->a:I

    .line 102
    iput p3, p0, Lcom/google/android/exoplayer2/d;->b:I

    .line 103
    return-void
.end method

.method public static a(Ljava/io/IOException;)Lcom/google/android/exoplayer2/d;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/google/android/exoplayer2/d;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/d;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/exoplayer2/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/d;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method static a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/d;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/exoplayer2/d;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/d;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method
