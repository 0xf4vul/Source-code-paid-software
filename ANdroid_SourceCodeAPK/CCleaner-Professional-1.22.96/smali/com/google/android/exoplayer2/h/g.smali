.class public final Lcom/google/android/exoplayer2/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:[Lcom/google/android/exoplayer2/h/f;

.field private d:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;[Lcom/google/android/exoplayer2/h/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lcom/google/android/exoplayer2/h/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/h/g;->a:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    .line 46
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/h/g;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/android/exoplayer2/h/f;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    invoke-virtual {v0}, [Lcom/google/android/exoplayer2/h/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/h/f;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 78
    if-ne p0, p1, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer2/h/g;

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    iget-object v1, p1, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/exoplayer2/h/g;->d:I

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer2/h/g;->d:I

    .line 73
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/h/g;->d:I

    return v0
.end method
