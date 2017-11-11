.class public final Lcom/google/android/gms/internal/yp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/e;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/google/android/gms/internal/ur;

.field private c:Lcom/google/android/gms/ads/mediation/f;

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/yp;)Lcom/google/android/gms/ads/mediation/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/yp;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/yp;)Lcom/google/android/gms/internal/ur;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    return-object v0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    const-string/jumbo v0, "Destroying AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    iget-object v1, p0, Lcom/google/android/gms/internal/yp;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ur;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception while unbinding from CustomTabsService."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPause()V
    .locals 1

    const-string/jumbo v0, "Pausing AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string/jumbo v0, "Resuming AdMobCustomTabsAdapter adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    iput-object p2, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Listener not set for mediation. Returning."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "AdMobCustomTabs can only work with Activity context. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/mediation/f;->b(I)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ur;->a(Landroid/content/Context;)Z

    move-result v0

    .line 0
    if-nez v0, :cond_2

    const-string/jumbo v0, "Default browser does not support custom tabs. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/mediation/f;->b(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "tab_url"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/mediation/f;->b(I)V

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/yp;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/yp;->d:Landroid/net/Uri;

    new-instance v0, Lcom/google/android/gms/internal/ur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ur;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    new-instance v0, Lcom/google/android/gms/internal/yp$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yp$1;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    .line 2000
    iput-object v0, v1, Lcom/google/android/gms/internal/ur;->c:Lcom/google/android/gms/internal/ur$a;

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    iget-object v1, p0, Lcom/google/android/gms/internal/yp;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ur;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yp;->c:Lcom/google/android/gms/ads/mediation/f;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/f;->f()V

    goto :goto_0
.end method

.method public final showInterstitial()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 0
    new-instance v0, Landroid/support/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/yp;->b:Lcom/google/android/gms/internal/ur;

    .line 3000
    iget-object v3, v1, Lcom/google/android/gms/internal/ur;->b:Landroid/support/customtabs/CustomTabsClient;

    if-nez v3, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/ur;->a:Landroid/support/customtabs/CustomTabsSession;

    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ur;->a:Landroid/support/customtabs/CustomTabsSession;

    .line 0
    invoke-direct {v0, v1}, Landroid/support/customtabs/CustomTabsIntent$Builder;-><init>(Landroid/support/customtabs/CustomTabsSession;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsIntent$Builder;->build()Landroid/support/customtabs/CustomTabsIntent;

    move-result-object v0

    iget-object v1, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/yp;->d:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v3, Lcom/google/android/gms/internal/yp$2;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/yp$2;-><init>(Lcom/google/android/gms/internal/yp;)V

    new-instance v5, Lcom/google/android/gms/internal/zzqh;

    invoke-direct {v5, v6, v6, v6}, Lcom/google/android/gms/internal/zzqh;-><init>(IIZ)V

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/zzqh;)V

    sget-object v1, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/yp$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/yp$3;-><init>(Lcom/google/android/gms/internal/yp;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v0

    .line 4000
    iput-boolean v6, v0, Lcom/google/android/gms/internal/acz;->h:Z

    .line 0
    return-void

    .line 3000
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ur;->a:Landroid/support/customtabs/CustomTabsSession;

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/internal/ur;->b:Landroid/support/customtabs/CustomTabsClient;

    invoke-virtual {v3, v2}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/ur;->a:Landroid/support/customtabs/CustomTabsSession;

    goto :goto_0
.end method
