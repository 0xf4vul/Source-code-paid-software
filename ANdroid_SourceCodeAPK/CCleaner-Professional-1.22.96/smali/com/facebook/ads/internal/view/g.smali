.class public Lcom/facebook/ads/internal/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/c$a;

.field private final c:Lcom/facebook/ads/internal/view/b;

.field private final d:Lcom/facebook/ads/internal/b/w;

.field private e:Lcom/facebook/ads/internal/b/v;

.field private f:J

.field private g:J

.field private h:Lcom/facebook/ads/internal/m/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/view/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/c$a;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/g;->f:J

    new-instance v0, Lcom/facebook/ads/internal/view/b;

    new-instance v1, Lcom/facebook/ads/internal/view/g$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/g$1;-><init>(Lcom/facebook/ads/internal/view/g;Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/b$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/view/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/g$2;-><init>(Lcom/facebook/ads/internal/view/g;)V

    new-instance v1, Lcom/facebook/ads/internal/b/w;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/b;->getViewabilityChecker()Lcom/facebook/ads/internal/k/a;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/facebook/ads/internal/b/w;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/k/a;Lcom/facebook/ads/internal/b/i;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/g;->d:Lcom/facebook/ads/internal/b/w;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/c$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/g;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g;Lcom/facebook/ads/internal/m/p$a;)Lcom/facebook/ads/internal/m/p$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g;->h:Lcom/facebook/ads/internal/m/p$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/c$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/c$a;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/b/v;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/b/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->d:Lcom/facebook/ads/internal/b/w;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 11

    .prologue
    .line 0
    if-eqz p2, :cond_1

    const-string/jumbo v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1000
    const-string/jumbo v1, "markup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/m/u;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "viewability_check_initial_delay"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "viewability_check_interval"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "skip_after_seconds"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v2, "ct"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/facebook/ads/internal/b/v;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/ads/internal/m/s;->a:Lcom/facebook/ads/internal/m/s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/internal/b/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/m/s;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V

    .line 0
    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-static {}, Lcom/facebook/ads/internal/m/v;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 2000
    iget-object v2, v2, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    .line 0
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 3000
    iget v1, v1, Lcom/facebook/ads/internal/b/v;->e:I

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 4000
    iget v2, v2, Lcom/facebook/ads/internal/b/v;->f:I

    .line 0
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/b;->a(II)V

    :cond_0
    :goto_0
    return-void

    .line 5000
    :cond_1
    const-string/jumbo v0, "markup"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/u;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "activation_command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "viewability_check_initial_delay"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v0, "viewability_check_interval"

    const/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v0, "skipAfterSeconds"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v0, "ct"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/facebook/ads/internal/b/v;

    sget-object v3, Lcom/facebook/ads/internal/m/s;->a:Lcom/facebook/ads/internal/m/s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/internal/b/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/m/s;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;IIILjava/lang/String;)V

    .line 0
    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->d:Lcom/facebook/ads/internal/b/w;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 6000
    iput-object v1, v0, Lcom/facebook/ads/internal/b/w;->c:Lcom/facebook/ads/internal/b/v;

    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-static {}, Lcom/facebook/ads/internal/m/v;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 7000
    iget-object v2, v2, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    .line 0
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 8000
    iget v1, v1, Lcom/facebook/ads/internal/b/v;->e:I

    .line 0
    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 9000
    iget v2, v2, Lcom/facebook/ads/internal/b/v;->f:I

    .line 0
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/b;->a(II)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 10000
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "markup"

    iget-object v4, v1, Lcom/facebook/ads/internal/b/v;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/ads/internal/m/u;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v3, "request_id"

    iget-object v4, v1, Lcom/facebook/ads/internal/b/v;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "viewability_check_initial_delay"

    iget v4, v1, Lcom/facebook/ads/internal/b/v;->e:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "viewability_check_interval"

    iget v4, v1, Lcom/facebook/ads/internal/b/v;->f:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "skip_after_seconds"

    iget v4, v1, Lcom/facebook/ads/internal/b/v;->g:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "ct"

    iget-object v1, v1, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/ads/internal/view/c$a;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/g;->f:J

    sget-object v2, Lcom/facebook/ads/internal/m/p$a;->c:Lcom/facebook/ads/internal/m/p$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 12000
    iget-object v3, v3, Lcom/facebook/ads/internal/b/v;->d:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m/p;->a(JLcom/facebook/ads/internal/m/p$a;Ljava/lang/String;)Lcom/facebook/ads/internal/m/p;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/q;->a(Lcom/facebook/ads/internal/m/p;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 13000
    iget-object v0, v0, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/b;->getViewabilityChecker()Lcom/facebook/ads/internal/k/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/k/a;->a(Ljava/util/Map;)V

    const-string/jumbo v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/b;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/m/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/h/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/g;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 14000
    iget-object v2, v2, Lcom/facebook/ads/internal/b/v;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/h/g;->d(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/v;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->destroy()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->onPause()V

    return-void
.end method

.method public final j()V
    .locals 4

    .prologue
    .line 0
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/g;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->h:Lcom/facebook/ads/internal/m/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/g;->g:J

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->h:Lcom/facebook/ads/internal/m/p$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->e:Lcom/facebook/ads/internal/b/v;

    .line 11000
    iget-object v3, v3, Lcom/facebook/ads/internal/b/v;->d:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/m/p;->a(JLcom/facebook/ads/internal/m/p$a;Ljava/lang/String;)Lcom/facebook/ads/internal/m/p;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/m/q;->a(Lcom/facebook/ads/internal/m/p;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->c:Lcom/facebook/ads/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b;->onResume()V

    return-void
.end method
