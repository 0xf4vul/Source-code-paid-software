.class public Lcom/facebook/ads/internal/view/j;
.super Lcom/facebook/ads/internal/view/o;


# instance fields
.field final a:Ljava/lang/String;

.field public b:Lcom/facebook/ads/internal/h/f;

.field public c:Lcom/facebook/ads/internal/m/f;

.field public d:Ljava/lang/String;

.field e:Landroid/net/Uri;

.field public f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field public i:Lcom/facebook/ads/k;

.field private final k:Lcom/facebook/ads/internal/view/d/a/k;

.field private final l:Lcom/facebook/ads/internal/view/d/a/i;

.field private final m:Lcom/facebook/ads/internal/view/d/a/c;

.field private final n:Lcom/facebook/ads/internal/b/g;

.field private o:Lcom/facebook/ads/internal/view/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->a:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/view/j$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/j$1;-><init>(Lcom/facebook/ads/internal/view/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->k:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v0, Lcom/facebook/ads/internal/view/j$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/j$2;-><init>(Lcom/facebook/ads/internal/view/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/internal/view/j$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/j$3;-><init>(Lcom/facebook/ads/internal/view/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Lcom/facebook/ads/internal/view/d/a/c;

    new-instance v0, Lcom/facebook/ads/internal/b/g;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/b/g;-><init>(Lcom/facebook/ads/internal/view/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/b/g;

    .line 1000
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->k:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->o:Lcom/facebook/ads/internal/view/i;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/facebook/ads/internal/view/i;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->o:Lcom/facebook/ads/internal/view/i;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 0
    invoke-super {p0}, Lcom/facebook/ads/internal/view/o;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/b/g;

    .line 2000
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.facebook.ads.interstitial.displayed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/b/g;->b:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/j;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoInterstitalEvent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/b/g;->b:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/j;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "performCtaClick:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/b/g;->b:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/j;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/facebook/ads/internal/b/g;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/b/e;->a(Landroid/content/Context;)Landroid/support/v4/b/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/b/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/b/g;

    .line 3000
    :try_start_0
    iget-object v1, v0, Lcom/facebook/ads/internal/b/g;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/b/e;->a(Landroid/content/Context;)Landroid/support/v4/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/b/e;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    invoke-super {p0}, Lcom/facebook/ads/internal/view/o;->onDetachedFromWindow()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAdEventManager(Lcom/facebook/ads/internal/h/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/h/f;

    return-void
.end method

.method public setEnableBackgroundVideo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->j:Lcom/facebook/ads/internal/view/d/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/c;->setBackgroundPlaybackEnabled(Z)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->o:Lcom/facebook/ads/internal/view/i;

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->i:Lcom/facebook/ads/k;

    return-void
.end method

.method public setVideoCTA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/m/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must setVideoReportUri first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->g:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/m/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must setVideoReportUri first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->e:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
