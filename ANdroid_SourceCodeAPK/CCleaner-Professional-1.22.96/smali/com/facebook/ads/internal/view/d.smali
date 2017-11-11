.class public Lcom/facebook/ads/internal/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/AudienceNetworkActivity;

.field private final c:Lcom/facebook/ads/internal/view/a/a;

.field private final d:Lcom/facebook/ads/internal/view/a/d;

.field private final e:Lcom/facebook/ads/internal/view/a/b;

.field private final f:Lcom/facebook/ads/AudienceNetworkActivity$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:J

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/c$a;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d$1;-><init>(Lcom/facebook/ads/internal/view/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->f:Lcom/facebook/ads/AudienceNetworkActivity$a;

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/d;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d;->k:J

    iput-boolean v2, p0, Lcom/facebook/ads/internal/view/d;->l:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Lcom/facebook/ads/internal/view/a/a;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/a;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    new-instance v2, Lcom/facebook/ads/internal/view/d$2;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/internal/view/d$2;-><init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/a;->setListener(Lcom/facebook/ads/internal/view/a/a$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-interface {p2, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/d;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/a/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/a;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    new-instance v2, Lcom/facebook/ads/internal/view/d$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/d$3;-><init>(Lcom/facebook/ads/internal/view/d;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/a/d;->setListener(Lcom/facebook/ads/internal/view/a/d$a;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-interface {p2, v1}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    new-instance v1, Lcom/facebook/ads/internal/view/a/b;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p1, v2, v3}, Lcom/facebook/ads/internal/view/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d;->e:Lcom/facebook/ads/internal/view/a/b;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/a;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Lcom/facebook/ads/internal/view/a/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Lcom/facebook/ads/internal/view/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/a/b;->setProgress(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Lcom/facebook/ads/internal/view/a/b;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->f:Lcom/facebook/ads/AudienceNetworkActivity$a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Lcom/facebook/ads/AudienceNetworkActivity$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/a/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/a/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Lcom/facebook/ads/internal/view/a/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d;->k:J

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v0, "browserURL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->g:Ljava/lang/String;

    const-string/jumbo v0, "clientToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->h:Ljava/lang/String;

    const-string/jumbo v0, "handlerTime"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d;->i:J

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->g:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/a/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/a/a;->setUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/a/d;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "browserURL"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->g:Ljava/lang/String;

    const-string/jumbo v0, "clientToken"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->h:Ljava/lang/String;

    const-string/jumbo v0, "handlerTime"

    invoke-virtual {p2, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d;->i:J

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "about:blank"

    goto :goto_1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "browserURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/view/c$a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->f:Lcom/facebook/ads/AudienceNetworkActivity$a;

    .line 10000
    iget-object v0, v0, Lcom/facebook/ads/AudienceNetworkActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/v;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->destroy()V

    return-void
.end method

.method public final i()V
    .locals 19

    .prologue
    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->onPause()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/ads/internal/view/d;->l:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/ads/internal/view/d;->l:Z

    new-instance v16, Lcom/facebook/ads/internal/m/z$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->getFirstUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/m/z$a;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/ads/internal/view/d;->i:J

    .line 1000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->b:J

    .line 0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/ads/internal/view/d;->k:J

    .line 2000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->c:J

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->getResponseEndMs()J

    move-result-wide v2

    .line 3000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->d:J

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->getDomContentLoadedMs()J

    move-result-wide v2

    .line 4000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->e:J

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->getScrollReadyMs()J

    move-result-wide v2

    .line 5000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->f:J

    .line 0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/d;->getLoadFinishMs()J

    move-result-wide v2

    .line 6000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->g:J

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7000
    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/facebook/ads/internal/m/z$a;->h:J

    .line 8000
    new-instance v2, Lcom/facebook/ads/internal/m/z;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/facebook/ads/internal/m/z$a;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/facebook/ads/internal/m/z$a;->b:J

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/facebook/ads/internal/m/z$a;->c:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/facebook/ads/internal/m/z$a;->d:J

    move-object/from16 v0, v16

    iget-wide v10, v0, Lcom/facebook/ads/internal/m/z$a;->e:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/facebook/ads/internal/m/z$a;->f:J

    move-object/from16 v0, v16

    iget-wide v14, v0, Lcom/facebook/ads/internal/m/z$a;->g:J

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/facebook/ads/internal/m/z$a;->h:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/facebook/ads/internal/m/z;-><init>(Ljava/lang/String;JJJJJJJB)V

    .line 0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v3}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/ads/internal/view/d;->h:Ljava/lang/String;

    .line 9000
    new-instance v4, Lcom/facebook/ads/internal/h/a;

    sget-wide v6, Lcom/facebook/ads/internal/h/g;->a:D

    sget-object v8, Lcom/facebook/ads/internal/h/g;->b:Ljava/lang/String;

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/internal/h/a;-><init>(Ljava/lang/String;DLjava/lang/String;Lcom/facebook/ads/internal/m/z;)V

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/g;->a(Lcom/facebook/ads/internal/h/d;)V

    .line 0
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Lcom/facebook/ads/internal/view/a/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/d;->onResume()V

    return-void
.end method
