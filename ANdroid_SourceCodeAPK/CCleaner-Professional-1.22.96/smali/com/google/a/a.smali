.class public abstract Lcom/google/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public final s()[B
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/a;->c()I

    move-result v0

    new-array v0, v0, [B

    .line 1116
    array-length v1, v0

    .line 1129
    new-instance v2, Lcom/google/a/e;

    invoke-direct {v2, v0, v1}, Lcom/google/a/e;-><init>([BI)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/google/a/a;->a(Lcom/google/a/e;)V

    .line 2852
    iget-object v1, v2, Lcom/google/a/e;->c:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 2853
    iget v1, v2, Lcom/google/a/e;->a:I

    iget v2, v2, Lcom/google/a/e;->b:I

    sub-int/2addr v1, v2

    .line 1869
    if-eqz v1, :cond_1

    .line 1870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2855
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :cond_1
    return-object v0
.end method
