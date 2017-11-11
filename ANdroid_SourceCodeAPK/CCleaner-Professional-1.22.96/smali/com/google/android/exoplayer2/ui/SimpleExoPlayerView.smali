.class public final Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

.field private final f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

.field private g:Lcom/google/android/exoplayer2/n;

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/16 v1, 0x3a98

    const/16 v9, 0x13

    const/4 v8, -0x1

    const/16 v0, 0x1388

    const/4 v5, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    .line 72
    if-eqz p2, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView:[I

    invoke-virtual {v0, p2, v1, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 76
    :try_start_0
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_use_controller:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    .line 77
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_use_texture_view:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 79
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_resize_mode:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 81
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_rewind_increment:I

    const/16 v1, 0x1388

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 82
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_fastforward_increment:I

    const/16 v1, 0x3a98

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 84
    sget v0, Lcom/google/android/exoplayer2/k$e;->SimpleExoPlayerView_show_timeout:I

    const/16 v7, 0x1388

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 87
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move v6, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 91
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/google/android/exoplayer2/k$c;->exo_simple_player_view:I

    invoke-virtual {v0, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-direct {v0, p0, v5}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    .line 93
    sget v0, Lcom/google/android/exoplayer2/k$b;->video_frame:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 95
    sget v0, Lcom/google/android/exoplayer2/k$b;->shutter:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    .line 96
    sget v0, Lcom/google/android/exoplayer2/k$b;->subtitles:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 97
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 1186
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    if-lt v0, v9, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionStyleV19()Lcom/google/android/exoplayer2/g/a;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/g/a;)V

    .line 98
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 2128
    sget v0, Lcom/google/android/exoplayer2/j/r;->a:I

    if-lt v0, v9, :cond_1

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getUserCaptionFontScaleV19()F

    move-result v0

    .line 2129
    :goto_2
    const v7, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v7

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    .line 100
    sget v0, Lcom/google/android/exoplayer2/k$b;->control:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 104
    iput v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:I

    .line 106
    if-eqz v6, :cond_2

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 107
    :goto_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    invoke-virtual {v0, v1, v5}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    .line 113
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1186
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/g/a;->a:Lcom/google/android/exoplayer2/g/a;

    goto :goto_1

    .line 2128
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 106
    :cond_2
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_3
    move v2, v1

    move v3, v0

    move v4, v5

    move v6, v5

    move v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->c:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->a()I

    move-result v0

    .line 288
    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    .line 289
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    .line 290
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getShowTimeoutMs()I

    move-result v3

    if-gtz v3, :cond_5

    .line 291
    :goto_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setShowTimeoutMs(I)V

    .line 292
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 289
    goto :goto_1

    :cond_5
    move v2, v1

    .line 290
    goto :goto_2

    .line 291
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:I

    goto :goto_3
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getControllerShowTimeoutMs()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:I

    return v0
.end method

.method public final getPlayer()Lcom/google/android/exoplayer2/n;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    return-object v0
.end method

.method public final getUseController()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    return v0
.end method

.method public final getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    goto :goto_0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    if-nez v1, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    goto :goto_0
.end method

.method public final setControllerShowTimeoutMs(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->i:I

    .line 217
    return-void
.end method

.method public final setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$b;)V

    .line 226
    return-void
.end method

.method public final setFastForwardIncrementMs(I)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setFastForwardIncrementMs(I)V

    .line 244
    return-void
.end method

.method public final setPlayer(Lcom/google/android/exoplayer2/n;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    if-ne v0, p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    .line 2389
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/g/k$a;

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    .line 3362
    iput-object v1, v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n;->b(Lcom/google/android/exoplayer2/e$a;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;)V

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/e;)V

    .line 143
    :cond_2
    if-eqz p1, :cond_8

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    .line 4247
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->l()V

    .line 4248
    iput-object v0, p1, Lcom/google/android/exoplayer2/n;->i:Landroid/view/TextureView;

    .line 4249
    if-nez v0, :cond_4

    .line 4250
    invoke-virtual {p1, v1, v5}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 149
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    .line 4362
    iput-object v0, p1, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/n$b;

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n;->a(Lcom/google/android/exoplayer2/e$a;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->f:Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView$a;

    .line 4389
    iput-object v0, p1, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/g/k$a;

    .line 152
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a(Z)V

    goto :goto_0

    .line 4252
    :cond_4
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4253
    const-string/jumbo v2, "SimpleExoPlayer"

    const-string/jumbo v3, "Replacing existing SurfaceTextureListener."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    :cond_5
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 4256
    if-nez v2, :cond_6

    :goto_2
    invoke-virtual {p1, v1, v5}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/Surface;Z)V

    .line 4257
    iget-object v1, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$a;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_1

    .line 4256
    :cond_6
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->a:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/n;->a(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    goto/16 :goto_0
.end method

.method public final setResizeMode(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->d:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 168
    return-void
.end method

.method public final setRewindIncrementMs(I)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setRewindIncrementMs(I)V

    .line 235
    return-void
.end method

.method public final setUseController(Z)V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    if-ne v0, p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->h:Z

    .line 188
    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->g:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/e;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b()V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SimpleExoPlayerView;->e:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setPlayer(Lcom/google/android/exoplayer2/e;)V

    goto :goto_0
.end method
