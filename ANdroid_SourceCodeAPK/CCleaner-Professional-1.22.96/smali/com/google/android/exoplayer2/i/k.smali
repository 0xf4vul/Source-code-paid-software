.class public final Lcom/google/android/exoplayer2/i/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/i/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i/f;

.field private final b:Lcom/google/android/exoplayer2/i/f;

.field private final c:Lcom/google/android/exoplayer2/i/f;

.field private final d:Lcom/google/android/exoplayer2/i/f;

.field private e:Lcom/google/android/exoplayer2/i/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;Lcom/google/android/exoplayer2/i/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/i/r",
            "<-",
            "Lcom/google/android/exoplayer2/i/f;",
            ">;",
            "Lcom/google/android/exoplayer2/i/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->a:Lcom/google/android/exoplayer2/i/f;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/i/o;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/i/o;-><init>(Lcom/google/android/exoplayer2/i/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->b:Lcom/google/android/exoplayer2/i/f;

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/i/c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/i/c;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->c:Lcom/google/android/exoplayer2/i/f;

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/i/e;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/i/e;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->d:Lcom/google/android/exoplayer2/i/f;

    .line 102
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/i/f;->a([BII)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/i/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/j/a;->b(Z)V

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/j/r;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/i/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->c:Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/i/f;->a(Lcom/google/android/exoplayer2/i/h;)J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->b:Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    goto :goto_1

    .line 115
    :cond_2
    const-string/jumbo v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->c:Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    goto :goto_1

    .line 117
    :cond_3
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->d:Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->a:Lcom/google/android/exoplayer2/i/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    goto :goto_1
.end method

.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iput-object v1, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    .line 145
    :cond_0
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/i/k;->e:Lcom/google/android/exoplayer2/i/f;

    throw v0
.end method
