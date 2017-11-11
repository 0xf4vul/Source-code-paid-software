.class public final Lcom/google/android/exoplayer2/f/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lcom/google/android/exoplayer2/f/h;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/f/h;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    .line 41
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_3
    check-cast p1, Lcom/google/android/exoplayer2/f/i;

    .line 86
    iget v2, p0, Lcom/google/android/exoplayer2/f/i;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/f/i;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    iget-object v3, p1, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/exoplayer2/f/i;->c:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/f/i;->b:[Lcom/google/android/exoplayer2/f/h;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/f/i;->c:I

    .line 74
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f/i;->c:I

    return v0
.end method
