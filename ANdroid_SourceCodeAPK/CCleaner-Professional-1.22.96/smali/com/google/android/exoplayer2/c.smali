.class public final Lcom/google/android/exoplayer2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i/i;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/i/i;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/i/i;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/i/i;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i/i;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/i/i;B)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i/i;B)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/i/i;

    .line 101
    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->b:J

    .line 102
    const-wide/32 v0, 0x1c9c380

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->c:J

    .line 103
    const-wide/32 v0, 0x2625a0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->d:J

    .line 104
    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/google/android/exoplayer2/c;->e:J

    .line 105
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/google/android/exoplayer2/c;->f:I

    .line 161
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/c;->g:Z

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/i/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i/i;->d()V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 110
    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/l;",
            "Lcom/google/android/exoplayer2/h/g",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/google/android/exoplayer2/c;->f:I

    .line 116
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1056
    iget-object v1, p2, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v1, v1, v0

    .line 117
    if-eqz v1, :cond_0

    .line 118
    iget v1, p0, Lcom/google/android/exoplayer2/c;->f:I

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/exoplayer2/l;->a()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/j/r;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/c;->f:I

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/i/i;

    iget v1, p0, Lcom/google/android/exoplayer2/c;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i/i;->a(I)V

    .line 122
    return-void
.end method

.method public final a(J)Z
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 147
    .line 1155
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c;->c:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    move v0, v1

    .line 148
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/i/i;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/i/i;->e()I

    move-result v4

    iget v5, p0, Lcom/google/android/exoplayer2/c;->f:I

    if-lt v4, v5, :cond_4

    move v4, v3

    .line 149
    :goto_1
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->g:Z

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/c;->g:Z

    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c;->g:Z

    return v0

    .line 1155
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/c;->b:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v4, v1

    .line 148
    goto :goto_1
.end method

.method public final a(JZ)Z
    .locals 5

    .prologue
    .line 141
    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->e:J

    .line 142
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 141
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/c;->d:J

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 127
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c;->a(Z)V

    .line 132
    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/i/b;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/c;->a:Lcom/google/android/exoplayer2/i/i;

    return-object v0
.end method
