.class final Lcom/google/android/exoplayer2/c/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/c/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/c/e/a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/c/e/a;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/c/e/a;B)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/c/e/a$a;-><init>(Lcom/google/android/exoplayer2/c/e/a;)V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    .line 216
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 1028
    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/e/a;->e:J

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 2028
    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/e/a;->a:J

    .line 221
    :cond_0
    :goto_0
    return-wide v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 3028
    iget-object v1, v1, Lcom/google/android/exoplayer2/c/e/a;->c:Lcom/google/android/exoplayer2/c/e/h;

    .line 220
    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplayer2/c/e/h;->c(J)J

    move-result-wide v2

    .line 4028
    iput-wide v2, v0, Lcom/google/android/exoplayer2/c/e/a;->e:J

    .line 221
    iget-object v2, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 5028
    iget-wide v0, v0, Lcom/google/android/exoplayer2/c/e/a;->a:J

    .line 221
    iget-object v3, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 6028
    iget-wide v4, v3, Lcom/google/android/exoplayer2/c/e/a;->e:J

    .line 7197
    iget-wide v6, v2, Lcom/google/android/exoplayer2/c/e/a;->b:J

    iget-wide v8, v2, Lcom/google/android/exoplayer2/c/e/a;->a:J

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    iget-wide v6, v2, Lcom/google/android/exoplayer2/c/e/a;->d:J

    div-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 7198
    iget-wide v4, v2, Lcom/google/android/exoplayer2/c/e/a;->a:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 7199
    iget-wide v0, v2, Lcom/google/android/exoplayer2/c/e/a;->a:J

    .line 7201
    :cond_2
    iget-wide v4, v2, Lcom/google/android/exoplayer2/c/e/a;->b:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 7202
    iget-wide v0, v2, Lcom/google/android/exoplayer2/c/e/a;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public final e_()J
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 8028
    iget-object v0, v0, Lcom/google/android/exoplayer2/c/e/a;->c:Lcom/google/android/exoplayer2/c/e/h;

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/c/e/a$a;->a:Lcom/google/android/exoplayer2/c/e/a;

    .line 9028
    iget-wide v2, v1, Lcom/google/android/exoplayer2/c/e/a;->d:J

    .line 226
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/c/e/h;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
