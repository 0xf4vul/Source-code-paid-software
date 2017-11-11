.class public abstract Lcom/google/android/exoplayer2/g/c;
.super Lcom/google/android/exoplayer2/b/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/g/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/b/g",
        "<",
        "Lcom/google/android/exoplayer2/g/i;",
        "Lcom/google/android/exoplayer2/g/j;",
        "Lcom/google/android/exoplayer2/g/g;",
        ">;",
        "Lcom/google/android/exoplayer2/g/f;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 34
    new-array v0, v2, [Lcom/google/android/exoplayer2/g/i;

    new-array v2, v2, [Lcom/google/android/exoplayer2/g/j;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/b/g;-><init>([Lcom/google/android/exoplayer2/b/e;[Lcom/google/android/exoplayer2/b/f;)V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/g/c;->c:Ljava/lang/String;

    .line 1081
    iget v0, p0, Lcom/google/android/exoplayer2/b/g;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/b/g;->a:[Lcom/google/android/exoplayer2/b/e;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 1082
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/g;->a:[Lcom/google/android/exoplayer2/b/e;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1083
    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/b/e;->c(I)V

    .line 1082
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 1081
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/g/i;Lcom/google/android/exoplayer2/g/j;)Lcom/google/android/exoplayer2/g/g;
    .locals 6

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/g/i;->c:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/g/c;->a([BI)Lcom/google/android/exoplayer2/g/e;

    move-result-object v3

    .line 70
    iget-wide v1, p1, Lcom/google/android/exoplayer2/g/i;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/g/i;->e:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/g/j;->a(JLcom/google/android/exoplayer2/g/e;J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/g/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a([BI)Lcom/google/android/exoplayer2/g/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/g/g;
        }
    .end annotation
.end method

.method protected final bridge synthetic a(Lcom/google/android/exoplayer2/b/e;Lcom/google/android/exoplayer2/b/f;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/g/i;

    check-cast p2, Lcom/google/android/exoplayer2/g/j;

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/g/c;->a(Lcom/google/android/exoplayer2/g/i;Lcom/google/android/exoplayer2/g/j;)Lcom/google/android/exoplayer2/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method protected final bridge synthetic a(Lcom/google/android/exoplayer2/b/f;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/g/j;

    .line 3061
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/b/g;->a(Lcom/google/android/exoplayer2/b/f;)V

    .line 24
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/g/j;)V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/b/g;->a(Lcom/google/android/exoplayer2/b/f;)V

    .line 62
    return-void
.end method

.method protected final synthetic f()Lcom/google/android/exoplayer2/b/e;
    .locals 1

    .prologue
    .line 3051
    new-instance v0, Lcom/google/android/exoplayer2/g/i;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/g/i;-><init>()V

    .line 24
    return-object v0
.end method

.method protected final synthetic g()Lcom/google/android/exoplayer2/b/f;
    .locals 1

    .prologue
    .line 24
    .line 2056
    new-instance v0, Lcom/google/android/exoplayer2/g/d;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/g/d;-><init>(Lcom/google/android/exoplayer2/g/c;)V

    .line 24
    return-object v0
.end method
