.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/google/android/exoplayer2/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;B)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/d;)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public final a(ZI)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->f(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 510
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 522
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->g(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 516
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->f()Lcom/google/android/exoplayer2/o;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->h(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->i(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 548
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 549
    return-void

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->j(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->k(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->l(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->m(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->n(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->o(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    goto :goto_0

    .line 545
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->p(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/e;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/e;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e;->a(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 494
    if-eqz p3, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->c(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->b(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 490
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z

    .line 502
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->d(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->a(Lcom/google/android/exoplayer2/ui/PlaybackControlView;I)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/e;->a(J)V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$a;->a:Lcom/google/android/exoplayer2/ui/PlaybackControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->e(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    .line 504
    return-void
.end method
