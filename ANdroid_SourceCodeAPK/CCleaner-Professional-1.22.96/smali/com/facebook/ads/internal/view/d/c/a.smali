.class public Lcom/facebook/ads/internal/view/d/c/a;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/internal/view/d/c/c;
.implements Lcom/google/android/exoplayer2/e$a;
.implements Lcom/google/android/exoplayer2/n$b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/internal/view/d/c/e;

.field private f:Landroid/view/Surface;

.field private g:Lcom/google/android/exoplayer2/n;

.field private h:Landroid/widget/MediaController;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/d/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/d/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget v0, Lcom/facebook/ads/q;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget v0, Lcom/facebook/ads/q;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/n;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/c/a;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    return-object v0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->e()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    return-void
.end method

.method private setVideoState$22512397(I)V
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/e;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setup(Landroid/net/Uri;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->c:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->g:I

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Z)V

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    goto :goto_0
.end method

.method public final a(IIF)V
    .locals 1

    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/d;)V
    .locals 1

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->h:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/d;->printStackTrace()V

    const-string/jumbo v0, "[ExoPlayer] Error during playback of ExoPlayer"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/m/p;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/m/p;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/q;->a(Lcom/facebook/ads/internal/m/p;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Z)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getCurrentPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/internal/view/d/c/e;->a(II)V

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->o:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->p:J

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setRequestedVolume(F)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    iget-wide v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n;->a(J)V

    iput-wide v4, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->i()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->g:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->c:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(I)V

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_4

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Z)V

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->c()V

    :cond_5
    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n;->a(J)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->g:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    :cond_0
    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->i()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->h()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->p:J

    return-wide v0
.end method

.method public getStartReason$26676881()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    return v0
.end method

.method public getState$18208835()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    return v0
.end method

.method public getTargetState$18208835()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    return v0
.end method

.method public final h()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/c/a;->i()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/view/d/c/a;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-lez v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    div-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    goto :goto_0

    :cond_3
    if-ne v5, v3, :cond_4

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    div-int/2addr v1, v3

    :goto_1
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;)V

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(I)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;)V

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 0
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->d:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-eq v0, v1, :cond_0

    .line 3000
    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Z)V

    goto :goto_0

    .line 0
    :cond_3
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:I

    sget v1, Lcom/facebook/ads/internal/view/d/c/d;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(I)V

    goto :goto_0
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->l:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/a$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/c/a$3;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/a$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/c/a$2;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 0
    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v2, Lcom/facebook/ads/internal/view/d/c/d;->b:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:I

    sget v2, Lcom/facebook/ads/internal/view/d/c/d;->a:I

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    .line 2267
    iput p1, v3, Lcom/google/android/exoplayer2/n;->q:F

    .line 2268
    iget v1, v3, Lcom/google/android/exoplayer2/n;->d:I

    new-array v4, v1, [Lcom/google/android/exoplayer2/e$c;

    .line 2270
    iget-object v5, v3, Lcom/google/android/exoplayer2/n;->b:[Lcom/google/android/exoplayer2/l;

    array-length v6, v5

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v5, v2

    .line 2271
    invoke-interface {v7}, Lcom/google/android/exoplayer2/l;->a()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    .line 2272
    add-int/lit8 v0, v1, 0x1

    new-instance v8, Lcom/google/android/exoplayer2/e$c;

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10}, Lcom/google/android/exoplayer2/e$c;-><init>(Lcom/google/android/exoplayer2/e$b;ILjava/lang/Object;)V

    aput-object v8, v4, v1

    .line 2270
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 2275
    :cond_0
    iget-object v0, v3, Lcom/google/android/exoplayer2/n;->a:Lcom/google/android/exoplayer2/e;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/e;->a([Lcom/google/android/exoplayer2/e$c;)V

    .line 0
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/view/d/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/c/a;->i()V

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/d/c/a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1000
    new-instance v1, Lcom/google/android/exoplayer2/i/j;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i/j;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/h/a$a;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/h/a$a;-><init>(Lcom/google/android/exoplayer2/i/d;)V

    new-instance v2, Lcom/google/android/exoplayer2/h/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/h/c;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/h/f$a;)V

    new-instance v0, Lcom/google/android/exoplayer2/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1103
    new-instance v4, Lcom/google/android/exoplayer2/n;

    invoke-direct {v4, v3, v2, v0}, Lcom/google/android/exoplayer2/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;)V

    .line 1000
    iput-object v4, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    .line 1362
    iput-object p0, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 1000
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/e$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/n;->a(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->l:Landroid/view/View;

    if-nez v0, :cond_5

    move-object v0, p0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    new-instance v2, Lcom/facebook/ads/internal/view/d/c/a$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/d/c/a$1;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/i/l;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ads"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/j/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/i/l;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/i/r;)V

    new-instance v1, Lcom/google/android/exoplayer2/c/c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/c/c;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/f/b;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/f/b;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/i/f$a;Lcom/google/android/exoplayer2/c/i;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/f/d;)V

    :cond_3
    sget v0, Lcom/facebook/ads/internal/view/d/c/d;->b:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState$22512397(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/facebook/ads/internal/view/d/c/a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 0
    :cond_4
    return-void

    .line 1000
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->l:Landroid/view/View;

    goto :goto_0
.end method
