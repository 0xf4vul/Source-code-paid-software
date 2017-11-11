.class public abstract Lcom/facebook/ads/MediaViewVideoRenderer;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/facebook/ads/k;

.field protected b:I

.field public final c:Lcom/facebook/ads/internal/view/j;

.field private final e:Lcom/facebook/ads/internal/view/d/a/m;

.field private final f:Lcom/facebook/ads/internal/view/d/a/k;

.field private final g:Lcom/facebook/ads/internal/view/d/a/i;

.field private final h:Lcom/facebook/ads/internal/view/d/a/q;

.field private final i:Lcom/facebook/ads/internal/view/d/a/c;

.field private final j:Lcom/facebook/ads/internal/view/d/a/v;

.field private final k:Lcom/facebook/ads/internal/view/d/a/e;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/MediaViewVideoRenderer;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$1;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/d/a/m;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$2;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$3;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$4;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/d/a/q;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$5;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/d/a/c;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$6;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/d/a/v;

    new-instance v0, Lcom/facebook/ads/MediaViewVideoRenderer$7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaViewVideoRenderer$7;-><init>(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/d/a/e;

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    iput-boolean v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->m:Z

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/j;->setEnableBackgroundVideo(Z)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->e:Lcom/facebook/ads/internal/view/d/a/m;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->f:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->g:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->h:Lcom/facebook/ads/internal/view/d/a/q;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->i:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->j:Lcom/facebook/ads/internal/view/d/a/v;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->k:Lcom/facebook/ads/internal/view/d/a/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    .line 0
    return-void
.end method

.method public static c()V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method public static e()V
    .locals 0

    return-void
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static g()V
    .locals 0

    return-void
.end method

.method public static h()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/j;->getState$18208835()I

    move-result v2

    sget v3, Lcom/facebook/ads/internal/view/d/c/d;->g:I

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:I

    sget v3, Lcom/facebook/ads/p;->a:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->m:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/m/am;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/m/am$a;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/m/am$a;->c:Lcom/facebook/ads/internal/m/am$a;

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:I

    sget v3, Lcom/facebook/ads/p;->b:I

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final getCurrentTimeMs()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getVolume()F

    move-result v0

    return v0
.end method

.method final setAdEventManager(Lcom/facebook/ads/internal/h/f;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/j;->setAdEventManager(Lcom/facebook/ads/internal/h/f;)V

    return-void
.end method

.method setAutoplay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->l:Z

    return-void
.end method

.method setAutoplayOnMobile(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->m:Z

    return-void
.end method

.method final setListener(Lcom/facebook/ads/internal/view/i;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/j;->setListener(Lcom/facebook/ads/internal/view/i;)V

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/k;)V
    .locals 6

    .prologue
    .line 0
    iput-object p1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->a:Lcom/facebook/ads/k;

    iget-object v1, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/k;->h()Ljava/lang/String;

    move-result-object v0

    .line 2000
    iget-object v3, v1, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/m/f;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/m/f;

    .line 3000
    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->a:Lcom/facebook/ads/internal/view/d/a/v;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->e:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->b:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->d:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->c:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->f:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->g:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->h:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v5, v3, Lcom/facebook/ads/internal/m/f;->j:Lcom/facebook/ads/internal/view/d/a/m;

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v4, v3, Lcom/facebook/ads/internal/m/f;->k:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v4

    iget-object v3, v3, Lcom/facebook/ads/internal/m/f;->i:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/h/r;->b(Lcom/facebook/ads/internal/h/s;)Z

    .line 2000
    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    new-instance v3, Lcom/facebook/ads/internal/m/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/h/f;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/facebook/ads/internal/m/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/f;Lcom/facebook/ads/internal/view/o;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/facebook/ads/internal/view/j;->c:Lcom/facebook/ads/internal/m/f;

    iput-object v0, v1, Lcom/facebook/ads/internal/view/j;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/facebook/ads/internal/view/j;->d:Ljava/lang/String;

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/j;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/j;->setVideoURI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {p1}, Lcom/facebook/ads/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/j;->setVideoCTA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/j;->setNativeAd(Lcom/facebook/ads/k;)V

    invoke-virtual {p1}, Lcom/facebook/ads/k;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->b:I

    return-void
.end method

.method public final setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/MediaViewVideoRenderer;->c:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/j;->setVolume(F)V

    return-void
.end method
