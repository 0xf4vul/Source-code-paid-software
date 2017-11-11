.class public final Lcom/facebook/ads/internal/view/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c;


# instance fields
.field final a:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final b:Lcom/facebook/ads/internal/view/o;

.field final c:Lcom/facebook/ads/internal/view/c$a;

.field private final d:Lcom/facebook/ads/internal/view/d/a/k;

.field private final e:Lcom/facebook/ads/internal/view/d/a/i;

.field private final f:Lcom/facebook/ads/internal/view/d/a/c;

.field private final g:Lcom/facebook/ads/internal/view/d/a/e;

.field private h:Lcom/facebook/ads/internal/m/f;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/c$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/m$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$1;-><init>(Lcom/facebook/ads/internal/view/m;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->d:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v0, Lcom/facebook/ads/internal/view/m$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$2;-><init>(Lcom/facebook/ads/internal/view/m;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->e:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v0, Lcom/facebook/ads/internal/view/m$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$3;-><init>(Lcom/facebook/ads/internal/view/m;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/d/a/c;

    new-instance v0, Lcom/facebook/ads/internal/view/m$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$4;-><init>(Lcom/facebook/ads/internal/view/m;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/view/d/a/e;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m;->a:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/internal/view/o;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    new-instance v1, Lcom/facebook/ads/internal/view/d/b/b;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/d/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->d:Lcom/facebook/ads/internal/view/d/a/k;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->e:Lcom/facebook/ads/internal/view/d/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/d/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/h/r;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/view/d/a/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/r;->a(Lcom/facebook/ads/internal/h/s;)Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setIsFullScreen(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setVolume(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/ads/internal/j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/facebook/ads/internal/view/m$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/m$5;-><init>(Lcom/facebook/ads/internal/view/m;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x2

    const-string/jumbo v0, "useNativeCtaButton"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/view/b/b;

    invoke-direct {v1, p3, v0}, Lcom/facebook/ads/internal/view/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/view/m$6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/m$6;-><init>(Lcom/facebook/ads/internal/view/m;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/b/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    :cond_0
    const-string/jumbo v0, "videoSeekTime"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/m;->i:I

    new-instance v0, Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const-string/jumbo v1, "clientToken"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "videoLogger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/m/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/f;Lcom/facebook/ads/internal/view/o;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->h:Lcom/facebook/ads/internal/m/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const-string/jumbo v1, "videoMPD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const-string/jumbo v1, "videoURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/internal/view/m;->i:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    iget v1, p0, Lcom/facebook/ads/internal/view/m;->i:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->c(I)V

    :cond_1
    const-string/jumbo v0, "autoplay"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->b(I)V

    :cond_2
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/view/c$a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    const-string/jumbo v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/p;

    iget v3, p0, Lcom/facebook/ads/internal/view/m;->i:I

    iget-object v4, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/view/d/a/p;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/h/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->h:Lcom/facebook/ads/internal/m/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/m/f;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->f()V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    const-string/jumbo v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/f;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/h/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Z)V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/c$a;

    const-string/jumbo v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/view/d/a/g;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/d/a/g;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/c$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/h/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/view/o;

    sget v1, Lcom/facebook/ads/q;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->b(I)V

    return-void
.end method
