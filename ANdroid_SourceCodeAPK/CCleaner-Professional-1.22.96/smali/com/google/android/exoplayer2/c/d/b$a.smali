.class final Lcom/google/android/exoplayer2/c/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/android/exoplayer2/j/k;

.field private final g:Lcom/google/android/exoplayer2/j/k;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/j/k;Lcom/google/android/exoplayer2/j/k;Z)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v0, 0x1

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/d/b$a;->g:Lcom/google/android/exoplayer2/j/k;

    .line 1135
    iput-object p2, p0, Lcom/google/android/exoplayer2/c/d/b$a;->f:Lcom/google/android/exoplayer2/j/k;

    .line 1136
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/c/d/b$a;->e:Z

    .line 1137
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1138
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c/d/b$a;->a:I

    .line 1139
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/j/k;->c(I)V

    .line 1140
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/c/d/b$a;->i:I

    .line 1141
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j/k;->j()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string/jumbo v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/j/a;->b(ZLjava/lang/Object;)V

    .line 1142
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    .line 1143
    return-void

    .line 1141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 1146
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d/b$a;->a:I

    if-ne v0, v1, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1157
    :goto_0
    return v0

    .line 1149
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->f:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->p()J

    move-result-wide v0

    .line 1150
    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->d:J

    .line 1151
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/c/d/b$a;->h:I

    if-ne v0, v1, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->g:Lcom/google/android/exoplayer2/j/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->c:I

    .line 1153
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->g:Lcom/google/android/exoplayer2/j/k;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/j/k;->d(I)V

    .line 1154
    iget v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->i:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->g:Lcom/google/android/exoplayer2/j/k;

    .line 1155
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->n()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->h:I

    .line 1157
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/d/b$a;->f:Lcom/google/android/exoplayer2/j/k;

    .line 1150
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/k;->h()J

    move-result-wide v0

    goto :goto_1

    .line 1155
    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method
