.class final Lcom/google/android/exoplayer2/g/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:I

.field e:Z

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:F

.field l:Ljava/lang/String;

.field m:Lcom/google/android/exoplayer2/g/c/d;

.field n:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->f:I

    .line 76
    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->g:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->h:I

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->i:I

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->j:I

    .line 80
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 90
    iget v3, p0, Lcom/google/android/exoplayer2/g/c/d;->h:I

    if-ne v3, v0, :cond_0

    iget v3, p0, Lcom/google/android/exoplayer2/g/c/d;->i:I

    if-ne v3, v0, :cond_0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->h:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer2/g/c/d;->i:I

    if-ne v3, v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/exoplayer2/g/c/d;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->m:Lcom/google/android/exoplayer2/g/c/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 148
    iput p1, p0, Lcom/google/android/exoplayer2/g/c/d;->b:I

    .line 149
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/g/c/d;->c:Z

    .line 150
    return-object p0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer2/g/c/d;)Lcom/google/android/exoplayer2/g/c/d;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 192
    .line 1196
    if-eqz p1, :cond_8

    .line 1197
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g/c/d;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/g/c/d;->c:Z

    if-eqz v0, :cond_0

    .line 1198
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/g/c/d;->a(I)Lcom/google/android/exoplayer2/g/c/d;

    .line 1200
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->h:I

    if-ne v0, v1, :cond_1

    .line 1201
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->h:I

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->h:I

    .line 1203
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->i:I

    if-ne v0, v1, :cond_2

    .line 1204
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->i:I

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->i:I

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1207
    iget-object v0, p1, Lcom/google/android/exoplayer2/g/c/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->a:Ljava/lang/String;

    .line 1209
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->f:I

    if-ne v0, v1, :cond_4

    .line 1210
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->f:I

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->f:I

    .line 1212
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->g:I

    if-ne v0, v1, :cond_5

    .line 1213
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->g:I

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->g:I

    .line 1215
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->n:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 1216
    iget-object v0, p1, Lcom/google/android/exoplayer2/g/c/d;->n:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->n:Landroid/text/Layout$Alignment;

    .line 1218
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/g/c/d;->j:I

    if-ne v0, v1, :cond_7

    .line 1219
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->j:I

    .line 1220
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->k:F

    iput v0, p0, Lcom/google/android/exoplayer2/g/c/d;->k:F

    .line 1223
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g/c/d;->e:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/g/c/d;->e:Z

    if-eqz v0, :cond_8

    .line 1224
    iget v0, p1, Lcom/google/android/exoplayer2/g/c/d;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/g/c/d;->b(I)Lcom/google/android/exoplayer2/g/c/d;

    .line 192
    :cond_8
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/exoplayer2/g/c/d;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->m:Lcom/google/android/exoplayer2/g/c/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 103
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/g/c/d;->f:I

    .line 104
    return-object p0

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method public final b(I)Lcom/google/android/exoplayer2/g/c/d;
    .locals 1

    .prologue
    .line 165
    iput p1, p0, Lcom/google/android/exoplayer2/g/c/d;->d:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g/c/d;->e:Z

    .line 167
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/exoplayer2/g/c/d;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/g/c/d;->m:Lcom/google/android/exoplayer2/g/c/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 113
    if-eqz p1, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/g/c/d;->g:I

    .line 114
    return-object p0

    :cond_0
    move v0, v2

    .line 112
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1
.end method
