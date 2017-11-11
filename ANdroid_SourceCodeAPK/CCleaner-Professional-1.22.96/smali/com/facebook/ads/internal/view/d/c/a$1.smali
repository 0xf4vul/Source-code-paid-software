.class final Lcom/facebook/ads/internal/view/d/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/c/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    .line 1339
    iget v0, v0, Lcom/google/android/exoplayer2/n;->p:I

    .line 0
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->k()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/c/a;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/c/a;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d/c/a;->a(Z)V

    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->b(I)V

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a$1;->a:Lcom/facebook/ads/internal/view/d/c/a;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d/c/a;->a(I)V

    return-void
.end method
